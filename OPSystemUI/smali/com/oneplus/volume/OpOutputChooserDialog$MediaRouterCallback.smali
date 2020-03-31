.class final Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "OpOutputChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method private constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/oneplus/volume/OpOutputChooserDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;-><init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onRouteSelected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$MediaRouterCallback;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method
