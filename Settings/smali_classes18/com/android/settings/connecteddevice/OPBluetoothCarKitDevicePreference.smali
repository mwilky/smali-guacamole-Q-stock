.class public Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;
.super Lcom/oneplus/settings/ui/OPCarKitButtonPreference;
.source "OPBluetoothCarKitDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mContext:Landroid/content/Context;

.field mResources:Landroid/content/res/Resources;

.field private final mShowDevicesWithoutNames:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->contentDescription:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mResources:Landroid/content/res/Resources;

    nop

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-boolean p3, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mShowDevicesWithoutNames:Z

    sget v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->sDimAlpha:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->sDimAlpha:I

    :cond_0
    iput-object p2, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->onDeviceAttributesChanged()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object v1, p1

    check-cast v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;

    iget-object v1, v1, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v0, 0x7f08053e

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setIcon(I)V

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f120f21

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonString(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonEnable(Z)V

    new-instance v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$1;-><init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mContext:Landroid/content/Context;

    const v2, 0x7f120bfc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonString(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setButtonEnable(Z)V

    new-instance v0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference$2;-><init>(Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/OPCarKitButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setLeftTextTitle(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->contentDescription:Ljava/lang/String;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mShowDevicesWithoutNames:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->setVisible(Z)V

    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->notifyHierarchyChanged()V

    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mButtonEnable:Z

    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mButtonString:Ljava/lang/String;

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/connecteddevice/OPBluetoothCarKitDevicePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method
