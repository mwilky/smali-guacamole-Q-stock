.class public interface abstract Lcom/android/settingslib/core/ConfirmationDialogController;
.super Ljava/lang/Object;
.source "ConfirmationDialogController.java"


# virtual methods
.method public abstract dismissConfirmationDialog()V
.end method

.method public abstract getPreferenceKey()Ljava/lang/String;
.end method

.method public abstract isConfirmationDialogShowing()Z
.end method

.method public abstract showConfirmationDialog(Landroidx/preference/Preference;)V
    .param p1    # Landroidx/preference/Preference;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
