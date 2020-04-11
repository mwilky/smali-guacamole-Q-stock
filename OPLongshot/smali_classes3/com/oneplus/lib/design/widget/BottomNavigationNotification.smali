.class public Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
.super Ljava/lang/Object;
.source "BottomNavigationNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationNotification$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationNotification;",
            ">;"
        }
    .end annotation
.end field

.field private static final FALSE_INT:I = 0x1

.field private static final TRUE_INT:I


# instance fields
.field private mBackgroundColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private mIndeterminate:Z

.field private mNumber:I

.field private mTextColor:I
    .annotation build Lcom/oneplus/support/annotation/ColorInt;
    .end annotation
.end field

.field private udbc:I

.field private udtc:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;-><init>()V

    sput-object v0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/design/widget/BottomNavigationNotification$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    return p1
.end method

.method static synthetic access$202(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    return p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return p1
.end method

.method static synthetic access$502(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    return p1
.end method

.method static synthetic access$602(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    return v0
.end method

.method isUseDefaultBackgroundColor()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUseDefaultTextColor()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udtc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->udbc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->mIndeterminate:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
