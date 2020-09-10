.class public Lcom/oneplus/settings/widget/OPSettingsSpinner;
.super Landroid/widget/Spinner;
.source "OPSettingsSpinner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0805cf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSettingsSpinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f0805cf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSettingsSpinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0805cf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSettingsSpinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0805cf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPSettingsSpinner;->setBackgroundResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILandroid/content/res/Resources$Theme;)V

    return-void
.end method
