.class public Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPCarChargerOpenApp.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private hasRecommendedCount:I

.field private mCarChargerAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

.field private mCarChargerOpenAppListView:Landroid/widget/ListView;

.field private mCarChargerRecommendedAppsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mLoadingContainer:Landroid/view/View;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp$1;-><init>(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)I
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getSelectionPosition()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private createCarModeRecommendedAppsList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/oneplus/settings/better/OPAppModel;

    const v1, 0x7f120bed

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v2, ""

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-static {v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->isAppExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->hasRecommendedCount:I

    new-instance v3, Lcom/oneplus/settings/better/OPAppModel;

    aget-object v5, v1, v2

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v6, v1, v2

    invoke-static {v4, v6}, Lcom/oneplus/settings/utils/OPUtils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v7, ""

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-static {v4, v5}, Lcom/oneplus/settings/utils/OPUtils;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerRecommendedAppsList:Ljava/util/List;

    return-object v2
.end method

.method private getSelectionPosition()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_charger_mode_auto_open_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerAppsList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private initData()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method

.method private initView()V
    .locals 2

    const v0, 0x7f0a0487

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x50

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    const v0, 0x7f0a03a6

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mLoadingContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setNeedLoadWorkProfileApps(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->createCarModeRecommendedAppsList()Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->initData()V

    return-void
.end method

.method private refreshList()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_care_charger_auto_open_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppAdapter:Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenAppAdapter;->setSelectedItem(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0178

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f120bf0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->mCarChargerOpenAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "op_care_charger_auto_open_app"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "charge_app"

    invoke-static {v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->refreshList()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/oneplus/settings/carcharger/OPCarChargerOpenApp;->refreshList()V

    return-void
.end method
