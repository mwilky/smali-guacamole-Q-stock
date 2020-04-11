.class public Lcom/android/server/biometrics/face/FaceUtils;
.super Ljava/lang/Object;
.source "FaceUtils.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricUtils;


# static fields
.field private static sInstance:Lcom/android/server/biometrics/face/FaceUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/face/FaceUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/android/server/biometrics/face/FaceUtils;
    .locals 2

    sget-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/biometrics/face/FaceUtils;

    invoke-direct {v1}, Lcom/android/server/biometrics/face/FaceUtils;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/server/biometrics/face/FaceUtils;->sInstance:Lcom/android/server/biometrics/face/FaceUtils;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/face/FaceUserState;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/biometrics/face/FaceUserState;

    invoke-direct {v1, p1, p2}, Lcom/android/server/biometrics/face/FaceUserState;-><init>(Landroid/content/Context;I)V

    move-object v0, v1

    iget-object v1, p0, Lcom/android/server/biometrics/face/FaceUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/face/FaceUserState;->addBiometric(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    return-void
.end method

.method public getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceUserState;->getBiometrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUniqueName(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceUserState;->getUniqueName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeBiometricForUser(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/biometrics/face/FaceUserState;->removeBiometric(I)V

    return-void
.end method

.method public renameBiometricForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/face/FaceUtils;->getStateForUser(Landroid/content/Context;I)Lcom/android/server/biometrics/face/FaceUserState;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/android/server/biometrics/face/FaceUserState;->renameBiometric(ILjava/lang/CharSequence;)V

    return-void
.end method
