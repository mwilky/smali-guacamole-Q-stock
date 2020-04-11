.class abstract Lcom/google/common/cache/Striped64;
.super Ljava/lang/Number;
.source "Striped64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/cache/Striped64$Cell;
    }
.end annotation


# static fields
.field static final NCPU:I

.field private static final baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field private static final busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "Lcom/google/common/cache/Striped64;",
            ">;"
        }
    .end annotation
.end field

.field static final rng:Ljava/util/Random;

.field static final threadHashCode:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field volatile transient base:J

.field volatile transient busy:I

.field volatile transient cells:[Lcom/google/common/cache/Striped64$Cell;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/common/cache/Striped64;->NCPU:I

    const-class v0, Lcom/google/common/cache/Striped64;

    const-string v1, "base"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lcom/google/common/cache/Striped64;

    const-string v1, "busy"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method


# virtual methods
.method final casBase(JJ)Z
    .locals 6

    sget-object v0, Lcom/google/common/cache/Striped64;->baseUpdater:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    return v0
.end method

.method final casBusy()Z
    .locals 3

    sget-object v0, Lcom/google/common/cache/Striped64;->busyUpdater:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method

.method abstract fn(JJ)J
.end method

.method final internalReset(J)V
    .locals 4

    iget-object v0, p0, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    iput-wide p1, p0, Lcom/google/common/cache/Striped64;->base:J

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    iput-wide p1, v3, Lcom/google/common/cache/Striped64$Cell;->value:J

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final retryUpdate(J[IZ)V
    .locals 17

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    sget-object v0, Lcom/google/common/cache/Striped64;->threadHashCode:Ljava/lang/ThreadLocal;

    const/4 v5, 0x1

    new-array v6, v5, [I

    move-object v7, v6

    invoke-virtual {v0, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lcom/google/common/cache/Striped64;->rng:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    :goto_0
    aput v5, v7, v4

    move v0, v5

    goto :goto_1

    :cond_1
    aget v0, p3, v4

    move-object/from16 v7, p3

    :goto_1
    const/4 v5, 0x0

    move/from16 v6, p4

    move v8, v5

    move v5, v0

    :cond_2
    :goto_2
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v9, v0

    if-eqz v0, :cond_e

    array-length v0, v9

    move v10, v0

    if-lez v0, :cond_d

    add-int/lit8 v0, v10, -0x1

    and-int/2addr v0, v5

    aget-object v0, v9, v0

    move-object v11, v0

    if-nez v0, :cond_5

    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v0, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    move-object v12, v0

    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v13, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    move-object v14, v0

    if-eqz v0, :cond_3

    array-length v0, v14

    move v15, v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v15, -0x1

    and-int/2addr v0, v5

    move/from16 v16, v0

    aget-object v0, v14, v0

    if-nez v0, :cond_3

    aput-object v12, v14, v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v13, 0x1

    :cond_3
    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    nop

    if-eqz v13, :cond_2

    move/from16 p3, v5

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_4
    const/4 v8, 0x0

    move/from16 p3, v5

    goto :goto_6

    :cond_5
    if-nez v6, :cond_6

    const/4 v6, 0x1

    move/from16 p3, v5

    goto :goto_6

    :cond_6
    iget-wide v12, v11, Lcom/google/common/cache/Striped64$Cell;->value:J

    move-wide v14, v12

    move/from16 p3, v5

    invoke-virtual {v1, v14, v15, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v4

    invoke-virtual {v11, v12, v13, v4, v5}, Lcom/google/common/cache/Striped64$Cell;->cas(JJ)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    :cond_7
    sget v0, Lcom/google/common/cache/Striped64;->NCPU:I

    if-ge v10, v0, :cond_b

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-eq v0, v9, :cond_8

    goto :goto_5

    :cond_8
    if-nez v8, :cond_9

    const/4 v8, 0x1

    goto :goto_6

    :cond_9
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_c

    :try_start_1
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_a

    shl-int/lit8 v0, v10, 0x1

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x0

    :try_start_2
    invoke-static {v9, v4, v0, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v4, 0x0

    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    nop

    const/4 v8, 0x0

    move/from16 v5, p3

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    const/4 v4, 0x0

    :goto_4
    iput v4, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_b
    :goto_5
    const/4 v8, 0x0

    :cond_c
    :goto_6
    shl-int/lit8 v0, p3, 0xd

    xor-int v0, p3, v0

    ushr-int/lit8 v4, v0, 0x11

    xor-int/2addr v0, v4

    shl-int/lit8 v4, v0, 0x5

    xor-int/2addr v0, v4

    const/4 v4, 0x0

    aput v0, v7, v4

    move v5, v4

    goto :goto_a

    :cond_d
    move/from16 p3, v5

    goto :goto_7

    :cond_e
    move/from16 p3, v5

    :goto_7
    iget v0, v1, Lcom/google/common/cache/Striped64;->busy:I

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/cache/Striped64;->casBusy()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x0

    :try_start_4
    iget-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;

    if-ne v0, v9, :cond_f

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/cache/Striped64$Cell;

    and-int/lit8 v5, p3, 0x1

    new-instance v10, Lcom/google/common/cache/Striped64$Cell;

    invoke-direct {v10, v2, v3}, Lcom/google/common/cache/Striped64$Cell;-><init>(J)V

    aput-object v10, v0, v5

    iput-object v0, v1, Lcom/google/common/cache/Striped64;->cells:[Lcom/google/common/cache/Striped64$Cell;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v4, 0x1

    :cond_f
    const/4 v5, 0x0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    nop

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    const/4 v5, 0x0

    goto :goto_9

    :catchall_3
    move-exception v0

    const/4 v5, 0x0

    iput v5, v1, Lcom/google/common/cache/Striped64;->busy:I

    throw v0

    :cond_11
    const/4 v5, 0x0

    iget-wide v10, v1, Lcom/google/common/cache/Striped64;->base:J

    move-wide v12, v10

    invoke-virtual {v1, v12, v13, v2, v3}, Lcom/google/common/cache/Striped64;->fn(JJ)J

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lcom/google/common/cache/Striped64;->casBase(JJ)Z

    move-result v0

    if-eqz v0, :cond_12

    nop

    :goto_8
    return-void

    :cond_12
    :goto_9
    move/from16 v0, p3

    :goto_a
    move v4, v5

    move v5, v0

    goto/16 :goto_2
.end method
