.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;,
        Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;,
        Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
    }
.end annotation


# static fields
.field private static final MSG_RESTORE_APN_COMPLETE:I = 0x2

.field private static final MSG_RESTORE_APN_START:I = 0x1


# instance fields
.field mActivity:Landroid/app/Activity;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mApnThread:Landroid/os/HandlerThread;

.field mContentView:Landroid/view/View;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mEraseEsim:Z
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field mFinalClickListener:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mRestoreApnHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;

.field private mRestoreCompleteHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn(Landroid/content/Context;)V

    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a0252

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    nop

    const v1, 0x7f120a3b

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private restoreDefaultApn(Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "restore default apn"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mApnThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mApnThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    const v0, 0x7f1212cf

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreCompleteHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreCompleteHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;

    if-nez v0, :cond_3

    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mApnThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreCompleteHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;-><init>(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/Looper;Landroid/content/Context;Lcom/android/settings/ResetNetworkConfirm$RestoreCompleteHandler;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mRestoreApnHandler:Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$RestoreApnHandler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54

    return v0
.end method

.method public synthetic lambda$onCreateView$0$ResetNetworkConfirm(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    const-class v1, Lcom/android/settings/ResetNetworkConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSubId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "erase_esim"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_network_reset"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const v1, 0x7f0d012c

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    iget-object v3, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1

    :cond_1
    const v1, 0x7f0d029a

    invoke-virtual {p1, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->setSubtitle()V

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkTask;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mApnThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    return-void
.end method

.method p2pFactoryReset(Landroid/content/Context;)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    nop

    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->factoryReset(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method setSubtitle()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a05a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1212da

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method
