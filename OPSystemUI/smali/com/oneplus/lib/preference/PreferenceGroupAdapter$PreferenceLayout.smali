.class Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreferenceLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private resId:I

.field private widgetResId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>()V

    return-void
.end method

.method static synthetic access$202(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    return p1
.end method

.method static synthetic access$402(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    return p1
.end method


# virtual methods
.method public compareTo(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    iget v1, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->resId:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    iget p1, p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->widgetResId:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sub-int/2addr p0, p1

    return p0

    :cond_1
    sub-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->compareTo(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)I

    move-result p0

    return p0
.end method
