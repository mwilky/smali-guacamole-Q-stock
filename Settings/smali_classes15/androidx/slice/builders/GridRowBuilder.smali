.class public Landroidx/slice/builders/GridRowBuilder;
.super Ljava/lang/Object;
.source "GridRowBuilder.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    }
.end annotation


# instance fields
.field private final mCells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private mDescription:Ljava/lang/CharSequence;

.field private mHasSeeMore:Z

.field private mLayoutDirection:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSeeMoreCell:Landroidx/slice/builders/GridRowBuilder$CellBuilder;

.field private mSeeMoreIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mCells:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/builders/GridRowBuilder;->mLayoutDirection:I

    return-void
.end method


# virtual methods
.method public addCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;
    .locals 1
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mCells:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getCells()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/builders/GridRowBuilder$CellBuilder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mCells:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget v0, p0, Landroidx/slice/builders/GridRowBuilder;->mLayoutDirection:I

    return v0
.end method

.method public getPrimaryAction()Landroidx/slice/builders/SliceAction;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object v0
.end method

.method public getSeeMoreCell()Landroidx/slice/builders/GridRowBuilder$CellBuilder;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mSeeMoreCell:Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    return-object v0
.end method

.method public getSeeMoreIntent()Landroid/app/PendingIntent;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mSeeMoreIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Landroidx/slice/builders/GridRowBuilder;
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/GridRowBuilder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setLayoutDirection(I)Landroidx/slice/builders/GridRowBuilder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput p1, p0, Landroidx/slice/builders/GridRowBuilder;->mLayoutDirection:I

    return-object p0
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/GridRowBuilder;
    .locals 0
    .param p1    # Landroidx/slice/builders/SliceAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Landroidx/slice/builders/GridRowBuilder;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    return-object p0
.end method

.method public setSeeMoreAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/slice/builders/GridRowBuilder;->mSeeMoreIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeeMoreAction(Landroidx/remotecallback/RemoteCallback;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroidx/remotecallback/RemoteCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/remotecallback/RemoteCallback;->toPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/builders/GridRowBuilder;->mSeeMoreIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more action when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSeeMoreCell(Landroidx/slice/builders/GridRowBuilder$CellBuilder;)Landroidx/slice/builders/GridRowBuilder;
    .locals 2
    .param p1    # Landroidx/slice/builders/GridRowBuilder$CellBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/slice/builders/GridRowBuilder;->mSeeMoreCell:Landroidx/slice/builders/GridRowBuilder$CellBuilder;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/GridRowBuilder;->mHasSeeMore:Z

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to add see more cell when one has already been added"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
