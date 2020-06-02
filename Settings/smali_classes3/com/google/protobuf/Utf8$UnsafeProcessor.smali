.class final Lcom/google/protobuf/Utf8$UnsafeProcessor;
.super Lcom/google/protobuf/Utf8$Processor;
.source "Utf8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/Utf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnsafeProcessor"
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:I

.field private static final AVAILABLE:Z

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final UNSAFE:Lsun/misc/Unsafe;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    invoke-static {}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->byteArrayBaseOffset()I

    move-result v0

    sput v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    sget-wide v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    sget v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    rem-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/Utf8$Processor;-><init>()V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->checkRequiredMethods(Ljava/lang/Class;)V

    return-void
.end method

.method private static addressOffset(Ljava/nio/ByteBuffer;)J
    .locals 3

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    sget-wide v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static byteArrayBaseOffset()I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()I"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const-class v1, [B

    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    :goto_0
    return v0
.end method

.method private static checkRequiredMethods(Ljava/lang/Class;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Lsun/misc/Unsafe;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "arrayBaseOffset"

    invoke-virtual {p0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    const-string v4, "getByte"

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    aput-object v5, v2, v3

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v0

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v1

    const-string v5, "putByte"

    invoke-virtual {p0, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Object;

    aput-object v6, v2, v3

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v6, v2, v0

    const-string v6, "getLong"

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v2, v3

    const-string v7, "objectFieldOffset"

    invoke-virtual {p0, v7, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v2, v3

    invoke-virtual {p0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Object;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    invoke-virtual {p0, v6, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    invoke-virtual {p0, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    invoke-virtual {p0, v6, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    aput-object p1, v4, v0

    const/4 v0, 0x2

    if-eqz v1, :cond_0

    const-string v5, "available"

    goto :goto_1

    :cond_0
    const-string v5, "unavailable"

    :goto_1
    aput-object v5, v4, v0

    const-string v0, "{0}.{1}: {2}"

    invoke-virtual {v2, v3, v0, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2

    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    :goto_1
    return-wide v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;

    invoke-direct {v1}, Lcom/google/protobuf/Utf8$UnsafeProcessor$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    invoke-static {}, Lcom/google/protobuf/Utf8;->access$700()Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    if-eqz v0, :cond_0

    const-string v3, "available"

    goto :goto_1

    :cond_0
    const-string v3, "unavailable"

    :goto_1
    const-string v4, "sun.misc.Unsafe: {}"

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method static isAvailable()Z
    .locals 1

    sget-boolean v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->AVAILABLE:Z

    return v0
.end method

.method private static partialIsValidUtf8(JI)I
    .locals 11

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii(JI)I

    move-result v0

    int-to-long v1, v0

    add-long/2addr p0, v1

    sub-int/2addr p2, v0

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x1

    if-lez p2, :cond_1

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v5, p0, v2

    invoke-virtual {v4, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    move v1, p0

    if-ltz p0, :cond_0

    add-int/lit8 p2, p2, -0x1

    move-wide p0, v5

    goto :goto_1

    :cond_0
    move-wide p0, v5

    :cond_1
    if-nez p2, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_6

    if-nez p2, :cond_3

    return v1

    :cond_3
    add-int/lit8 p2, p2, -0x1

    const/16 v4, -0x3e

    if-lt v1, v4, :cond_5

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, p0

    invoke-virtual {v4, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-le p0, v5, :cond_4

    move-wide p0, v2

    goto :goto_2

    :cond_4
    move-wide p0, v2

    goto/16 :goto_4

    :cond_5
    :goto_2
    return v6

    :cond_6
    const/16 v7, -0x10

    if-ge v1, v7, :cond_c

    const/4 v7, 0x2

    if-ge p2, v7, :cond_7

    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    :cond_7
    add-int/lit8 p2, p2, -0x2

    sget-object v7, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v8, p0, v2

    invoke-virtual {v7, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gt p0, v5, :cond_b

    const/16 p1, -0x60

    if-ne v1, v4, :cond_8

    if-lt p0, p1, :cond_b

    :cond_8
    const/16 v4, -0x13

    if-ne v1, v4, :cond_9

    if-ge p0, p1, :cond_b

    :cond_9
    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, v8

    invoke-virtual {p1, v8, v9}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_a

    goto :goto_3

    :cond_a
    move-wide p0, v2

    goto :goto_4

    :cond_b
    move-wide v2, v8

    :goto_3
    return v6

    :cond_c
    const/4 v4, 0x3

    if-ge p2, v4, :cond_d

    invoke-static {p0, p1, v1, p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor(JII)I

    move-result v2

    return v2

    :cond_d
    add-int/lit8 p2, p2, -0x3

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, p0, v2

    invoke-virtual {v4, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gt p0, v5, :cond_10

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p0, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v7, v2

    invoke-virtual {p1, v7, v8}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-gt p1, v5, :cond_f

    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, v9, v2

    invoke-virtual {p1, v9, v10}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p1

    if-le p1, v5, :cond_e

    goto :goto_5

    :cond_e
    move-wide p0, v7

    :goto_4
    goto/16 :goto_0

    :cond_f
    move-wide v7, v9

    :cond_10
    :goto_5
    return v6
.end method

.method private static partialIsValidUtf8([BJI)I
    .locals 11

    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeEstimateConsecutiveAscii([BJI)I

    move-result v0

    sub-int/2addr p3, v0

    int-to-long v1, v0

    add-long/2addr p1, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const-wide/16 v2, 0x1

    if-lez p3, :cond_1

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v5, p1, v2

    invoke-virtual {v4, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    move v1, p1

    if-ltz p1, :cond_0

    add-int/lit8 p3, p3, -0x1

    move-wide p1, v5

    goto :goto_1

    :cond_0
    move-wide p1, v5

    :cond_1
    if-nez p3, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x20

    const/16 v5, -0x41

    const/4 v6, -0x1

    if-ge v1, v4, :cond_6

    if-nez p3, :cond_3

    return v1

    :cond_3
    add-int/lit8 p3, p3, -0x1

    const/16 v4, -0x3e

    if-lt v1, v4, :cond_5

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, p1

    invoke-virtual {v4, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v5, :cond_4

    move-wide p1, v2

    goto :goto_2

    :cond_4
    move-wide p1, v2

    goto/16 :goto_4

    :cond_5
    :goto_2
    return v6

    :cond_6
    const/16 v7, -0x10

    if-ge v1, v7, :cond_c

    const/4 v7, 0x2

    if-ge p3, v7, :cond_7

    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    :cond_7
    add-int/lit8 p3, p3, -0x2

    sget-object v7, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v8, p1, v2

    invoke-virtual {v7, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    move p2, p1

    if-gt p1, v5, :cond_b

    const/16 p1, -0x60

    if-ne v1, v4, :cond_8

    if-lt p2, p1, :cond_b

    :cond_8
    const/16 v4, -0x13

    if-ne v1, v4, :cond_9

    if-ge p2, p1, :cond_b

    :cond_9
    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v2, v8

    invoke-virtual {p1, p0, v8, v9}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v5, :cond_a

    goto :goto_3

    :cond_a
    move-wide p1, v2

    goto :goto_4

    :cond_b
    move-wide v2, v8

    :goto_3
    return v6

    :cond_c
    const/4 v4, 0x3

    if-ge p3, v4, :cond_d

    invoke-static {p0, v1, p1, p2, p3}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->unsafeIncompleteStateFor([BIJI)I

    move-result v2

    return v2

    :cond_d
    add-int/lit8 p3, p3, -0x3

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, p1, v2

    invoke-virtual {v4, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    move p2, p1

    if-gt p1, v5, :cond_10

    shl-int/lit8 p1, v1, 0x1c

    add-int/lit8 v4, p2, 0x70

    add-int/2addr p1, v4

    shr-int/lit8 p1, p1, 0x1e

    if-nez p1, :cond_10

    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v7, v2

    invoke-virtual {p1, p0, v7, v8}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-gt p1, v5, :cond_f

    sget-object p1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v7, v9, v2

    invoke-virtual {p1, p0, v9, v10}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-le p1, v5, :cond_e

    goto :goto_5

    :cond_e
    move-wide p1, v7

    :goto_4
    goto/16 :goto_0

    :cond_f
    move-wide v7, v9

    :cond_10
    :goto_5
    return v6
.end method

.method private static unsafeEstimateConsecutiveAscii(JI)I
    .locals 6

    move v0, p2

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    long-to-int v1, p0

    and-int/lit8 v1, v1, 0x7

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p0

    invoke-virtual {v3, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result p0

    if-gez p0, :cond_1

    sub-int p0, v1, v2

    return p0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide p0, v4

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, p1}, Lsun/misc/Unsafe;->getLong(J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v2, 0x8

    add-long/2addr p0, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    sub-int v2, p2, v0

    return v2
.end method

.method private static unsafeEstimateConsecutiveAscii([BJI)I
    .locals 6

    move v0, p3

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    long-to-int v1, p1

    and-int/lit8 v1, v1, 0x7

    move v2, v1

    :goto_0
    if-lez v2, :cond_2

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v4, 0x1

    add-long/2addr v4, p1

    invoke-virtual {v3, p0, p1, p2}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result p1

    if-gez p1, :cond_1

    sub-int p1, v1, v2

    return p1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    move-wide p1, v4

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v1

    :goto_1
    const/16 v2, 0x8

    if-lt v0, v2, :cond_3

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v2, p0, p1, p2}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v2

    const-wide v4, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/16 v2, 0x8

    add-long/2addr p1, v2

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_3
    sub-int v2, p3, v0

    return v2
.end method

.method private static unsafeIncompleteStateFor(JII)I
    .locals 4

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    sget-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p0

    invoke-virtual {v1, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/Utf8;->access$200(III)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p1}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v0

    invoke-static {p2, v0}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v0

    return v0

    :cond_2
    invoke-static {p2}, Lcom/google/protobuf/Utf8;->access$600(I)I

    move-result v0

    return v0
.end method

.method private static unsafeIncompleteStateFor([BIJI)I
    .locals 4

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    sget-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long/2addr v2, p2

    invoke-virtual {v1, p0, v2, v3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/Utf8;->access$200(III)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0, p2, p3}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v0

    invoke-static {p1, v0}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v0

    return v0

    :cond_2
    invoke-static {p1}, Lcom/google/protobuf/Utf8;->access$600(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method encodeUtf8(Ljava/lang/CharSequence;[BII)I
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sget v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int/2addr v4, v2

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v6, v4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_e

    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_e

    const/4 v11, 0x0

    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v11, v8, :cond_1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-ge v15, v12, :cond_0

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v13, v4

    move/from16 v15, v16

    move-wide/from16 v16, v13

    int-to-byte v13, v15

    invoke-virtual {v12, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, v16

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :cond_1
    if-ne v11, v8, :cond_2

    sget v9, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    int-to-long v9, v9

    sub-long v9, v4, v9

    long-to-int v9, v9

    return v9

    :cond_2
    :goto_1
    if-ge v11, v8, :cond_d

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_3

    cmp-long v16, v4, v6

    if-gez v16, :cond_3

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v17, v4, v13

    int-to-byte v13, v15

    invoke-virtual {v12, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-object v14, v9

    move-wide/from16 v4, v17

    const-wide/16 v20, 0x1

    move-wide/from16 v18, v6

    move-object/from16 v17, v10

    const/16 v6, 0x80

    goto/16 :goto_4

    :cond_3
    const/16 v12, 0x800

    if-ge v15, v12, :cond_4

    const-wide/16 v12, 0x2

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_4

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v13, 0x1

    add-long v2, v4, v13

    ushr-int/lit8 v13, v15, 0x6

    or-int/lit16 v13, v13, 0x3c0

    int-to-byte v13, v13

    invoke-virtual {v12, v1, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long v17, v2, v12

    and-int/lit8 v5, v15, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-virtual {v4, v1, v2, v3, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-object v14, v9

    move-wide/from16 v4, v17

    const-wide/16 v20, 0x1

    move-wide/from16 v18, v6

    move-object/from16 v17, v10

    const/16 v6, 0x80

    goto/16 :goto_4

    :cond_4
    const v2, 0xdfff

    const v3, 0xd800

    if-lt v15, v3, :cond_6

    if-ge v2, v15, :cond_5

    goto :goto_2

    :cond_5
    move-object v14, v9

    move-object/from16 v17, v10

    goto :goto_3

    :cond_6
    :goto_2
    const-wide/16 v12, 0x3

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_7

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-object v14, v9

    move-object/from16 v17, v10

    const-wide/16 v12, 0x1

    add-long v9, v4, v12

    ushr-int/lit8 v3, v15, 0xc

    or-int/lit16 v3, v3, 0x1e0

    int-to-byte v3, v3

    invoke-virtual {v2, v1, v4, v5, v3}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v3, v9, v12

    ushr-int/lit8 v5, v15, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-virtual {v2, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v9, 0x1

    add-long v21, v3, v9

    and-int/lit8 v5, v15, 0x3f

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-virtual {v2, v1, v3, v4, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide/from16 v18, v6

    move-wide/from16 v4, v21

    const/16 v6, 0x80

    const-wide/16 v20, 0x1

    goto :goto_4

    :cond_7
    move-object v14, v9

    move-object/from16 v17, v10

    :goto_3
    const-wide/16 v9, 0x4

    sub-long v9, v6, v9

    cmp-long v9, v4, v9

    const/4 v10, 0x0

    if-gtz v9, :cond_a

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_9

    add-int/lit8 v11, v11, 0x1

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move v3, v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {v15, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    sget-object v9, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v18, v6

    const-wide/16 v12, 0x1

    add-long v6, v4, v12

    ushr-int/lit8 v10, v2, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    invoke-virtual {v9, v1, v4, v5, v10}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v9, v6, v12

    ushr-int/lit8 v5, v2, 0xc

    and-int/lit8 v5, v5, 0x3f

    const/16 v12, 0x80

    or-int/2addr v5, v12

    int-to-byte v5, v5

    invoke-virtual {v4, v1, v6, v7, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long v12, v9, v6

    ushr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    const/16 v6, 0x80

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v4, v1, v9, v10, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    sget-object v4, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v20, 0x1

    add-long v9, v12, v20

    and-int/lit8 v5, v2, 0x3f

    or-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-virtual {v4, v1, v12, v13, v5}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    move-wide v4, v9

    :goto_4
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, p3

    move/from16 v3, p4

    move v12, v6

    move-object v9, v14

    move-object/from16 v10, v17

    move-wide/from16 v6, v18

    move-wide/from16 v13, v20

    goto/16 :goto_1

    :cond_8
    move-wide/from16 v18, v6

    goto :goto_5

    :cond_9
    move-wide/from16 v18, v6

    :goto_5
    new-instance v2, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v3, v11, -0x1

    invoke-direct {v2, v3, v8, v10}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v2

    :cond_a
    move-wide/from16 v18, v6

    if-gt v3, v15, :cond_c

    if-gt v15, v2, :cond_c

    add-int/lit8 v2, v11, 0x1

    if-eq v2, v8, :cond_b

    add-int/lit8 v2, v11, 0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_b
    new-instance v2, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v2, v11, v8, v10}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v2

    :cond_c
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v17

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v7, v14

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_d
    sget v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    int-to-long v2, v2

    sub-long v2, v4, v2

    long-to-int v2, v2

    return v2

    :cond_e
    move-wide/from16 v18, v6

    move-object v7, v9

    move-object v6, v10

    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v6, p3, p4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method encodeUtf8Direct(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v2

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v2

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    int-to-long v9, v8

    sub-long v11, v6, v4

    cmp-long v9, v9, v11

    const-string v10, " at index "

    const-string v11, "Failed writing "

    if-gtz v9, :cond_d

    const/4 v9, 0x0

    :goto_0
    const/16 v12, 0x80

    const-wide/16 v13, 0x1

    if-ge v9, v8, :cond_1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    move/from16 v16, v15

    if-ge v15, v12, :cond_0

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v13, v4

    move/from16 v15, v16

    move-wide/from16 v16, v13

    int-to-byte v13, v15

    invoke-virtual {v12, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v16

    goto :goto_0

    :cond_0
    move/from16 v15, v16

    :cond_1
    if-ne v9, v8, :cond_2

    sub-long v10, v4, v2

    long-to-int v10, v10

    invoke-virtual {v1, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_2
    :goto_1
    if-ge v9, v8, :cond_c

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v15

    if-ge v15, v12, :cond_3

    cmp-long v16, v4, v6

    if-gez v16, :cond_3

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v17, v4, v13

    int-to-byte v13, v15

    invoke-virtual {v12, v4, v5, v13}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide/from16 v19, v6

    move-wide/from16 v4, v17

    const/16 v6, 0x80

    const-wide/16 v21, 0x1

    move-wide/from16 v17, v2

    goto/16 :goto_2

    :cond_3
    const/16 v12, 0x800

    if-ge v15, v12, :cond_4

    const-wide/16 v12, 0x2

    sub-long v12, v6, v12

    cmp-long v12, v4, v12

    if-gtz v12, :cond_4

    sget-object v12, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v17, v2

    const-wide/16 v13, 0x1

    add-long v1, v4, v13

    ushr-int/lit8 v3, v15, 0x6

    or-int/lit16 v3, v3, 0x3c0

    int-to-byte v3, v3

    invoke-virtual {v12, v4, v5, v3}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v1, v13

    and-int/lit8 v12, v15, 0x3f

    const/16 v13, 0x80

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {v3, v1, v2, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide/from16 v19, v6

    const/16 v6, 0x80

    const-wide/16 v21, 0x1

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v17, v2

    const v1, 0xdfff

    const v2, 0xd800

    if-lt v15, v2, :cond_5

    if-ge v1, v15, :cond_6

    :cond_5
    const-wide/16 v12, 0x3

    sub-long v12, v6, v12

    cmp-long v3, v4, v12

    if-gtz v3, :cond_6

    sget-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v2, 0x1

    add-long v13, v4, v2

    ushr-int/lit8 v12, v15, 0xc

    or-int/lit16 v12, v12, 0x1e0

    int-to-byte v12, v12

    invoke-virtual {v1, v4, v5, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v13, v2

    ushr-int/lit8 v12, v15, 0x6

    and-int/lit8 v12, v12, 0x3f

    const/16 v2, 0x80

    or-int/lit16 v3, v12, 0x80

    int-to-byte v3, v3

    invoke-virtual {v1, v13, v14, v3}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v1, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v12, 0x1

    add-long v21, v4, v12

    and-int/lit8 v3, v15, 0x3f

    or-int/2addr v3, v2

    int-to-byte v2, v3

    invoke-virtual {v1, v4, v5, v2}, Lsun/misc/Unsafe;->putByte(JB)V

    move-wide/from16 v19, v6

    move-wide/from16 v4, v21

    const/16 v6, 0x80

    const-wide/16 v21, 0x1

    goto :goto_2

    :cond_6
    const-wide/16 v12, 0x4

    sub-long v12, v6, v12

    cmp-long v3, v4, v12

    const/4 v12, 0x0

    if-gtz v3, :cond_9

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_8

    add-int/lit8 v9, v9, 0x1

    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move v2, v1

    invoke-static {v15, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {v15, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    move-wide/from16 v19, v6

    const-wide/16 v13, 0x1

    add-long v6, v4, v13

    ushr-int/lit8 v12, v1, 0x12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    invoke-virtual {v3, v4, v5, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v4, v6, v13

    ushr-int/lit8 v12, v1, 0xc

    and-int/lit8 v12, v12, 0x3f

    const/16 v13, 0x80

    or-int/2addr v12, v13

    int-to-byte v12, v12

    invoke-virtual {v3, v6, v7, v12}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v6, 0x1

    add-long v13, v4, v6

    ushr-int/lit8 v12, v1, 0x6

    and-int/lit8 v12, v12, 0x3f

    const/16 v6, 0x80

    or-int/lit16 v7, v12, 0x80

    int-to-byte v7, v7

    invoke-virtual {v3, v4, v5, v7}, Lsun/misc/Unsafe;->putByte(JB)V

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    const-wide/16 v21, 0x1

    add-long v4, v13, v21

    and-int/lit8 v7, v1, 0x3f

    or-int/2addr v7, v6

    int-to-byte v7, v7

    invoke-virtual {v3, v13, v14, v7}, Lsun/misc/Unsafe;->putByte(JB)V

    nop

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v1, p2

    move v12, v6

    move-wide/from16 v2, v17

    move-wide/from16 v6, v19

    move-wide/from16 v13, v21

    goto/16 :goto_1

    :cond_7
    move-wide/from16 v19, v6

    goto :goto_3

    :cond_8
    move-wide/from16 v19, v6

    :goto_3
    new-instance v1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v9, -0x1

    invoke-direct {v1, v2, v8, v12}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v1

    :cond_9
    move-wide/from16 v19, v6

    if-gt v2, v15, :cond_b

    if-gt v15, v1, :cond_b

    add-int/lit8 v1, v9, 0x1

    if-eq v1, v8, :cond_a

    add-int/lit8 v1, v9, 0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v1

    if-nez v1, :cond_b

    :cond_a
    new-instance v1, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;

    invoke-direct {v1, v9, v8, v12}, Lcom/google/protobuf/Utf8$UnpairedSurrogateException;-><init>(IILcom/google/protobuf/Utf8$1;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-wide/from16 v17, v2

    sub-long v1, v4, v17

    long-to-int v1, v1

    move-object/from16 v2, p2

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_d
    move-wide/from16 v17, v2

    move-wide/from16 v19, v6

    move-object v2, v1

    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v8, -0x1

    invoke-interface {v0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method partialIsValidUtf8(I[BII)I
    .locals 18

    move/from16 v0, p1

    move-object/from16 v1, p2

    or-int v2, p3, p4

    array-length v3, v1

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-ltz v2, :cond_11

    sget v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->ARRAY_BASE_OFFSET:I

    add-int v3, v2, p3

    int-to-long v3, v3

    add-int v2, v2, p4

    int-to-long v5, v2

    if-eqz v0, :cond_f

    cmp-long v2, v3, v5

    if-ltz v2, :cond_0

    return v0

    :cond_0
    int-to-byte v2, v0

    const/16 v7, -0x20

    const/4 v8, -0x1

    const/16 v9, -0x41

    const-wide/16 v10, 0x1

    if-ge v2, v7, :cond_2

    const/16 v7, -0x3e

    if-lt v2, v7, :cond_1

    sget-object v7, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v3

    invoke-virtual {v7, v1, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    if-le v3, v9, :cond_10

    move-wide v3, v10

    :cond_1
    return v8

    :cond_2
    const/16 v12, -0x10

    if-ge v2, v12, :cond_9

    shr-int/lit8 v12, v0, 0x8

    not-int v12, v12

    int-to-byte v12, v12

    if-nez v12, :cond_3

    sget-object v13, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v3, v10

    invoke-virtual {v13, v1, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    cmp-long v3, v14, v5

    if-ltz v3, :cond_4

    invoke-static {v2, v12}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v3

    return v3

    :cond_3
    move-wide v14, v3

    :cond_4
    if-gt v12, v9, :cond_8

    const/16 v3, -0x60

    if-ne v2, v7, :cond_5

    if-lt v12, v3, :cond_8

    :cond_5
    const/16 v4, -0x13

    if-ne v2, v4, :cond_6

    if-ge v12, v3, :cond_8

    :cond_6
    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v14

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    if-le v3, v9, :cond_7

    move-wide v14, v10

    goto :goto_0

    :cond_7
    goto :goto_1

    :cond_8
    :goto_0
    return v8

    :cond_9
    shr-int/lit8 v7, v0, 0x8

    not-int v7, v7

    int-to-byte v7, v7

    const/4 v12, 0x0

    if-nez v7, :cond_a

    sget-object v13, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v3, v10

    invoke-virtual {v13, v1, v3, v4}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v7

    cmp-long v3, v14, v5

    if-ltz v3, :cond_b

    invoke-static {v2, v7}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v3

    return v3

    :cond_a
    shr-int/lit8 v13, v0, 0x10

    int-to-byte v12, v13

    move-wide v14, v3

    :cond_b
    if-nez v12, :cond_d

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v16, v14, v10

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v12

    cmp-long v3, v16, v5

    if-ltz v3, :cond_c

    invoke-static {v2, v7, v12}, Lcom/google/protobuf/Utf8;->access$200(III)I

    move-result v3

    return v3

    :cond_c
    move-wide/from16 v14, v16

    :cond_d
    if-gt v7, v9, :cond_e

    shl-int/lit8 v3, v2, 0x1c

    add-int/lit8 v4, v7, 0x70

    add-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1e

    if-nez v3, :cond_e

    if-gt v12, v9, :cond_e

    sget-object v3, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v14

    invoke-virtual {v3, v1, v14, v15}, Lsun/misc/Unsafe;->getByte(Ljava/lang/Object;J)B

    move-result v3

    if-le v3, v9, :cond_10

    move-wide v14, v10

    :cond_e
    return v8

    :cond_f
    move-wide v10, v3

    :cond_10
    :goto_1
    sub-long v2, v5, v10

    long-to-int v2, v2

    invoke-static {v1, v10, v11, v2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8([BJI)I

    move-result v2

    return v2

    :cond_11
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Array length=%d, index=%d, limit=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method partialIsValidUtf8Direct(ILjava/nio/ByteBuffer;II)I
    .locals 18

    move/from16 v0, p1

    move/from16 v1, p3

    or-int v2, v1, p4

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int v3, v3, p4

    or-int/2addr v2, v3

    if-ltz v2, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    int-to-long v4, v1

    add-long/2addr v2, v4

    sub-int v4, p4, v1

    int-to-long v4, v4

    add-long/2addr v4, v2

    if-eqz v0, :cond_f

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    return v0

    :cond_0
    int-to-byte v6, v0

    const/16 v7, -0x20

    const/4 v8, -0x1

    const/16 v9, -0x41

    const-wide/16 v10, 0x1

    if-ge v6, v7, :cond_2

    const/16 v7, -0x3e

    if-lt v6, v7, :cond_1

    sget-object v7, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v2

    invoke-virtual {v7, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_10

    move-wide v2, v10

    :cond_1
    return v8

    :cond_2
    const/16 v12, -0x10

    if-ge v6, v12, :cond_9

    shr-int/lit8 v12, v0, 0x8

    not-int v12, v12

    int-to-byte v12, v12

    if-nez v12, :cond_3

    sget-object v13, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v2, v10

    invoke-virtual {v13, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v12

    cmp-long v2, v14, v4

    if-ltz v2, :cond_4

    invoke-static {v6, v12}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v2

    return v2

    :cond_3
    move-wide v14, v2

    :cond_4
    if-gt v12, v9, :cond_8

    const/16 v2, -0x60

    if-ne v6, v7, :cond_5

    if-lt v12, v2, :cond_8

    :cond_5
    const/16 v3, -0x13

    if-ne v6, v3, :cond_6

    if-ge v12, v2, :cond_8

    :cond_6
    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v14

    invoke-virtual {v2, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_7

    move-wide v14, v10

    goto :goto_0

    :cond_7
    goto :goto_1

    :cond_8
    :goto_0
    return v8

    :cond_9
    shr-int/lit8 v7, v0, 0x8

    not-int v7, v7

    int-to-byte v7, v7

    const/4 v12, 0x0

    if-nez v7, :cond_a

    sget-object v13, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v14, v2, v10

    invoke-virtual {v13, v2, v3}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v7

    cmp-long v2, v14, v4

    if-ltz v2, :cond_b

    invoke-static {v6, v7}, Lcom/google/protobuf/Utf8;->access$100(II)I

    move-result v2

    return v2

    :cond_a
    shr-int/lit8 v13, v0, 0x10

    int-to-byte v12, v13

    move-wide v14, v2

    :cond_b
    if-nez v12, :cond_d

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long v16, v14, v10

    invoke-virtual {v2, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v12

    cmp-long v2, v16, v4

    if-ltz v2, :cond_c

    invoke-static {v6, v7, v12}, Lcom/google/protobuf/Utf8;->access$200(III)I

    move-result v2

    return v2

    :cond_c
    move-wide/from16 v14, v16

    :cond_d
    if-gt v7, v9, :cond_e

    shl-int/lit8 v2, v6, 0x1c

    add-int/lit8 v3, v7, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_e

    if-gt v12, v9, :cond_e

    sget-object v2, Lcom/google/protobuf/Utf8$UnsafeProcessor;->UNSAFE:Lsun/misc/Unsafe;

    add-long/2addr v10, v14

    invoke-virtual {v2, v14, v15}, Lsun/misc/Unsafe;->getByte(J)B

    move-result v2

    if-le v2, v9, :cond_10

    move-wide v14, v10

    :cond_e
    return v8

    :cond_f
    move-wide v10, v2

    :cond_10
    :goto_1
    sub-long v2, v4, v10

    long-to-int v2, v2

    invoke-static {v10, v11, v2}, Lcom/google/protobuf/Utf8$UnsafeProcessor;->partialIsValidUtf8(JI)I

    move-result v2

    return v2

    :cond_11
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "buffer limit=%d, index=%d, limit=%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
