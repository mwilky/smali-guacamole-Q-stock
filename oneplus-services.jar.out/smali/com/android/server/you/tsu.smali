.class public final Lcom/android/server/you/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/you/you$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/you/tsu$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final GL:Ljava/lang/String; = "verification_code_str"

.field public static final HL:Ljava/lang/String; = "receive_time_mills"

.field private static final IL:J = 0x2bf20L

.field private static final KL:J = 0xaL

.field private static final LL:I = 0x1

.field private static final ML:I = 0x2

.field private static final MSG_SHOW:I = 0x0

.field private static final NL:I = 0x3

.field private static final OL:I = 0x4

.field private static final PL:I = 0x5

.field private static final QL:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OpVCAction"


# instance fields
.field private AL:Ljava/lang/String;

.field private BL:Ljava/lang/Long;

.field private CL:Z

.field private DL:Z

.field private EL:Z

.field private FL:Lcom/android/server/you/wtn$zta;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInputShown:Z

.field private mWindow:Lcom/android/server/you/wtn;

.field private zL:Lcom/android/server/you/you;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/you/tsu;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/you/you;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->CL:Z

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->mInputShown:Z

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->DL:Z

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->EL:Z

    new-instance v0, Lcom/android/server/you/sis;

    invoke-direct {v0, p0}, Lcom/android/server/you/sis;-><init>(Lcom/android/server/you/tsu;)V

    iput-object v0, p0, Lcom/android/server/you/tsu;->FL:Lcom/android/server/you/wtn$zta;

    sget-boolean v0, Lcom/android/server/you/tsu;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVCAction"

    const-string v1, "OpVCAction Construct."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/you/tsu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    iget-object p1, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    invoke-interface {p1, p0}, Lcom/android/server/you/you;->zta(Lcom/android/server/you/you$zta;)V

    new-instance p1, Lcom/android/server/you/tsu$zta;

    invoke-direct {p1, p0}, Lcom/android/server/you/tsu$zta;-><init>(Lcom/android/server/you/tsu;)V

    iput-object p1, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/you/tsu;->DEBUG:Z

    return v0
.end method

.method static synthetic cno(Lcom/android/server/you/tsu;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/tsu;->uo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private fc(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isAvailable()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/you/tsu;->CL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/you/you;->sis()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->mInputShown:Z

    iget-object v0, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    invoke-interface {v0}, Lcom/android/server/you/you;->obl()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->DL:Z

    iget-object v0, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    invoke-interface {v0}, Lcom/android/server/you/you;->bvj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/you/tsu;->EL:Z

    iget-boolean v0, p0, Lcom/android/server/you/tsu;->mInputShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/you/tsu;->DL:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/you/tsu;->EL:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic kth(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->FL:Lcom/android/server/you/wtn$zta;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/you/tsu;)Lcom/android/server/you/you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    return-object p0
.end method

.method public static s(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "COND_IME_VISIBILITY | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "COND_IME_LAYOUT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    const-string v1, "COND_INPUT_TYPE_NUM | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3

    const-string p0, "COND_INPUT_CONTENT_EMPTY | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/you/tsu;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/you/tsu;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/you/tsu;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/you/tsu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->AL:Ljava/lang/String;

    return-object p0
.end method

.method private uo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->AL:Ljava/lang/String;

    return-object p0
.end method

.method private vb(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/you/tsu;->CL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/you/tsu;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Income Condition Changed : What = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/you/tsu;->s(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpVCAction"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic you(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->mWindow:Lcom/android/server/you/wtn;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/you/tsu;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/you/tsu;->fc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/tsu;->mWindow:Lcom/android/server/you/wtn;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/you/tsu;->AL:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/you/tsu;->CL:Z

    return p1
.end method


# virtual methods
.method public zta(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/you/tsu;->vb(I)V

    return-void
.end method

.method public zta(Landroid/os/Bundle;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/you/tsu;->DEBUG:Z

    const-string v1, "OpVCAction"

    if-eqz v0, :cond_0

    const-string v0, "OpVCAction activateVCWindowCycle()"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/you/tsu;->zL:Lcom/android/server/you/you;

    if-nez v0, :cond_2

    sget-boolean p0, Lcom/android/server/you/tsu;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "mVActionsProvider == null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/you/tsu;->mWindow:Lcom/android/server/you/wtn;

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string p0, "Null Window"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "verification_code_str"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/you/tsu;->fc(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean p0, Lcom/android/server/you/tsu;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "Illegal Code."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/you/tsu;->AL:Ljava/lang/String;

    const-string v0, "receive_time_mills"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/you/tsu;->BL:Ljava/lang/Long;

    const-wide/32 v2, 0x2bf20

    iget-object p1, p0, Lcom/android/server/you/tsu;->BL:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v4, v2

    if-gez p1, :cond_7

    sget-boolean p0, Lcom/android/server/you/tsu;->DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "Expired VC, Skip."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/you/tsu;->CL:Z

    iget-object v0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/you/tsu;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
