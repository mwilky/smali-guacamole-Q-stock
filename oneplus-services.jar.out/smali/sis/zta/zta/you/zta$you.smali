.class public abstract Lsis/zta/zta/you/zta$you;
.super Landroid/os/HwBinder;
.source ""

# interfaces
.implements Lsis/zta/zta/you/zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsis/zta/zta/you/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "you"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public final getDebugInfo()Lzta/zta/zta/zta/zta;
    .locals 2

    new-instance p0, Lzta/zta/zta/zta/zta;

    invoke-direct {p0}, Lzta/zta/zta/zta/zta;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v0

    iput v0, p0, Lzta/zta/zta/zta/zta;->pid:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lzta/zta/zta/zta/zta;->ptr:J

    const/4 v0, 0x0

    iput v0, p0, Lzta/zta/zta/zta/zta;->arch:I

    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/16 v1, 0x20

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [B

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0

    nop

    :array_0
    .array-data 1
        0x5ft
        -0x33t
        0xdt
        -0x79t
        -0x59t
        0x15t
        -0x80t
        0x78t
        0x25t
        0x31t
        0x18t
        0x21t
        -0x71t
        -0x4ft
        -0x1t
        0x10t
        -0xft
        -0x3bt
        0x24t
        -0x73t
        -0x76t
        -0x44t
        0xct
        0x38t
        -0x43t
        0x0t
        0x5bt
        0x2et
        0x21t
        -0x7at
        -0x6ft
        0x13t
    .end array-data

    :array_1
    .array-data 1
        -0x61t
        -0x28t
        -0x54t
        0xbt
        -0x5dt
        -0x78t
        0x1t
        0x41t
        -0x1et
        -0x36t
        0x43t
        0x10t
        0x7dt
        0x53t
        0x3et
        -0x19t
        -0x52t
        0x51t
        0x44t
        0x39t
        -0x18t
        0x20t
        0x6ct
        0x63t
        -0x6ft
        0xbt
        0x46t
        0x63t
        0x2bt
        -0x29t
        0x72t
        0x28t
    .end array-data

    :array_2
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const-string v0, "vendor.display.color@1.1::IDisplayColor"

    const-string v1, "vendor.display.color@1.0::IDisplayColor"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    const-string p0, "vendor.display.color@1.1::IDisplayColor"

    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.display.color@1.0::IDisplayColor"

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    const-string v0, "android.hidl.base@1.0::IBase"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_16

    :sswitch_0
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_4c

    goto/16 :goto_14

    :sswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1

    move v2, v3

    :cond_1
    if-eq v2, v3, :cond_2

    goto/16 :goto_14

    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->notifySyspropsChanged()V

    goto/16 :goto_16

    :sswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v3, :cond_4

    goto/16 :goto_14

    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->getDebugInfo()Lzta/zta/zta/zta/zta;

    move-result-object p0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p0, p3}, Lzta/zta/zta/zta/zta;->writeToParcel(Landroid/os/HwParcel;)V

    goto/16 :goto_15

    :sswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    goto/16 :goto_14

    :cond_6
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->ping()V

    goto/16 :goto_8

    :sswitch_4
    and-int/lit8 p0, p4, 0x1

    if-eqz p0, :cond_7

    move v2, v3

    :cond_7
    if-eqz v2, :cond_4c

    goto/16 :goto_14

    :sswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_8

    move v2, v3

    :cond_8
    if-eq v2, v3, :cond_9

    goto/16 :goto_14

    :cond_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->setHALInstrumentation()V

    goto/16 :goto_16

    :sswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_a

    goto :goto_2

    :cond_a
    move v3, v2

    :goto_2
    if-eqz v3, :cond_b

    goto/16 :goto_14

    :cond_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->getHashChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance p1, Landroid/os/HwBlob;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const-wide/16 v0, 0x8

    invoke-virtual {p1, v0, v1, p2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0xc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance p4, Landroid/os/HwBlob;

    mul-int/lit8 v0, p2, 0x20

    invoke-direct {p4, v0}, Landroid/os/HwBlob;-><init>(I)V

    :goto_3
    if-ge v2, p2, :cond_d

    mul-int/lit8 v0, v2, 0x20

    int-to-long v0, v0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_c

    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_c

    invoke-virtual {p4, v0, v1, v3}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array element is not of the expected length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    goto/16 :goto_15

    :sswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_e

    goto :goto_4

    :cond_e
    move v3, v2

    :goto_4
    if-eqz v3, :cond_f

    goto/16 :goto_14

    :cond_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_15

    :sswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_10

    goto :goto_5

    :cond_10
    move v3, v2

    :goto_5
    if-eqz v3, :cond_11

    goto/16 :goto_14

    :cond_11
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsis/zta/zta/you/zta$you;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    goto :goto_8

    :sswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_12

    goto :goto_6

    :cond_12
    move v3, v2

    :goto_6
    if-eqz v3, :cond_13

    goto/16 :goto_14

    :cond_13
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    goto/16 :goto_15

    :pswitch_0
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_14

    goto :goto_7

    :cond_14
    move v3, v2

    :goto_7
    if-eqz v3, :cond_15

    goto/16 :goto_14

    :cond_15
    const-string p1, "vendor.display.color@1.1::IDisplayColor"

    invoke-virtual {p2, p1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result p1

    invoke-interface {p0, p1}, Lsis/zta/zta/you/zta;->zta(Z)V

    :goto_8
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    goto/16 :goto_15

    :pswitch_1
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_16

    move v2, v3

    :cond_16
    if-eqz v2, :cond_17

    goto/16 :goto_14

    :cond_17
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/bio;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/bio;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$qbh;)V

    goto/16 :goto_16

    :pswitch_2
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_18

    goto :goto_9

    :cond_18
    move v3, v2

    :goto_9
    if-eqz v3, :cond_19

    goto/16 :goto_14

    :cond_19
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v9, Lsis/zta/zta/zta/bud;

    invoke-direct {v9}, Lsis/zta/zta/zta/bud;-><init>()V

    invoke-virtual {v9, p2}, Lsis/zta/zta/zta/bud;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->zta(JIILsis/zta/zta/zta/bud;)I

    move-result p0

    goto/16 :goto_13

    :pswitch_3
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1a

    move v2, v3

    :cond_1a
    if-eqz v2, :cond_1b

    goto/16 :goto_14

    :cond_1b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    new-instance v8, Lsis/zta/zta/you/kth;

    invoke-direct {v8, p0, p3}, Lsis/zta/zta/you/kth;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lsis/zta/zta/zta/cno;->zta(JIILsis/zta/zta/zta/cno$bio;)V

    goto/16 :goto_16

    :pswitch_4
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1c

    goto :goto_a

    :cond_1c
    move v3, v2

    :goto_a
    if-eqz v3, :cond_1d

    goto/16 :goto_14

    :cond_1d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v10, Lsis/zta/zta/zta/cgv;

    invoke-direct {v10}, Lsis/zta/zta/zta/cgv;-><init>()V

    invoke-virtual {v10, p2}, Lsis/zta/zta/zta/cgv;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v4, p0

    invoke-interface/range {v4 .. v10}, Lsis/zta/zta/zta/cno;->zta(JIIILsis/zta/zta/zta/cgv;)I

    move-result p0

    goto/16 :goto_13

    :pswitch_5
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_1e

    move v2, v3

    :cond_1e
    if-eqz v2, :cond_1f

    goto/16 :goto_14

    :cond_1f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/cno;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/cno;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$bvj;)V

    goto/16 :goto_16

    :pswitch_6
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_20

    goto :goto_b

    :cond_20
    move v3, v2

    :goto_b
    if-eqz v3, :cond_21

    goto/16 :goto_14

    :cond_21
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p4, Lsis/zta/zta/zta/irq;

    invoke-direct {p4}, Lsis/zta/zta/zta/irq;-><init>()V

    invoke-virtual {p4, p2}, Lsis/zta/zta/zta/irq;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p4}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/irq;)I

    move-result p0

    goto/16 :goto_13

    :pswitch_7
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_22

    move v2, v3

    :cond_22
    if-eqz v2, :cond_23

    goto/16 :goto_14

    :cond_23
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/ssp;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/ssp;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$kth;)V

    goto/16 :goto_16

    :pswitch_8
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_24

    move v2, v3

    :cond_24
    if-eqz v2, :cond_25

    goto/16 :goto_14

    :cond_25
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/rtg;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/rtg;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$igw;)V

    goto/16 :goto_16

    :pswitch_9
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_26

    goto :goto_c

    :cond_26
    move v3, v2

    :goto_c
    if-eqz v3, :cond_27

    goto/16 :goto_14

    :cond_27
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v9, Lsis/zta/zta/zta/ear;

    invoke-direct {v9}, Lsis/zta/zta/zta/ear;-><init>()V

    invoke-virtual {v9, p2}, Lsis/zta/zta/zta/ear;->readFromParcel(Landroid/os/HwParcel;)V

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->zta(JIILsis/zta/zta/zta/ear;)I

    move-result p0

    goto/16 :goto_13

    :pswitch_a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_28

    move v2, v3

    :cond_28
    if-eqz v2, :cond_29

    goto/16 :goto_14

    :cond_29
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/tsu;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/tsu;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$wtn;)V

    goto/16 :goto_16

    :pswitch_b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2a

    move v2, v3

    :cond_2a
    if-eqz v2, :cond_2b

    goto/16 :goto_14

    :cond_2b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/sis;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/sis;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$oif;)V

    goto/16 :goto_16

    :pswitch_c
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2c

    goto :goto_d

    :cond_2c
    move v3, v2

    :goto_d
    if-eqz v3, :cond_2d

    goto/16 :goto_14

    :cond_2d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p4, Lsis/zta/zta/zta/les;

    invoke-direct {p4}, Lsis/zta/zta/zta/les;-><init>()V

    invoke-virtual {p4, p2}, Lsis/zta/zta/zta/les;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p4}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/les;)I

    move-result p0

    goto/16 :goto_13

    :pswitch_d
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_2e

    move v2, v3

    :cond_2e
    if-eqz v2, :cond_2f

    goto/16 :goto_14

    :cond_2f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/you;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/you;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$tsu;)V

    goto/16 :goto_16

    :pswitch_e
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_30

    goto :goto_e

    :cond_30
    move v3, v2

    :goto_e
    if-eqz v3, :cond_31

    goto/16 :goto_14

    :cond_31
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->sis(JIII)I

    move-result p0

    goto/16 :goto_13

    :pswitch_f
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_32

    move v2, v3

    :cond_32
    if-eqz v2, :cond_33

    goto/16 :goto_14

    :cond_33
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/ibl;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/ibl;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$rtg;)V

    goto/16 :goto_16

    :pswitch_10
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_34

    goto :goto_f

    :cond_34
    move v3, v2

    :goto_f
    if-eqz v3, :cond_35

    goto/16 :goto_14

    :cond_35
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->you(JIII)I

    move-result p0

    goto/16 :goto_13

    :pswitch_11
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_36

    move v2, v3

    :cond_36
    if-eqz v2, :cond_37

    goto/16 :goto_14

    :cond_37
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    new-instance v10, Lsis/zta/zta/you/bvj;

    invoke-direct {v10, p0, p3}, Lsis/zta/zta/you/bvj;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    move-object v3, p0

    invoke-interface/range {v3 .. v10}, Lsis/zta/zta/zta/cno;->zta(JILjava/lang/String;IILsis/zta/zta/zta/cno$gwm;)V

    goto/16 :goto_16

    :pswitch_12
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_38

    goto :goto_10

    :cond_38
    move v3, v2

    :goto_10
    if-eqz v3, :cond_39

    goto/16 :goto_14

    :cond_39
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->zta(JIII)I

    move-result p0

    goto/16 :goto_13

    :pswitch_13
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3a

    move v2, v3

    :cond_3a
    if-eqz v2, :cond_3b

    goto/16 :goto_14

    :cond_3b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/oif;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/oif;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$ssp;)V

    goto/16 :goto_16

    :pswitch_14
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3c

    goto :goto_11

    :cond_3c
    move v3, v2

    :goto_11
    if-eqz v3, :cond_3d

    goto/16 :goto_14

    :cond_3d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v9

    move-object v4, p0

    invoke-interface/range {v4 .. v9}, Lsis/zta/zta/zta/cno;->tsu(JIII)I

    move-result p0

    goto/16 :goto_13

    :pswitch_15
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3e

    move v2, v3

    :cond_3e
    if-eqz v2, :cond_3f

    goto/16 :goto_14

    :cond_3f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/qbh;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/qbh;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$sis;)V

    goto/16 :goto_16

    :pswitch_16
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_40

    move v2, v3

    :cond_40
    if-eqz v2, :cond_41

    goto/16 :goto_14

    :cond_41
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v8

    new-instance v9, Lsis/zta/zta/you/ywr;

    invoke-direct {v9, p0, p3}, Lsis/zta/zta/you/ywr;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    move-object v3, p0

    invoke-interface/range {v3 .. v9}, Lsis/zta/zta/zta/cno;->zta(JIIILsis/zta/zta/zta/cno$gck;)V

    goto/16 :goto_16

    :pswitch_17
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_42

    move v2, v3

    :cond_42
    if-eqz v2, :cond_43

    goto/16 :goto_14

    :cond_43
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    new-instance v8, Lsis/zta/zta/you/dma;

    invoke-direct {v8, p0, p3}, Lsis/zta/zta/you/dma;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lsis/zta/zta/zta/cno;->zta(JIILsis/zta/zta/zta/cno$ywr;)V

    goto/16 :goto_16

    :pswitch_18
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_44

    move v2, v3

    :cond_44
    if-eqz v2, :cond_45

    goto :goto_14

    :cond_45
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/gck;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/gck;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, v0, v1, p1, p2}, Lsis/zta/zta/zta/cno;->zta(JILsis/zta/zta/zta/cno$cno;)V

    goto :goto_16

    :pswitch_19
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_46

    move v2, v3

    :cond_46
    if-eqz v2, :cond_47

    goto :goto_14

    :cond_47
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide p1

    new-instance p4, Lsis/zta/zta/you/wtn;

    invoke-direct {p4, p0, p3}, Lsis/zta/zta/you/wtn;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2, p4}, Lsis/zta/zta/zta/cno;->zta(JLsis/zta/zta/zta/cno$dma;)V

    goto :goto_16

    :pswitch_1a
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_48

    goto :goto_12

    :cond_48
    move v3, v2

    :goto_12
    if-eqz v3, :cond_49

    goto :goto_14

    :cond_49
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    invoke-interface {p0, v0, v1, p1}, Lsis/zta/zta/zta/cno;->zta(JI)I

    move-result p0

    :goto_13
    invoke-virtual {p3, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, p0}, Landroid/os/HwParcel;->writeInt32(I)V

    goto :goto_15

    :pswitch_1b
    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_4a

    move v2, v3

    :cond_4a
    if-eqz v2, :cond_4b

    :goto_14
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    :goto_15
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_16

    :cond_4b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result p1

    new-instance p2, Lsis/zta/zta/you/igw;

    invoke-direct {p2, p0, p3}, Lsis/zta/zta/you/igw;-><init>(Lsis/zta/zta/you/zta$you;Landroid/os/HwParcel;)V

    invoke-interface {p0, p1, p2}, Lsis/zta/zta/zta/cno;->zta(ILsis/zta/zta/zta/cno$ibl;)V

    :cond_4c
    :goto_16
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_9
        0xf444247 -> :sswitch_8
        0xf445343 -> :sswitch_7
        0xf485348 -> :sswitch_6
        0xf494e54 -> :sswitch_5
        0xf4c5444 -> :sswitch_4
        0xf504e47 -> :sswitch_3
        0xf524546 -> :sswitch_2
        0xf535953 -> :sswitch_1
        0xf555444 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    const-string v0, "vendor.display.color@1.1::IDisplayColor"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lsis/zta/zta/you/zta$you;->interfaceDescriptor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@Stub"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
