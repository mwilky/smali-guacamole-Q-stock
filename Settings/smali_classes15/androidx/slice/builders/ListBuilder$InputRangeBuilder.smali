.class public Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilder"
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mContentDescription:Ljava/lang/CharSequence;

.field private mInputAction:Landroid/app/PendingIntent;

.field private mLayoutDirection:I

.field private mMax:I

.field private mMin:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mThumb:Landroidx/core/graphics/drawable/IconCompat;

.field private mTitle:Ljava/lang/CharSequence;

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    const/16 v1, 0x64

    iput v1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public getAction()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getInputAction()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return v0
.end method

.method public getMax()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return v0
.end method

.method public getMin()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getThumb()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getValue()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return v0
.end method

.method public isValueSet()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    return v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mContentDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setInputAction(Landroidx/remotecallback/RemoteCallback;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .param p1    # Landroidx/remotecallback/RemoteCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, Landroidx/remotecallback/RemoteCallback;->toPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mInputAction:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mLayoutDirection:I

    return-object p0
.end method

.method public setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMax:I

    return-object p0
.end method

.method public setMin(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mMin:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setThumb(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Landroidx/core/graphics/drawable/IconCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mThumb:Landroidx/core/graphics/drawable/IconCompat;

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValueSet:Z

    iput p1, p0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->mValue:I

    return-object p0
.end method
