#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

# Compute the snac2 path prefix from YunoHost $path
# snac2 expects "" for root, "/prefix" for subpath (no trailing slash)
compute_path_prefix() {
    if [ "$path" = "/" ]; then
        path_prefix=""
    else
        # Remove trailing slash if present
        path_prefix="${path%/}"
    fi
}

# Load all server.json-related app settings into bash variables
# so that ynh_config_add can substitute __PLACEHOLDERS__
load_server_settings() {
    path_prefix=$(ynh_app_setting_get --key=path_prefix)
    admin_account=$(ynh_app_setting_get --key=admin_account)
    admin_email=$(ynh_app_setting_get --key=admin_email)
    title=$(ynh_app_setting_get --key=title)
    dbglevel=$(ynh_app_setting_get --key=dbglevel)
    queue_retry_minutes=$(ynh_app_setting_get --key=queue_retry_minutes)
    queue_retry_max=$(ynh_app_setting_get --key=queue_retry_max)
    queue_timeout=$(ynh_app_setting_get --key=queue_timeout)
    queue_timeout_2=$(ynh_app_setting_get --key=queue_timeout_2)
    num_threads=$(ynh_app_setting_get --key=num_threads)
    def_timeline_entries=$(ynh_app_setting_get --key=def_timeline_entries)
    max_timeline_entries=$(ynh_app_setting_get --key=max_timeline_entries)
    timeline_purge_days=$(ynh_app_setting_get --key=timeline_purge_days)
    local_purge_days=$(ynh_app_setting_get --key=local_purge_days)
    min_account_age=$(ynh_app_setting_get --key=min_account_age)
    short_description=$(ynh_app_setting_get --key=short_description)
    cssurls=$(ynh_app_setting_get --key=cssurls)
    max_attachments=$(ynh_app_setting_get --key=max_attachments)
    max_poll_options=$(ynh_app_setting_get --key=max_poll_options)
    max_poll_option_length=$(ynh_app_setting_get --key=max_poll_option_length)
    max_public_entries=$(ynh_app_setting_get --key=max_public_entries)
    proxy_media=$(ynh_app_setting_get --key=proxy_media)
    show_instance_timeline=$(ynh_app_setting_get --key=show_instance_timeline)
    strip_exif=$(ynh_app_setting_get --key=strip_exif)
    enable_svg=$(ynh_app_setting_get --key=enable_svg)
    shared_inboxes=$(ynh_app_setting_get --key=shared_inboxes)
    badlogin_retries=$(ynh_app_setting_get --key=badlogin_retries)
    badlogin_expire=$(ynh_app_setting_get --key=badlogin_expire)
    max_failing_days=$(ynh_app_setting_get --key=max_failing_days)
    disable_cache=$(ynh_app_setting_get --key=disable_cache)
    disable_email_notifications=$(ynh_app_setting_get --key=disable_email_notifications)
    disable_inbox_collection=$(ynh_app_setting_get --key=disable_inbox_collection)
    disable_history=$(ynh_app_setting_get --key=disable_history)
    disable_block_notifications=$(ynh_app_setting_get --key=disable_block_notifications)
    disable_emojireact=$(ynh_app_setting_get --key=disable_emojireact)
    disable_notify_webhook=$(ynh_app_setting_get --key=disable_notify_webhook)
    strict_public_timelines=$(ynh_app_setting_get --key=strict_public_timelines)
    hide_delete_post_button=$(ynh_app_setting_get --key=hide_delete_post_button)
    favicon_url=$(ynh_app_setting_get --key=favicon_url)
    rss_hashtag_poll_hours=$(ynh_app_setting_get --key=rss_hashtag_poll_hours)
    smtp_url=$(ynh_app_setting_get --key=smtp_url)
    smtp_username=$(ynh_app_setting_get --key=smtp_username)
    smtp_password=$(ynh_app_setting_get --key=smtp_password)
}
