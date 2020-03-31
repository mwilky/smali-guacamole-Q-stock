.class Lcom/oneplus/volume/OpOutputChooserDialog$5;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Lcom/android/systemui/plugins/VolumeDialogController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$5;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityModeChanged(Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onCaptionComponentStateChanged(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$5;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->dismiss()V

    return-void
.end method

.method public onDismissRequested(I)V
    .locals 0

    return-void
.end method

.method public onLayoutDirectionChanged(I)V
    .locals 0

    return-void
.end method

.method public onScreenOff()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$5;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->dismiss()V

    return-void
.end method

.method public onShowRequested(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$5;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->dismiss()V

    return-void
.end method

.method public onShowSafetyWarning(I)V
    .locals 0

    return-void
.end method

.method public onShowSilentHint()V
    .locals 0

    return-void
.end method

.method public onShowVibrateHint()V
    .locals 0

    return-void
.end method

.method public onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V
    .locals 0

    return-void
.end method
