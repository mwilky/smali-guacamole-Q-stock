.class public final synthetic Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/panel/PanelFragment;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/panel/PanelFragment;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;->f$0:Lcom/android/settings/panel/PanelFragment;

    iput-object p2, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;->f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;->f$0:Lcom/android/settings/panel/PanelFragment;

    iget-object v1, p0, Lcom/android/settings/panel/-$$Lambda$PanelFragment$9wWe8VA3omUbnqyLrabTpQNiD-M;->f$1:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/settings/panel/PanelFragment;->lambda$loadAllSlices$1$PanelFragment(Landroid/net/Uri;)V

    return-void
.end method
