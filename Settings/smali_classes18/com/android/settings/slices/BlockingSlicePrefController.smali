.class public Lcom/android/settings/slices/BlockingSlicePrefController;
.super Lcom/android/settings/slices/SlicePreferenceController;
.source "BlockingSlicePrefController.java"

# interfaces
.implements Lcom/android/settings/core/BasePreferenceController$UiBlocker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/slices/SlicePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroidx/slice/Slice;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/slices/SlicePreferenceController;->onChanged(Landroidx/slice/Slice;)V

    iget-object v0, p0, Lcom/android/settings/slices/BlockingSlicePrefController;->mUiBlockListener:Lcom/android/settings/core/BasePreferenceController$UiBlockListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/slices/BlockingSlicePrefController;->mUiBlockListener:Lcom/android/settings/core/BasePreferenceController$UiBlockListener;

    invoke-interface {v0, p0}, Lcom/android/settings/core/BasePreferenceController$UiBlockListener;->onBlockerWorkFinished(Lcom/android/settings/core/BasePreferenceController;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroidx/slice/Slice;

    invoke-virtual {p0, p1}, Lcom/android/settings/slices/BlockingSlicePrefController;->onChanged(Landroidx/slice/Slice;)V

    return-void
.end method
