.class final Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/alertslider/AlertSliderHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field private mDevIndex:I

.field private final mDevName:Ljava/lang/String;

.field private final mState1Bits:I

.field private final mState2Bits:I

.field private final mStateNbits:I

.field final synthetic this$0:Lcom/oneplus/android/server/alertslider/AlertSliderHw;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/alertslider/AlertSliderHw;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->this$0:Lcom/oneplus/android/server/alertslider/AlertSliderHw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/oneplus/android/server/alertslider/AlertSliderHw;->ye()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "soc:tri_state_key"

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    const/4 p1, 0x1

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mState1Bits:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mState2Bits:I

    const/4 p1, 0x4

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mStateNbits:I

    invoke-direct {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->Er()V

    goto :goto_0

    :cond_0
    const-string p1, "tri-state-key"

    iput-object p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mState1Bits:I

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mState2Bits:I

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mStateNbits:I

    iput p1, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevIndex:I

    :goto_0
    return-void
.end method

.method private Er()V
    .locals 9

    const-string v0, ""

    const-string v1, "AlertSliderHw"

    const/16 v2, 0x400

    new-array v3, v2, [C

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x6

    if-ge v5, v6, :cond_1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const-string v8, "/sys/class/extcon/extcon%d/name"

    invoke-static {v6, v8, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4, v2}, Ljava/io/FileReader;->read([CII)I

    move-result v6
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    move v6, v4

    :goto_1
    invoke-static {v1, v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3, v4, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput v5, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevIndex:I

    goto :goto_3

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/sys/class/extcon/extcon"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/name != soc:tri_state_key"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    :goto_3
    return-void
.end method


# virtual methods
.method public checkSwitchExists()Z
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->getSwitchStatePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method public getDevName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    return-object p0
.end method

.method public getDevPath()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    const-string v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    aput-object v4, v3, v1

    iget p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    const-string p0, "/devices/platform/soc/%s/extcon/extcon%d"

    invoke-static {v0, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "/devices/virtual/switch/%s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSwitchStatePath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    const-string v1, "soc:tri_state_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "/sys/class/extcon/extcon%d/"

    :goto_0
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/alertslider/AlertSliderHw$you;->mDevName:Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "/sys/class/switch/%s/state"

    goto :goto_0
.end method
