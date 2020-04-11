.class public Lcom/android/server/inputmethod/OpVerificationCodeController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/vcaction/IOpVerificationCodeController;


# static fields
.field private static final DEBUG:Z

.field private static final DEF_COMMIT_INTERVAL_MS:I = 0x64

.field private static final OP_MMS_SEND_ACTION:Ljava/lang/String; = "oneplus.intent.action.MMSVerification"

.field private static final TAG:Ljava/lang/String; = "OpVerificationCodeController"


# instance fields
.field private mActionListener:Lcom/android/server/you/you$zta;

.field private final mActionProviderImpl:Lcom/android/server/you/you;

.field private mCommitTimeInterval:I

.field private mContext:Landroid/content/Context;

.field private mH:Landroid/os/Handler;

.field private mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private mInputTypeNum:Z

.field private volatile mOpLatestImeBounds:Landroid/graphics/Rect;

.field private mOpVCAction:Lcom/android/server/you/tsu;

.field private mPreImeVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    new-instance v0, Lcom/android/server/inputmethod/you;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/you;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionProviderImpl:Lcom/android/server/you/you;

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeController"

    const-string v1, "OpVerificationCodeController construct"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/inputmethod/OpVerificationCodeController;)I
    .locals 0

    iget p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/server/inputmethod/OpVerificationCodeController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/OpVerificationCodeController;->printSecureCodeDebug(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/you/tsu;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/you/tsu;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/inputmethod/OpVerificationCodeController;)Lcom/android/server/inputmethod/InputMethodManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/inputmethod/OpVerificationCodeController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/inputmethod/OpVerificationCodeController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/server/inputmethod/OpVerificationCodeController;Lcom/android/server/you/you$zta;)Lcom/android/server/you/you$zta;
    .locals 0

    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/you/you$zta;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/OpVerificationCodeController;->commitCodeOneByOne(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->singleCommit(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method private commitCodeOneByOne(Ljava/lang/CharSequence;)V
    .locals 7

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/inputmethod/sis;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/inputmethod/sis;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;Ljava/lang/CharSequence;I)V

    iget v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mCommitTimeInterval:I

    mul-int/2addr v0, v2

    int-to-long v5, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Commit VC Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpVerificationCodeController"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    :goto_2
    return-void
.end method

.method private initActionIfPossible()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/you/tsu;

    const-string v1, "OpVerificationCodeController"

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpVCAction Instance Exist."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/server/you/tsu;

    iget-object v2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionProviderImpl:Lcom/android/server/you/you;

    invoke-direct {v1, v0, v2}, Lcom/android/server/you/tsu;-><init>(Landroid/content/Context;Lcom/android/server/you/you;)V

    iput-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpVCAction:Lcom/android/server/you/tsu;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.MMSVerification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/inputmethod/zta;

    invoke-direct {v2, p0}, Lcom/android/server/inputmethod/zta;-><init>(Lcom/android/server/inputmethod/OpVerificationCodeController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Skip init VC Action."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private isSensitiveAttrChanged(IZ)Z
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    if-eq p1, p2, :cond_2

    iput-boolean p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mInputTypeNum:Z

    sget-boolean p1, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Input Type Num Changed to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVerificationCodeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method private printSecureCodeDebug(Ljava/lang/String;J)V
    .locals 4

    const-string p0, "****"

    const-string v0, "OpVerificationCodeController"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VC Content "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", time = "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "VC Content Null/TooShort, time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private singleCommit(Ljava/lang/CharSequence;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mCurInputContext:Lcom/android/internal/view/IInputContext;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "single Commit VC Exception "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpVerificationCodeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public initController(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVerificationCodeController"

    const-string v1, "initController with imms"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mIMMService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/server/inputmethod/OpVerificationCodeController;->initActionIfPossible()V

    return-void
.end method

.method public notifyIMELayoutChanged(ZLcom/android/server/wm/DisplayFrames;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mPreImeVisible:Z

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mOpLatestImeBounds:Landroid/graphics/Rect;

    iget-object p2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    or-int/lit8 p1, p1, 0x2

    :cond_2
    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/you/you$zta;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lcom/android/server/you/you$zta;->zta(I)V

    :cond_3
    return-void
.end method

.method public notifyImeAttributeChanged(IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/inputmethod/OpVerificationCodeController;->isSensitiveAttrChanged(IZ)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->mActionListener:Lcom/android/server/you/you$zta;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/server/you/you$zta;->zta(I)V

    goto :goto_0

    :cond_1
    sget-boolean p0, Lcom/android/server/inputmethod/OpVerificationCodeController;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "OpVerificationCodeController"

    const-string p1, "Null ActionListener, Fail to notify"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
