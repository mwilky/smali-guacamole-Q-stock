.class Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;
.super Landroid/database/ContentObserver;
.source "ContextualCardLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;


# direct methods
.method constructor <init>(Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader$1;->this$0:Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;

    iput-object p2, v0, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->mNotifyUri:Landroid/net/Uri;

    invoke-virtual {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardLoader;->forceLoad()V

    :cond_0
    return-void
.end method
