.class public abstract Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;
.super Landroid/os/Binder;
.source "IOPFacelockCallback.java"

# interfaces
.implements Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.oneplus.faceunlock.internal.IOPFacelockCallback"

.field static final TRANSACTION_onBeginRecognize:I = 0x1

.field static final TRANSACTION_onCompared:I = 0x2

.field static final TRANSACTION_onEndRecognize:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.oneplus.faceunlock.internal.IOPFacelockCallback"

    invoke-virtual {p0, p0, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.oneplus.faceunlock.internal.IOPFacelockCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    return-object v1

    :cond_1
    new-instance v1, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    .locals 1

    sget-object v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub$Proxy;->sDefaultImpl:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    const-string v9, "com.oneplus.faceunlock.internal.IOPFacelockCallback"

    const/4 v10, 0x1

    if-eq v7, v10, :cond_3

    const/4 v0, 0x2

    if-eq v7, v0, :cond_2

    const/4 v0, 0x3

    if-eq v7, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq v7, v0, :cond_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :cond_0
    move-object/from16 v11, p3

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;->onEndRecognize(III)V

    return v10

    :cond_2
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;->onCompared(IIIII)V

    return v10

    :cond_3
    move-object/from16 v11, p3

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback$Stub;->onBeginRecognize(I)V

    return v10
.end method
