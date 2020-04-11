.class public Lcom/oneplus/settings/product/OPProductInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPProductInfoSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/product/OPProductInfoSettings$1;

    invoke-direct {v0}, Lcom/oneplus/settings/product/OPProductInfoSettings$1;-><init>()V

    sput-object v0, Lcom/oneplus/settings/product/OPProductInfoSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const v0, 0x7f1600a9

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/product/OPProductInfoSettings;->addPreferencesFromResource(I)V

    return-void
.end method
