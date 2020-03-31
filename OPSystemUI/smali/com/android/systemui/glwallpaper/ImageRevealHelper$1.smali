.class Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ImageRevealHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/glwallpaper/ImageRevealHelper;-><init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mIsCanceled:Z

.field final synthetic this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->mIsCanceled:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-static {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-static {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealEnd()V

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->mIsCanceled:Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-static {p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageRevealHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageRevealHelper;

    invoke-static {p0}, Lcom/android/systemui/glwallpaper/ImageRevealHelper;->access$000(Lcom/android/systemui/glwallpaper/ImageRevealHelper;)Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/glwallpaper/ImageRevealHelper$RevealStateListener;->onRevealStart(Z)V

    :cond_0
    return-void
.end method
