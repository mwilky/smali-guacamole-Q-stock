.class Lcom/android/server/rollback/RollbackData;
.super Ljava/lang/Object;
.source "RollbackData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/rollback/RollbackData$RollbackState;
    }
.end annotation


# static fields
.field static final ROLLBACK_STATE_AVAILABLE:I = 0x1

.field static final ROLLBACK_STATE_COMMITTED:I = 0x3

.field static final ROLLBACK_STATE_ENABLING:I


# instance fields
.field public apkSessionId:I

.field public final backupDir:Ljava/io/File;

.field public final info:Landroid/content/rollback/RollbackInfo;

.field public restoreUserDataInProgress:Z

.field public final stagedSessionId:I

.field public state:I

.field public timestamp:Ljava/time/Instant;


# direct methods
.method constructor <init>(ILjava/io/File;I)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    new-instance v8, Landroid/content/rollback/RollbackInfo;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eq p3, v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, v1

    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, -0x1

    move-object v2, v8

    move v3, p1

    invoke-direct/range {v2 .. v7}, Landroid/content/rollback/RollbackInfo;-><init>(ILjava/util/List;ZLjava/util/List;I)V

    iput-object v8, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    iput p3, p0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    iput v1, p0, Lcom/android/server/rollback/RollbackData;->state:I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    return-void
.end method

.method constructor <init>(Landroid/content/rollback/RollbackInfo;Ljava/io/File;Ljava/time/Instant;IIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    iput-object p1, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    iput-object p2, p0, Lcom/android/server/rollback/RollbackData;->backupDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/rollback/RollbackData;->timestamp:Ljava/time/Instant;

    iput p4, p0, Lcom/android/server/rollback/RollbackData;->stagedSessionId:I

    iput p5, p0, Lcom/android/server/rollback/RollbackData;->state:I

    iput p6, p0, Lcom/android/server/rollback/RollbackData;->apkSessionId:I

    iput-boolean p7, p0, Lcom/android/server/rollback/RollbackData;->restoreUserDataInProgress:Z

    return-void
.end method

.method static rollbackStateFromString(Ljava/lang/String;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x58e10884

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x2bbe7537

    if-eq v0, v1, :cond_2

    const v1, 0x61e1ed80

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "enabling"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "available"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "committed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_5

    if-ne v0, v2, :cond_4

    const/4 v0, 0x3

    return v0

    :cond_4
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    return v4

    :cond_6
    return v3
.end method

.method static rollbackStateToString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string v0, "committed"

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid rollback state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    const-string v0, "available"

    return-object v0

    :cond_2
    const-string v0, "enabling"

    return-object v0
.end method


# virtual methods
.method public getStateAsString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/android/server/rollback/RollbackData;->state:I

    invoke-static {v0}, Lcom/android/server/rollback/RollbackData;->rollbackStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStaged()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/rollback/RollbackData;->info:Landroid/content/rollback/RollbackInfo;

    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->isStaged()Z

    move-result v0

    return v0
.end method
