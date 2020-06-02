.class public Lcom/oneplus/settings/widget/OPFooterPreference;
.super Lcom/android/settingslib/widget/FooterPreference;
.source "OPFooterPreference.java"


# static fields
.field public static final KEY_FOOTER:Ljava/lang/String; = "footer_preference"

.field static final ORDER_FOOTER:I = 0x7ffffffe


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/widget/OPFooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, Lcom/oneplus/settings/widget/OPFooterPreference;->init()V

    return-void
.end method

.method private init()V
    .locals 1

    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/widget/OPFooterPreference;->setIcon(I)V

    return-void
.end method
