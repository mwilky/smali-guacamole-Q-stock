.class public Lcom/android/server/secrecy/zta/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/secrecy/zta/tsu$zta;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "SecrecyService.ResetCountDownTimer"

.field private static wN:J = 0x15180L

.field private static xN:J = 0x278d00L


# instance fields
.field private mAlarmIntent:Landroid/content/Intent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mPolicyManager:Lcom/android/server/secrecy/zta/sis;

.field private final sN:Ljava/lang/String;

.field private tN:Lcom/android/server/secrecy/zta/tsu$zta;

.field private uN:J

.field private vN:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/secrecy/zta/sis;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.secrecy.policyfactor.invalid.expire."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/secrecy/zta/tsu;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->sN:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/secrecy/zta/tsu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/secrecy/zta/tsu;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    invoke-direct {p0}, Lcom/android/server/secrecy/zta/tsu;->Yo()V

    return-void
.end method

.method private Yo()V
    .locals 4

    new-instance v0, Lcom/android/server/secrecy/zta/tsu$zta;

    invoke-direct {v0, p0, p0}, Lcom/android/server/secrecy/zta/tsu$zta;-><init>(Lcom/android/server/secrecy/zta/tsu;Lcom/android/server/secrecy/zta/tsu;)V

    iput-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->tN:Lcom/android/server/secrecy/zta/tsu$zta;

    new-instance v0, Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/tsu;->sN:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/secrecy/zta/tsu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/secrecy/zta/tsu;->tN:Lcom/android/server/secrecy/zta/tsu$zta;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/tsu;->sN:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->mAlarmIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/secrecy/zta/tsu;->mAlarmIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/secrecy/zta/tsu;->mAlarmManager:Landroid/app/AlarmManager;

    sget-wide v0, Lcom/android/server/secrecy/zta/tsu;->wN:J

    sget-wide v2, Lcom/android/server/secrecy/zta/tsu;->xN:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/secrecy/zta/tsu;->you(JJ)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/secrecy/zta/tsu;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Jd()Lcom/android/server/secrecy/zta/sis;
    .locals 0

    iget-object p0, p0, Lcom/android/server/secrecy/zta/tsu;->mPolicyManager:Lcom/android/server/secrecy/zta/sis;

    return-object p0
.end method

.method public ca(Ljava/lang/String;)J
    .locals 1

    const-string v0, "mac"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide p0, p0, Lcom/android/server/secrecy/zta/tsu;->vN:J

    return-wide p0

    :cond_0
    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-wide p0, p0, Lcom/android/server/secrecy/zta/tsu;->uN:J

    return-wide p0

    :cond_1
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public da(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/server/secrecy/zta/tsu;->ca(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/secrecy/zta/tsu;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/secrecy/zta/tsu;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, Lcom/android/server/secrecy/zta/tsu;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v4, v0

    add-long/2addr v2, v4

    iget-object p0, p0, Lcom/android/server/secrecy/zta/tsu;->mPendingIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object p0, Lcom/android/server/secrecy/zta/tsu;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCountDown, countDownTime = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public you(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/secrecy/zta/tsu;->vN:J

    iput-wide p3, p0, Lcom/android/server/secrecy/zta/tsu;->uN:J

    sget-object p1, Lcom/android/server/secrecy/zta/tsu;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCountDownTime, mCountDownTimeForMac = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/secrecy/zta/tsu;->vN:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/server/secrecy/zta/tsu;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "updateCountDownTime, mCountDownTimeForId = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/server/secrecy/zta/tsu;->uN:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/Throwable;

    const-string p3, "Kevin_DEBUG"

    invoke-direct {p2, p3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p0, p2}, Lcom/android/server/secrecy/zta/zta/zta;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public zta(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "ResetCountDownTimer dump"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "    "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCountDownTimeForMac  = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/tsu;->vN:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mCountDownTimeForId   = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/secrecy/zta/tsu;->uN:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
