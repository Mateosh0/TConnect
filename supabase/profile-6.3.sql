alter table public.profiles add column status_text text not null default '' check(length(status_text)<=100),add column verified boolean not null default false,add column pinned_post uuid references public.posts(id) on delete set null;
grant update(status_text,pinned_post) on public.profiles to authenticated;
create function private.guard_profile_pin() returns trigger language plpgsql set search_path='' as $$begin if new.pinned_post is not null and not exists(select 1 from public.posts where id=new.pinned_post and author=new.id) then raise exception 'Only own posts may be pinned'; end if; return new; end;$$;
create trigger guard_profile_pin before update of pinned_post on public.profiles for each row execute function private.guard_profile_pin();
