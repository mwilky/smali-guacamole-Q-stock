.class Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;
.super Ljava/lang/Object;
.source "PreviewSeekBarPreferenceFragment.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "onPreviewSeekBarChangeListener"
.end annotation


# instance fields
.field private mSeekByTouch:Z

.field final synthetic this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStopTrackingTouch$0$PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->commit()V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$000(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;IZ)V

    iget-boolean v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->commit()V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/display/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->access$100(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;)Lcom/android/settings/display/PreviewPagerAdapter;

    move-result-object v0

    new-instance v1, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$LuPHkQtN1jvtRG-766hiZseS4Js;

    invoke-direct {v1, p0}, Lcom/android/settings/display/-$$Lambda$PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener$LuPHkQtN1jvtRG-766hiZseS4Js;-><init>(Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/display/PreviewPagerAdapter;->setAnimationEndAction(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->this$0:Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment;->commit()V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/PreviewSeekBarPreferenceFragment$onPreviewSeekBarChangeListener;->mSeekByTouch:Z

    return-void
.end method
