.class final Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemMediaRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "VolumeChangeReceiver"
.end annotation


# static fields
.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_TYPE"

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_VALUE"

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOLUME_CHANGED_ACTION"


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$0:Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$0:Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;

    iget v2, v2, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;->mLastReportedVolume:I

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl$VolumeChangeReceiver;->this$0:Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;

    invoke-virtual {v2}, Landroidx/mediarouter/media/SystemMediaRouteProvider$LegacyImpl;->publishRoutes()V

    :cond_0
    return-void
.end method
