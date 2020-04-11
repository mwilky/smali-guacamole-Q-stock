.class Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;
.super Ljava/lang/Object;
.source "MediaRouteProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

.field final synthetic val$routes:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Ljava/util/Collection;)V
    .locals 0

    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iput-object p2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;->val$routes:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iget-object v0, v0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->mListener:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;

    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;->this$0:Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$2;->val$routes:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$OnDynamicRoutesChangedListener;->onRoutesChanged(Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;Ljava/util/Collection;)V

    return-void
.end method
