.class public Lcom/oneplus/settings/OPThemeSettingsActivity;
.super Landroid/app/Activity;
.source "OPThemeSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupPreferencesScreen()V
    .locals 0

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0230

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPThemeSettingsActivity;->setContentView(I)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/oneplus/settings/OPThemeSettingsActivity;->setupPreferencesScreen()V

    return-void
.end method
