.class public Lcom/oneplus/volume/OpOutputChooserLayout$Item;
.super Ljava/lang/Object;
.source "OpOutputChooserLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# static fields
.field public static DEVICE_TYPE_BT:I = 0x3

.field public static DEVICE_TYPE_HEADSET:I = 0x2

.field public static DEVICE_TYPE_MEDIA_ROUTER:I = 0x4

.field public static DEVICE_TYPE_PHONE:I = 0x1


# instance fields
.field public canDisconnect:Z

.field public deviceType:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public icon2:I

.field public iconResId:I

.field public line1:Ljava/lang/CharSequence;

.field public line2:Ljava/lang/CharSequence;

.field public selected:Z

.field public tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->icon2:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/volume/OpOutputChooserLayout$Item;->deviceType:I

    return-void
.end method
