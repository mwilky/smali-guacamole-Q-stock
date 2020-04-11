.class public Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    sget v0, Lcom/android/settingslib/widget/R$layout;->settings_spinner_view:I

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090009

    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/settingsspinner/SettingsSpinnerAdapter;->setDropDownViewResource(I)V

    return-void
.end method
