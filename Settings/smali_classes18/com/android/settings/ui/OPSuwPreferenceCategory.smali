.class public Lcom/android/settings/ui/OPSuwPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "OPSuwPreferenceCategory.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1}, Lcom/android/settings/ui/OPSuwPreferenceCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/ui/OPSuwPreferenceCategory;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0230

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/OPSuwPreferenceCategory;->setLayoutResource(I)V

    return-void
.end method
