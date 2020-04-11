.class Lcom/android/server/backup/keyvalue/TaskException;
.super Lcom/android/server/backup/keyvalue/BackupException;
.source "TaskException.java"


# static fields
.field private static final DEFAULT_STATUS:I = -0x3e8


# instance fields
.field private final mStateCompromised:Z

.field private final mStatus:I


# direct methods
.method private constructor <init>(Ljava/lang/Exception;ZI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backup/keyvalue/BackupException;-><init>(Ljava/lang/Exception;)V

    iput-boolean p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    iput p3, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method private constructor <init>(ZI)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backup/keyvalue/BackupException;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    iput p2, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return-void
.end method

.method static causedBy(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    instance-of v0, p0, Lcom/android/server/backup/keyvalue/TaskException;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    return-object v0
.end method

.method static create()Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(ZI)V

    return-object v0
.end method

.method static forStatus(I)Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const-string v2, "Exception based on TRANSPORT_OK"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    new-instance v1, Lcom/android/server/backup/keyvalue/TaskException;

    invoke-direct {v1, v0, p0}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(ZI)V

    return-object v1
.end method

.method static stateCompromised()Lcom/android/server/backup/keyvalue/TaskException;
    .locals 3

    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x1

    const/16 v2, -0x3e8

    invoke-direct {v0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(ZI)V

    return-object v0
.end method

.method static stateCompromised(Ljava/lang/Exception;)Lcom/android/server/backup/keyvalue/TaskException;
    .locals 4

    instance-of v0, p0, Lcom/android/server/backup/keyvalue/TaskException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/server/backup/keyvalue/TaskException;

    new-instance v2, Lcom/android/server/backup/keyvalue/TaskException;

    invoke-virtual {v0}, Lcom/android/server/backup/keyvalue/TaskException;->getStatus()I

    move-result v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    return-object v2

    :cond_0
    new-instance v0, Lcom/android/server/backup/keyvalue/TaskException;

    const/16 v2, -0x3e8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/backup/keyvalue/TaskException;-><init>(Ljava/lang/Exception;ZI)V

    return-object v0
.end method


# virtual methods
.method getStatus()I
    .locals 1

    iget v0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStatus:I

    return v0
.end method

.method isStateCompromised()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/backup/keyvalue/TaskException;->mStateCompromised:Z

    return v0
.end method
