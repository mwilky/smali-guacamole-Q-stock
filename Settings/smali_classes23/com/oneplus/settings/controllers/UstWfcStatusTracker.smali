.class public Lcom/oneplus/settings/controllers/UstWfcStatusTracker;
.super Ljava/lang/Object;
.source "UstWfcStatusTracker.java"


# static fields
.field private static final SERVICE_INTENT_NAME:Ljava/lang/String; = "oneplus.intent.action.TMO_WFC_TRACKER_START"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.operator.tmo.wfctracker"

.field private static final START_OBSERVE:I = 0x0

.field private static final STOP_OBSERVE:I = 0x1

.field private static final TAG1:Ljava/lang/String; = "UstWfcStatusTracker"

.field private static final TAG2:Ljava/lang/String; = "UstWfcStatusTracker"


# instance fields
.field private mBound:Z

.field private mClientMessenger:Landroid/os/Messenger;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPreference:Landroidx/preference/Preference;

.field private mServiceMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/Preference;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    new-instance v0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$1;-><init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker$2;-><init>(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    const-string v0, "Init..."

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mPreference:Landroidx/preference/Preference;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroidx/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mPreference:Landroidx/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$402(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    return p1
.end method

.method static synthetic access$500(Lcom/oneplus/settings/controllers/UstWfcStatusTracker;)Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UstWfcStatusTracker]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UstWfcStatusTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public startObserve()V
    .locals 4

    const-string v0, "Start observe"

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.intent.action.TMO_WFC_TRACKER_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.operator.tmo.wfctracker"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public stopObserve()V
    .locals 3

    const-string v0, "Stop observe"

    invoke-static {v0}, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mBound:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mClientMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/controllers/UstWfcStatusTracker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
