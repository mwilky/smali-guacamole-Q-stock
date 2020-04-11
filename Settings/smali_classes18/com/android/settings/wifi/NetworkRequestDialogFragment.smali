.class public Lcom/android/settings/wifi/NetworkRequestDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NetworkRequestDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;,
        Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;
    }
.end annotation


# static fields
.field private static final DELAY_TIME_STOP_SCAN_MS:I = 0x7530

.field static final EXTRA_APP_NAME:Ljava/lang/String; = "com.android.settings.wifi.extra.APP_NAME"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final EXTRA_IS_SPECIFIED_SSID:Ljava/lang/String; = "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

.field private static final MAX_NUMBER_LIST_ITEM:I = 0x5

.field private static final MESSAGE_STOP_SCAN_WIFI_LIST:I


# instance fields
.field private mAccessPointList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

.field private mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

.field private final mHandler:Landroid/os/Handler;

.field private mIsSpecifiedSsid:Z

.field private mShowLimitedItem:Z

.field private mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

.field private mWaitingConnectCallback:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$1;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->showAllButton()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->hideProgressIcon()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    return v0
.end method

.method private getDialogAdapter()Landroid/widget/BaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    return-object v0
.end method

.method private getTitle()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v2, "com.android.settings.wifi.extra.APP_NAME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const v2, 0x7f120ab2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private hideProgressIcon()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0a042a

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public static newInstance()Lcom/android/settings/wifi/NetworkRequestDialogFragment;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;-><init>()V

    return-object v0
.end method

.method private renewAccessPointList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->updateKeys(Ljava/util/List;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {v1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private showAllButton()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private updateConnectButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method getAccessPointList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mAccessPointList:Ljava/util/List;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55d

    return v0
.end method

.method public synthetic lambda$onCreateDialog$0$NetworkRequestDialogFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$1$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p0, p1, p4}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$2$NetworkRequestDialogFragment(Landroid/widget/Button;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mShowLimitedItem:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$3$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onCreateDialog$4$NetworkRequestDialogFragment(Landroidx/appcompat/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v0, -0x3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v1, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$lw_Wq0DVP57qlwDOANi5I6KnyZc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$0xtgygmRc24XN-Ja1peqRK-MyB4;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method notifyAdapterRefresh()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialogAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAbort()V
    .locals 1

    sget-object v0, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;->ABORT:Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->reject()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_3

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v3, 0x0

    invoke-static {v1, v3, v3}, Lcom/android/settings/wifi/WifiUtils;->getWifiConfig(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    invoke-interface {v3, v2}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;->select(Landroid/net/wifi/WifiConfiguration;)V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    :cond_3
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d012b

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a042b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const-string v7, "com.android.settings.wifi.extra.REQUEST_IS_FOR_SINGLE_NETWORK"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    :cond_0
    const v7, 0x7f0a042a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v8, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    const v9, 0x7f0d024c

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getAccessPointList()Ljava/util/List;

    move-result-object v10

    invoke-direct {v8, p0, v0, v9, v10}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iput-object v8, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    new-instance v8, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mDialogAdapter:Lcom/android/settings/wifi/NetworkRequestDialogFragment$AccessPointAdapter;

    invoke-virtual {v8, v9, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f1203da

    new-instance v10, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$WCubGJZUXXghSB4GzGNKVjh70wc;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;)V

    invoke-virtual {v8, v9, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f120ab1

    invoke-virtual {v8, v9, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mIsSpecifiedSsid:Z

    if-eqz v9, :cond_1

    const v9, 0x7f1217ac

    invoke-virtual {v8, v9, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    invoke-virtual {v8}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v9

    new-instance v10, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;

    invoke-direct {v10, p0, v2}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$kMx9q9fSHpeKkR6QNAI-Ppkj7yk;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->setCancelable(Z)V

    new-instance v6, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$UV4qHMWtNsPcyOJ7P5yQ_CDRxBs;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/wifi/-$$Lambda$NetworkRequestDialogFragment$UV4qHMWtNsPcyOJ7P5yQ_CDRxBs;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v2, v6}, Landroidx/appcompat/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_0
    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->renewAccessPointList(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->notifyAdapterRefresh()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiManager;->unregisterNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onPause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, v1}, Landroid/net/wifi/WifiManager;->registerNetworkRequestMatchCallback(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;Landroid/os/Handler;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x7530

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;-><init>(Lcom/android/settings/wifi/NetworkRequestDialogFragment;Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mFilterWifiTracker:Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;

    invoke-virtual {v1}, Lcom/android/settings/wifi/NetworkRequestDialogFragment$FilterWifiTracker;->onResume()V

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mUserSelectionCallback:Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->mWaitingConnectCallback:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->updateConnectButton(Z)V

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x7f120aaf

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected stopScanningAndPopErrorDialog(Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment$ERROR_DIALOG_TYPE;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->dismiss()V

    :cond_0
    invoke-static {}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->newInstance()Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "DIALOG_ERROR_TYPE"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/NetworkRequestDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    const-class v4, Lcom/android/settings/wifi/NetworkRequestDialogFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/wifi/NetworkRequestErrorDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
