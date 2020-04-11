.class public Lcom/android/server/secrecy/zta/zta/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static DEBUG:Z = false

.field private static ERROR:Z = false

.field private static INFO:Z = false

.field static final LOG_LEVEL_DEBUG:I = 0x2

.field static final LOG_LEVEL_ERROR:I = 0x10

.field static final LOG_LEVEL_INFO:I = 0x4

.field static final LOG_LEVEL_VERBOSE:I = 0x0

.field static final LOG_LEVEL_WARN:I = 0x8

.field private static VERBOSE:Z = false

.field private static WARN:Z = false

.field private static final kL:Ljava/lang/String; = "SecrecyService.LogUtil"

.field private static final lL:Z

.field private static mL:I

.field private static nL:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Lcom/android/server/secrecy/SecrecyService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->lL:Z

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->lL:Z

    const/4 v1, 0x2

    const/16 v2, 0x10

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->lL:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput v0, Lcom/android/server/secrecy/zta/zta/zta;->nL:I

    sget v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gtz v0, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    sput-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->VERBOSE:Z

    sget v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    if-gt v0, v1, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    sput-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->DEBUG:Z

    sget v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_4

    move v0, v3

    goto :goto_4

    :cond_4
    move v0, v4

    :goto_4
    sput-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->INFO:Z

    sget v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_5

    move v0, v3

    goto :goto_5

    :cond_5
    move v0, v4

    :goto_5
    sput-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->WARN:Z

    sget v0, Lcom/android/server/secrecy/zta/zta/zta;->mL:I

    if-gt v0, v2, :cond_6

    goto :goto_6

    :cond_6
    move v3, v4

    :goto_6
    sput-boolean v3, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->DEBUG:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static getLevelString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " VERBOSE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/secrecy/zta/zta/zta;->VERBOSE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", DEBUG = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->DEBUG:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", INFO = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->INFO:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", WARN = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->WARN:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ERROR = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->INFO:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->INFO:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static isDebug()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->lL:Z

    return v0
.end method

.method public static r(Z)V
    .locals 2

    sput-boolean p0, Lcom/android/server/secrecy/zta/zta/zta;->VERBOSE:Z

    sput-boolean p0, Lcom/android/server/secrecy/zta/zta/zta;->DEBUG:Z

    sput-boolean p0, Lcom/android/server/secrecy/zta/zta/zta;->INFO:Z

    sput-boolean p0, Lcom/android/server/secrecy/zta/zta/zta;->WARN:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dynamicallyConfigLog ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SecrecyService.LogUtil"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->VERBOSE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->WARN:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->WARN:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/secrecy/zta/zta/zta;->ERROR:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
