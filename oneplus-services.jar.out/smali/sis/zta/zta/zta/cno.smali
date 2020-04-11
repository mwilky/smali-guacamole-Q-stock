.class public interface abstract Lsis/zta/zta/zta/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lzta/zta/zta/zta/you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsis/zta/zta/zta/cno$you;,
        Lsis/zta/zta/zta/cno$zta;,
        Lsis/zta/zta/zta/cno$qbh;,
        Lsis/zta/zta/zta/cno$bio;,
        Lsis/zta/zta/zta/cno$bvj;,
        Lsis/zta/zta/zta/cno$kth;,
        Lsis/zta/zta/zta/cno$igw;,
        Lsis/zta/zta/zta/cno$wtn;,
        Lsis/zta/zta/zta/cno$oif;,
        Lsis/zta/zta/zta/cno$tsu;,
        Lsis/zta/zta/zta/cno$rtg;,
        Lsis/zta/zta/zta/cno$gwm;,
        Lsis/zta/zta/zta/cno$ssp;,
        Lsis/zta/zta/zta/cno$sis;,
        Lsis/zta/zta/zta/cno$gck;,
        Lsis/zta/zta/zta/cno$ywr;,
        Lsis/zta/zta/zta/cno$cno;,
        Lsis/zta/zta/zta/cno$dma;,
        Lsis/zta/zta/zta/cno$ibl;
    }
.end annotation


# static fields
.field public static final kInterfaceName:Ljava/lang/String; = "vendor.display.color@1.0::IDisplayColor"


# direct methods
.method public static asInterface(Landroid/os/IHwBinder;)Lsis/zta/zta/zta/cno;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "vendor.display.color@1.0::IDisplayColor"

    invoke-interface {p0, v1}, Landroid/os/IHwBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;

    move-result-object v2

    if-eqz v2, :cond_1

    instance-of v3, v2, Lsis/zta/zta/zta/cno;

    if-eqz v3, :cond_1

    check-cast v2, Lsis/zta/zta/zta/cno;

    return-object v2

    :cond_1
    new-instance v2, Lsis/zta/zta/zta/cno$zta;

    invoke-direct {v2, p0}, Lsis/zta/zta/zta/cno$zta;-><init>(Landroid/os/IHwBinder;)V

    :try_start_0
    invoke-interface {v2}, Lsis/zta/zta/zta/cno;->interfaceChain()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    return-object v2

    :catch_0
    :cond_3
    return-object v0
.end method

.method public static castFrom(Landroid/os/IHwInterface;)Lsis/zta/zta/zta/cno;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Landroid/os/IHwInterface;->asBinder()Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lsis/zta/zta/zta/cno;->asInterface(Landroid/os/IHwBinder;)Lsis/zta/zta/zta/cno;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getService()Lsis/zta/zta/zta/cno;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0}, Lsis/zta/zta/zta/cno;->getService(Ljava/lang/String;)Lsis/zta/zta/zta/cno;

    move-result-object v0

    return-object v0
.end method

.method public static getService(Ljava/lang/String;)Lsis/zta/zta/zta/cno;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.display.color@1.0::IDisplayColor"

    invoke-static {v0, p0}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lsis/zta/zta/zta/cno;->asInterface(Landroid/os/IHwBinder;)Lsis/zta/zta/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Ljava/lang/String;Z)Lsis/zta/zta/zta/cno;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "vendor.display.color@1.0::IDisplayColor"

    invoke-static {v0, p0, p1}, Landroid/os/HwBinder;->getService(Ljava/lang/String;Ljava/lang/String;Z)Landroid/os/IHwBinder;

    move-result-object p0

    invoke-static {p0}, Lsis/zta/zta/zta/cno;->asInterface(Landroid/os/IHwBinder;)Lsis/zta/zta/zta/cno;

    move-result-object p0

    return-object p0
.end method

.method public static getService(Z)Lsis/zta/zta/zta/cno;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "default"

    invoke-static {v0, p0}, Lsis/zta/zta/zta/cno;->getService(Ljava/lang/String;Z)Lsis/zta/zta/zta/cno;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDebugInfo()Lzta/zta/zta/zta/zta;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getHashChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceChain()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract interfaceDescriptor()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifySyspropsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ping()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setHALInstrumentation()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sis(JIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract tsu(JIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract you(JIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIIILsis/zta/zta/zta/cgv;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIILsis/zta/zta/zta/bud;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIILsis/zta/zta/zta/ear;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/irq;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/les;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(ILsis/zta/zta/zta/cno$ibl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIIILsis/zta/zta/zta/cno$gck;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIILsis/zta/zta/zta/cno$bio;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JIILsis/zta/zta/zta/cno$ywr;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILjava/lang/String;IILsis/zta/zta/zta/cno$gwm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$bvj;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$cno;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$igw;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$kth;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$oif;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$qbh;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$rtg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$sis;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$ssp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$tsu;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JILsis/zta/zta/zta/cno$wtn;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zta(JLsis/zta/zta/zta/cno$dma;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
