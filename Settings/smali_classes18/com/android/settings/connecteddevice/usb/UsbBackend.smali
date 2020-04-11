.class public Lcom/android/settings/connecteddevice/usb/UsbBackend;
.super Ljava/lang/Object;
.source "UsbBackend.java"


# static fields
.field static final NONPD_ROLE_SWAP_TIMEOUT_MS:I = 0x3a98

.field static final PD_ROLE_SWAP_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mFileTransferRestricted:Z

.field private final mFileTransferRestrictedBySystem:Z

.field private final mMidiSupported:Z

.field private mPort:Landroid/hardware/usb/UsbPort;

.field private mPortStatus:Landroid/hardware/usb/UsbPortStatus;

.field private final mTetheringRestricted:Z

.field private final mTetheringRestrictedBySystem:Z

.field private final mTetheringSupported:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;-><init>(Landroid/content/Context;Landroid/os/UserManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/usb/UsbManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestricted(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    invoke-static {p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    nop

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    return-void
.end method

.method private areFunctionDisallowed(J)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestricted:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestricted:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x20

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private areFunctionsDisallowedBySystem(J)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mFileTransferRestrictedBySystem:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    const-wide/16 v3, 0x4

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    const-wide/16 v3, 0x10

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringRestrictedBySystem:Z

    if-eqz v0, :cond_2

    const-wide/16 v3, 0x20

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static dataRoleFromString(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static dataRoleToString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isUsbFileTransferRestricted(Landroid/os/UserManager;)Z
    .locals 1

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsbFileTransferRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_usb_file_transfer"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private static isUsbTetheringRestricted(Landroid/os/UserManager;)Z
    .locals 1

    const-string v0, "no_config_tethering"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isUsbTetheringRestrictedBySystem(Landroid/os/UserManager;)Z
    .locals 2

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const-string v1, "no_config_tethering"

    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private updatePorts()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getPorts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbPort;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPort;->getStatus()Landroid/hardware/usb/UsbPortStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/usb/UsbPort;

    iput-object v4, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    iput-object v3, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public static usbFunctionsFromString(Ljava/lang/String;)J
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static usbFunctionsToString(J)Ljava/lang/String;
    .locals 1

    invoke-static {p0, p1}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public areAllRolesSupported()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v2, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    invoke-virtual {v0, v1, v1}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public areFunctionsSupported(J)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mMidiSupported:Z

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x8

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mTetheringSupported:Z

    if-nez v0, :cond_2

    const-wide/16 v4, 0x20

    and-long/2addr v4, p1

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionDisallowed(J)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areFunctionsDisallowedBySystem(J)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public getCurrentFunctions()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataRole()I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getDefaultUsbFunctions()J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPowerRole()I
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->updatePorts()V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPortStatus:Landroid/hardware/usb/UsbPortStatus;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v0

    :goto_0
    return v0
.end method

.method public setCurrentFunctions(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public setDataRole(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getPowerRole()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, p1}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_3
    return-void
.end method

.method public setDefaultUsbFunctions(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/usb/UsbManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setPowerRole(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->getDataRole()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/usb/UsbBackend;->areAllRolesSupported()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbBackend;->mPort:Landroid/hardware/usb/UsbPort;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1, v0}, Landroid/hardware/usb/UsbPort;->setRoles(II)V

    :cond_3
    return-void
.end method
