.class Lcom/android/server/wm/OpPowerConsumpStats$bio;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "bio"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/wm/OpPowerConsumpStats$bio;",
        ">;"
    }
.end annotation


# instance fields
.field aQ:Ljava/text/DecimalFormat;

.field public audioPowerMah:D

.field public bluetoothPowerMah:D

.field public cameraPowerMah:D

.field public cpuPowerMah:D

.field public drainType:Ljava/lang/String;

.field public flashlightPowerMah:D

.field public gpsPowerMah:D

.field public mobileRadioPowerMah:D

.field public pkgName:Ljava/lang/String;

.field public sensorPowerMah:D

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;

.field public totalPowerMah:D

.field public totalTime:J

.field public uid:Ljava/lang/Integer;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public videoPowerMah:D

.field public wakeLockPowerMah:D

.field public wifiPowerMah:D


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    const-string p1, "null"

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00%"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->aQ:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    const-string p1, "null"

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "0.00%"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->aQ:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->dp()V

    return-void
.end method

.method private dp()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x54

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private ep()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x54

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x64

    if-le v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->cno(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->cno(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-eqz v2, :cond_6

    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OPCS"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    const-string v0, "[a-zA-z]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v1

    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "kernel"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    return v3

    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    return v1
.end method

.method private les(IZ)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"}"

    const-string v2, "\",\"total\":\""

    const-string v3, "\",\"pn\":\""

    const-string v4, "{\"seq\":\""

    const/4 v5, -0x1

    const-string v6, "unknow"

    if-eqz p2, :cond_3

    if-ne p1, v5, :cond_0

    const-string p1, "{\"uid\":\""

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"uid\":\""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-nez p1, :cond_1

    move-object p1, v6

    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"pv\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    if-nez p1, :cond_2

    move-object p1, v6

    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"pc\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"cpu\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"audio\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"video\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"wake\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"radio\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"wifi\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"bt\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"gps\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"sensor\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"camera\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    invoke-static {p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"flash\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    goto :goto_2

    :cond_3
    if-ne p1, v5, :cond_4

    const-string p1, "{\"pn\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-nez p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-nez p1, :cond_5

    :goto_1
    move-object p1, v6

    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    :goto_2
    invoke-static {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private sis(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    iget v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iget-wide p0, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    cmpl-double p0, v1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method private tsu(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    const-wide/16 v2, 0x0

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    cmpg-double p1, v0, v2

    if-ltz p1, :cond_2

    iget-wide p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    cmpg-double p0, p0, v2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private you(Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    :cond_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;IZ)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->les(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zta(Lcom/android/internal/os/BatterySipper;Lcom/android/server/wm/OpPowerConsumpStats$bio;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->audioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iget-wide p1, p2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->videoPowerMah:D

    :cond_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/internal/os/BatterySipper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->you(Lcom/android/internal/os/BatterySipper;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/internal/os/BatterySipper;Lcom/android/server/wm/OpPowerConsumpStats$bio;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/internal/os/BatterySipper;Lcom/android/server/wm/OpPowerConsumpStats$bio;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->ep()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->sis(Lcom/android/server/wm/OpPowerConsumpStats$bio;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->you(Lcom/android/server/wm/OpPowerConsumpStats$bio;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerConsumption{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",totalPowerMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->drainType:Ljava/lang/String;

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->les(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Lcom/android/server/wm/OpPowerConsumpStats$bio;)I
    .locals 3

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    iget-wide p0, p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->totalPowerMah:D

    cmpl-double v2, v0, p0

    if-lez v2, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    cmpg-double p0, v0, p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
