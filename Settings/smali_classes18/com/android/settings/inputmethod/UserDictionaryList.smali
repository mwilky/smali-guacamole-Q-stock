.class public Lcom/android/settings/inputmethod/UserDictionaryList;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "UserDictionaryList.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "UserDictionaryList"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/inputmethod/UserDictionaryList$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/UserDictionaryList$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryList;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UserDictionaryList"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160103

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "locale"

    if-nez v0, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    if-eqz v3, :cond_3

    move-object v2, v3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    const-class v5, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/UserDictionaryList;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v5

    check-cast v5, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;

    invoke-virtual {v5, v2}, Lcom/android/settings/inputmethod/UserDictionaryListPreferenceController;->setLocale(Ljava/lang/String;)V

    return-void
.end method
