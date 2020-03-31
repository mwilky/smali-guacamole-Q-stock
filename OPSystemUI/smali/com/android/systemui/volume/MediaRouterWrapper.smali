.class public Lcom/android/systemui/volume/MediaRouterWrapper;
.super Ljava/lang/Object;
.source "MediaRouterWrapper.java"


# instance fields
.field private final mRouter:Landroidx/mediarouter/media/MediaRouter;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    return-void
.end method


# virtual methods
.method public removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/volume/MediaRouterWrapper;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    return-void
.end method
