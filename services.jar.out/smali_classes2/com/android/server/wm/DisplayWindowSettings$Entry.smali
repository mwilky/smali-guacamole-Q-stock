.class Lcom/android/server/wm/DisplayWindowSettings$Entry;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayWindowSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field private mFixedToUserRotation:I

.field private mForcedDensity:I

.field private mForcedHeight:I

.field private mForcedScalingMode:I

.field private mForcedWidth:I

.field private final mName:Ljava/lang/String;

.field private mOverscanBottom:I

.field private mOverscanLeft:I

.field private mOverscanRight:I

.field private mOverscanTop:I

.field private mRemoveContentMode:I

.field private mShouldShowIme:Z

.field private mShouldShowSystemDecors:Z

.field private mShouldShowWithInsecureKeyguard:Z

.field private mUserRotation:I

.field private mUserRotationMode:I

.field private mWindowingMode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;)V

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    iget-boolean v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    iput v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;Lcom/android/server/wm/DisplayWindowSettings$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowSettings$Entry;-><init>(Ljava/lang/String;Lcom/android/server/wm/DisplayWindowSettings$Entry;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/wm/DisplayWindowSettings$Entry;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayWindowSettings$Entry;->isEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayWindowSettings$Entry;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/wm/DisplayWindowSettings$Entry;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/wm/DisplayWindowSettings$Entry;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    return p1
.end method

.method private isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanLeft:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanTop:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanRight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mOverscanBottom:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mWindowingMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotationMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mUserRotation:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedHeight:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedDensity:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mForcedScalingMode:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mRemoveContentMode:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowWithInsecureKeyguard:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowSystemDecors:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mShouldShowIme:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayWindowSettings$Entry;->mFixedToUserRotation:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
