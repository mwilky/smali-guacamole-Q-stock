.class Lcom/oneplus/android/server/display/gwm;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static Aea:[I = null

.field private static Bea:[I = null

.field private static Cea:[I = null

.field private static final DEBUG:Z = true

.field private static Dea:I = 0x0

.field private static Eea:I = 0x0

.field private static Fea:Landroid/graphics/ColorSpace$Rgb; = null

.field private static Gea:[I = null

.field private static Hea:[I = null

.field private static final ILLUMINANT_D65:[F

.field private static final Oda:[F

.field private static final Pda:[F

.field private static Qda:[F = null

.field private static Rda:Landroid/util/Spline; = null

.field private static Sda:Landroid/util/Spline; = null

.field private static final TAG:Ljava/lang/String; = "OpGamutMappingStrategy"

.field private static Tda:Landroid/util/Spline;

.field private static Uda:Landroid/util/Spline;

.field private static Vda:Landroid/util/Spline;

.field private static Wda:Landroid/util/Spline;

.field private static Xda:Landroid/util/Spline;

.field private static Yda:Landroid/util/Spline;

.field private static Zda:Landroid/util/Spline;

.field private static _da:Landroid/util/Spline;

.field private static aea:Landroid/util/Spline;

.field private static bea:Landroid/util/Spline;

.field private static cea:Landroid/util/Spline;

.field private static dea:Landroid/util/Spline;

.field private static eea:Landroid/util/Spline;

.field private static fea:Landroid/util/Spline;

.field private static gea:Landroid/util/Spline;

.field private static hea:Landroid/util/Spline;

.field private static iea:Landroid/util/Spline;

.field private static jea:Landroid/util/Spline;

.field private static kea:Landroid/util/Spline;

.field private static lea:Landroid/util/Spline;

.field private static mea:Landroid/util/Spline;

.field private static nea:Landroid/util/Spline;

.field private static oea:Landroid/util/Spline;

.field private static pea:Landroid/util/Spline;

.field private static qea:Landroid/util/Spline;

.field private static rea:Landroid/util/Spline;

.field private static sea:Landroid/util/Spline;

.field private static tea:Landroid/util/Spline;

.field private static uea:Landroid/util/Spline;

.field private static vea:Landroid/util/Spline;

.field private static wea:Landroid/util/Spline;

.field private static xea:Landroid/util/Spline;

.field private static yea:Landroid/util/Spline;

.field private static zea:Landroid/util/Spline;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->ILLUMINANT_D65:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Oda:[F

    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Pda:[F

    return-void

    :array_0
    .array-data 4
        0x3ea01a37    # 0.3127f
        0x3ea872b0    # 0.329f
    .end array-data

    :array_1
    .array-data 4
        0x3e981062    # 0.297f
        0x3e9cac08    # 0.306f
    .end array-data

    :array_2
    .array-data 4
        0x3f2e978d    # 0.682f
        0x3ea2d0e5    # 0.318f
        0x3e77ced9    # 0.242f
        0x3f360419    # 0.711f
        0x3e0e5604    # 0.139f
        0x3d3851ec    # 0.045f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/oneplus/android/server/display/gwm;
    .locals 38

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xdd

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Gea:[I

    const v1, 0x1070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Hea:[I

    const v1, 0x10e005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/gwm;->Dea:I

    const v1, 0x10e005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/oneplus/android/server/display/gwm;->Eea:I

    const v1, 0x107004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->Aea:[I

    const v1, 0x107001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x107001b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    const v3, 0x1070089

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v3

    const v4, 0x107008a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v4

    const v5, 0x107008b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v5

    const v6, 0x1070083

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    const v7, 0x1070084

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v7

    const v8, 0x1070085

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v8

    invoke-static {v8}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v8

    const v9, 0x107007d

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v9

    invoke-static {v9}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v9

    const v10, 0x107007e

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v10

    const v11, 0x107007f

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v11

    invoke-static {v11}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v11

    const v12, 0x1070080

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v12

    const v13, 0x1070081

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-static {v13}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v13

    const v14, 0x1070082

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v14

    invoke-static {v14}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v14

    const v15, 0x1070086

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v15

    invoke-static {v15}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v15

    move-object/from16 p0, v2

    const v2, 0x1070087

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v16, v2

    const v2, 0x1070088

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v17, v2

    const v2, 0x107008d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v18, v2

    const v2, 0x107008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v19, v2

    const v2, 0x107008f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v20, v2

    const v2, 0x1070044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v21, v2

    const v2, 0x1070045

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v22, v2

    const v2, 0x1070046

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v23, v2

    const v2, 0x107003e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v24, v2

    const v2, 0x107003f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v25, v2

    const v2, 0x1070040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v26, v2

    const v2, 0x1070038

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v27, v2

    const v2, 0x1070039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v28, v2

    const v2, 0x107003a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v29, v2

    const v2, 0x107003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v30, v2

    const v2, 0x107003c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v31, v2

    const v2, 0x107003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v32, v2

    const v2, 0x1070041

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v33, v2

    const v2, 0x1070042

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v34, v2

    const v2, 0x1070043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v35, v2

    const v2, 0x1070048

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v36, v2

    const v2, 0x1070049

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v2

    move-object/from16 v37, v2

    const v2, 0x107004a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/server/display/gwm;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v0

    invoke-static {v1, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Rda:Landroid/util/Spline;

    invoke-static {v1, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Sda:Landroid/util/Spline;

    invoke-static {v1, v5}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Tda:Landroid/util/Spline;

    invoke-static {v1, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Uda:Landroid/util/Spline;

    invoke-static {v1, v7}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Vda:Landroid/util/Spline;

    invoke-static {v1, v8}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Wda:Landroid/util/Spline;

    invoke-static {v1, v9}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Xda:Landroid/util/Spline;

    invoke-static {v1, v10}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Yda:Landroid/util/Spline;

    invoke-static {v1, v11}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->Zda:Landroid/util/Spline;

    invoke-static {v1, v12}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->_da:Landroid/util/Spline;

    invoke-static {v1, v13}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->aea:Landroid/util/Spline;

    invoke-static {v1, v14}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->bea:Landroid/util/Spline;

    invoke-static {v1, v15}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->cea:Landroid/util/Spline;

    move-object/from16 v2, v16

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->dea:Landroid/util/Spline;

    move-object/from16 v2, v17

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->eea:Landroid/util/Spline;

    move-object/from16 v2, v18

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->fea:Landroid/util/Spline;

    move-object/from16 v2, v19

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->gea:Landroid/util/Spline;

    move-object/from16 v2, v20

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    sput-object v1, Lcom/oneplus/android/server/display/gwm;->hea:Landroid/util/Spline;

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->iea:Landroid/util/Spline;

    move-object/from16 v2, v22

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->jea:Landroid/util/Spline;

    move-object/from16 v2, v23

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->kea:Landroid/util/Spline;

    move-object/from16 v2, v24

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->lea:Landroid/util/Spline;

    move-object/from16 v2, v25

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->mea:Landroid/util/Spline;

    move-object/from16 v2, v26

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->nea:Landroid/util/Spline;

    move-object/from16 v2, v27

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->oea:Landroid/util/Spline;

    move-object/from16 v2, v28

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->pea:Landroid/util/Spline;

    move-object/from16 v2, v29

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->qea:Landroid/util/Spline;

    move-object/from16 v2, v30

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->rea:Landroid/util/Spline;

    move-object/from16 v2, v31

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->sea:Landroid/util/Spline;

    move-object/from16 v2, v32

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->tea:Landroid/util/Spline;

    move-object/from16 v2, v33

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->uea:Landroid/util/Spline;

    move-object/from16 v2, v34

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->vea:Landroid/util/Spline;

    move-object/from16 v2, v35

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->wea:Landroid/util/Spline;

    move-object/from16 v2, v36

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->xea:Landroid/util/Spline;

    move-object/from16 v2, v37

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v2

    sput-object v2, Lcom/oneplus/android/server/display/gwm;->yea:Landroid/util/Spline;

    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->zea:Landroid/util/Spline;

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Pda:[F

    sget-object v4, Lcom/oneplus/android/server/display/gwm;->Oda:[F

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string v2, "Display Color Space"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FD)V

    sput-object v0, Lcom/oneplus/android/server/display/gwm;->Fea:Landroid/graphics/ColorSpace$Rgb;

    new-instance v0, Lcom/oneplus/android/server/display/gwm;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/gwm;-><init>()V

    return-object v0
.end method

.method private static getFloatArray(Landroid/content/res/TypedArray;)[F
    .locals 4

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {p0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method private static getLuxLevels([I)[F
    .locals 3

    array-length v0, p0

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget v2, p0, v1

    int-to-float v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isValidMapping([F[F)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    array-length v1, p0

    if-eqz v1, :cond_7

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_1

    return v0

    :cond_1
    array-length v1, p0

    aget v2, p0, v0

    aget v3, p1, v0

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_7

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_7

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    move v5, v3

    move v3, v2

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_6

    aget v6, p0, v2

    cmpl-float v3, v3, v6

    if-gez v3, :cond_5

    aget v3, p1, v2

    cmpl-float v3, v5, v3

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_5

    aget v3, p1, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    aget v3, p0, v2

    aget v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    return v4

    :cond_7
    :goto_2
    return v0
.end method


# virtual methods
.method public U(I)[[I
    .locals 5

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    const-class v0, I

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Rda:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Sda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Tda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Uda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Vda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Wda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object v1, p0, v4

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->Xda:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Yda:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->Zda:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v4

    return-object p0
.end method

.method public V(I)[[I
    .locals 6

    const/4 p0, 0x3

    const/4 v0, 0x6

    filled-new-array {v0, p0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Rda:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Sda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Tda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Uda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Vda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Wda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Xda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Yda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Zda:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->_da:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->aea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->bea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x4

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->cea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->dea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->eea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->fea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v1, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->gea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object p0, v0, p0

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->hea:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p0, v5

    return-object v0
.end method

.method public W(I)[[I
    .locals 5

    const/4 p0, 0x3

    filled-new-array {p0, p0}, [I

    move-result-object p0

    const-class v0, I

    invoke-static {v0, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    const/4 v0, 0x0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->iea:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->jea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aput v2, v1, v3

    aget-object v1, p0, v0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->kea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    const/4 v4, 0x2

    aput v2, v1, v4

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->lea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->mea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v3

    aget-object v1, p0, v3

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->nea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object v1, p0, v4

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->oea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v0

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->pea:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    aget-object v0, p0, v4

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->qea:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, v0, v4

    return-object p0
.end method

.method public X(I)[[I
    .locals 6

    const/4 p0, 0x3

    const/4 v0, 0x6

    filled-new-array {v0, p0}, [I

    move-result-object v0

    const-class v1, I

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->iea:Landroid/util/Spline;

    int-to-float p1, p1

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->jea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    aget-object v2, v0, v1

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->kea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    const/4 v5, 0x2

    aput v3, v2, v5

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->lea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->mea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v4

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->nea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->oea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->pea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object v2, v0, v5

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->qea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->rea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->sea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->tea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x4

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->uea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->vea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v4

    aget-object p0, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->wea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p0, v5

    const/4 p0, 0x5

    aget-object v2, v0, p0

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->xea:Landroid/util/Spline;

    invoke-virtual {v3, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    aget-object v1, v0, p0

    sget-object v2, Lcom/oneplus/android/server/display/gwm;->yea:Landroid/util/Spline;

    invoke-virtual {v2, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    aget-object p0, v0, p0

    sget-object v1, Lcom/oneplus/android/server/display/gwm;->zea:Landroid/util/Spline;

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p1

    float-to-int p1, p1

    aput p1, p0, v5

    return-object v0
.end method

.method public _e()[I
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/display/gwm;->Hea:[I

    return-object p0
.end method

.method public af()I
    .locals 0

    sget p0, Lcom/oneplus/android/server/display/gwm;->Eea:I

    return p0
.end method

.method public bf()I
    .locals 0

    sget p0, Lcom/oneplus/android/server/display/gwm;->Dea:I

    return p0
.end method

.method public cf()[[I
    .locals 10

    const/4 p0, 0x6

    new-array v0, p0, [[I

    const/4 v1, 0x3

    new-array v2, v1, [I

    sget-object v3, Lcom/oneplus/android/server/display/gwm;->Aea:[I

    const/4 v4, 0x0

    aget v5, v3, v4

    aput v5, v2, v4

    const/4 v5, 0x1

    aget v6, v3, v5

    aput v6, v2, v5

    const/4 v6, 0x2

    aget v7, v3, v6

    aput v7, v2, v6

    aput-object v2, v0, v4

    new-array v2, v1, [I

    aget v7, v3, v1

    aput v7, v2, v4

    const/4 v7, 0x4

    aget v8, v3, v7

    aput v8, v2, v5

    const/4 v8, 0x5

    aget v9, v3, v8

    aput v9, v2, v6

    aput-object v2, v0, v5

    new-array v2, v1, [I

    aget p0, v3, p0

    aput p0, v2, v4

    const/4 p0, 0x7

    aget p0, v3, p0

    aput p0, v2, v5

    const/16 p0, 0x8

    aget p0, v3, p0

    aput p0, v2, v6

    aput-object v2, v0, v6

    new-array p0, v1, [I

    const/16 v2, 0x9

    aget v2, v3, v2

    aput v2, p0, v4

    const/16 v2, 0xa

    aget v2, v3, v2

    aput v2, p0, v5

    const/16 v2, 0xb

    aget v2, v3, v2

    aput v2, p0, v6

    aput-object p0, v0, v1

    new-array p0, v1, [I

    const/16 v2, 0xc

    aget v2, v3, v2

    aput v2, p0, v4

    const/16 v2, 0xd

    aget v2, v3, v2

    aput v2, p0, v5

    const/16 v2, 0xe

    aget v2, v3, v2

    aput v2, p0, v6

    aput-object p0, v0, v7

    new-array p0, v1, [I

    const/16 v1, 0xf

    aget v1, v3, v1

    aput v1, p0, v4

    const/16 v1, 0x10

    aget v1, v3, v1

    aput v1, p0, v5

    const/16 v1, 0x11

    aget v1, v3, v1

    aput v1, p0, v6

    aput-object p0, v0, v8

    return-object v0
.end method

.method public df()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method

.method public ef()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xff
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method

.method public ff()[I
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/display/gwm;->Gea:[I

    return-object p0
.end method

.method public gf()[[I
    .locals 3

    const/4 p0, 0x6

    new-array p0, p0, [[I

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    const/4 v2, 0x1

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    const/4 v2, 0x2

    aput-object v1, p0, v2

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    aput-object v1, p0, v0

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    const/4 v2, 0x4

    aput-object v1, p0, v2

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    const/4 v1, 0x5

    aput-object v0, p0, v1

    return-object p0

    :array_0
    .array-data 4
        0xea
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xff
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0xff
    .end array-data

    :array_3
    .array-data 4
        0x0
        0xff
        0xff
    .end array-data

    :array_4
    .array-data 4
        0xff
        0x0
        0xff
    .end array-data

    :array_5
    .array-data 4
        0xff
        0xff
        0x0
    .end array-data
.end method
