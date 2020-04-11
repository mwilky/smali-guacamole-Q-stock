.class public Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ManageDomainUrls.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "ManageDomainUrls"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls$1;

    invoke-direct {v0}, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

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

    const-string v0, "ManageDomainUrls"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x8f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160070

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreferenceController;->setFragment(Lcom/android/settings/applications/managedomainurls/ManageDomainUrls;)V

    return-void
.end method
