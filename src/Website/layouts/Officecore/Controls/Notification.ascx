<%@ control language="C#" autoeventwireup="true" codebehind="Notification.ascx.cs" inherits="Officecore.Website.layouts.Officecore.Controls.Notification" %>
<style type="text/css">
    .toast {
        opacity: 1 !important;
    }
</style>
<script>
    toastr.<%#NotificationType%>("<%#NotificationMessage%>", "<%#NotificationTitle%>");
</script>