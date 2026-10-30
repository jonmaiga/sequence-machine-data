import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C041
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191500: E.g.f. sqrt(1+arctan(2*x)).

The programs for A191500, there is no canonical definition to state claims against.
-/

/-! ## A191500.P1702536361019145383

`A360459(A360788(n))-A361090(n)`
-/

namespace A191500.P1702536361019145383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360459 (A360788 n).toNat - A361090 n

end

end A191500.P1702536361019145383

/-! ## A191500.P9628133558914858859

`xor(A057077(n), A165032(A261005(n)))`
-/

namespace A191500.P9628133558914858859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A057077 n) (A165032 (A261005 n).toNat)

end

end A191500.P9628133558914858859

/-!
# A191501: Expansion of 2-sqrt(1-4*x-4*x^2-4*x^3).

The programs for A191501, there is no canonical definition to state claims against.
-/

/-! ## A191501.P5805900521278148314

`A061017(A147895(n+1))`
-/

namespace A191501.P5805900521278148314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A147895 (n + 1)).toNat

end

end A191501.P5805900521278148314

/-! ## A191501.P5213180359133170006

`A061017(A147903(n+1))`
-/

namespace A191501.P5213180359133170006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A147903 (n + 1)).toNat

end

end A191501.P5213180359133170006

/-! ## A191501.P7631768182776166009

`A061017(A147912(n+1))`
-/

namespace A191501.P7631768182776166009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061017 (A147912 (n + 1)).toNat

end

end A191501.P7631768182776166009

/-!
# A191506: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 1 horizontally or vertically neighboring 1.

The programs for A191506, there is no canonical definition to state claims against.
-/

/-! ## A191506.P439442752696667767

`A028242(∑{d}[A047849(n), A046691(#)])`
-/

namespace A191506.P439442752696667767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (∑ d ∈ Nat.divisors (f1 n).natAbs, A046691 d).toNat

end

end A191506.P439442752696667767

/-!
# A191508: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 3 horizontally or vertically neighboring 1's.

The programs for A191508, there is no canonical definition to state claims against.
-/

/-! ## A191508.P18194322364922843590

`A078223(n+1)*A143097(A353536(n))`
-/

namespace A191508.P18194322364922843590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078223 (n + 1) * A143097 (A353536 n).toNat

end

end A191508.P18194322364922843590

/-!
# A191510: Product of terms in n-th row of A132818.

The programs for A191510, there is no canonical definition to state claims against.
-/

/-! ## A191510.P1718266571122594608

`∏[A061718(n+1)/A006472(n+1)]`
-/

namespace A191510.P1718266571122594608
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061718 (n + 1) : ℚ) / (A006472 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191510.P1718266571122594608

/-!
# A191512: Arctan(x*cos(x)) = Sum_{n >= 0} a(n)*x^(2n+1)/(2n+1)!.

The programs for A191512, there is no canonical definition to state claims against.
-/

/-! ## A191512.P13504528338417059105

`A009305(Δ[n²])*A033999(n)`
-/

namespace A191512.P13504528338417059105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009305 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A033999 n

end

end A191512.P13504528338417059105

/-! ## A191512.P5363691643031733180

`record[A009305(n+1)]*A033999(n)`
-/

namespace A191512.P5363691643031733180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009305 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A033999 n

end

end A191512.P5363691643031733180

/-! ## A191512.P16909151998197039741

`A009305(2*n+1)/A033999(n)`
-/

namespace A191512.P16909151998197039741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009305 (2 * n + 1) : ℚ) / (A033999 n : ℚ)

end

end A191512.P16909151998197039741

/-!
# A191513: Numbers k such that k*(k-1)^k - 1 is prime.

The programs for A191513, there is no canonical definition to state claims against.
-/

/-! ## A191513.P5817710391408172590

`A047726(A228750(n+1))+2+n`
-/

namespace A191513.P5817710391408172590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047726 (A228750 (n + 1)).toNat + 2 + (n : ℤ)

end

end A191513.P5817710391408172590

/-! ## A191513.P6682744662838403958

`A344281(A020092(n))+A106291(n+1)`
-/

namespace A191513.P6682744662838403958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344281 (A020092 n).toNat + A106291 (n + 1)

end

end A191513.P6682744662838403958

/-!
# A191515: Number of vertices of outdegree >=2 in the rooted tree having Matula-Goebel number n.

The programs for A191515, there is no canonical definition to state claims against.
-/

/-! ## A191515.P3668193642207691193

`A196049(p?[xor(1, n)])`
-/

namespace A191515.P3668193642207691193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A191515.P3668193642207691193

/-! ## A191515.P1584862010379849326

`A196049(2*(n+1))`
-/

namespace A191515.P1584862010379849326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (2 * (n + 1))

end

end A191515.P1584862010379849326

/-! ## A191515.P12051528858918320272

`A196049(2+n+n)%4`
-/

namespace A191515.P12051528858918320272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196049 (2 + n + n)) 4

end

end A191515.P12051528858918320272

/-! ## A191515.P16261894909040855220

`A196049(6*p?[round(8*n/7)])-1`
-/

namespace A191515.P16261894909040855220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (6 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - 1

end

end A191515.P16261894909040855220

/-! ## A191515.P3999925609386327188

`dr(A196049(A103517(n)))`
-/

namespace A191515.P3999925609386327188
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A196049 (A103517 n).toNat)

end

end A191515.P3999925609386327188

/-! ## A191515.P14887624875851268479

`dr(A196049(Δ[A002378(n)]))`
-/

namespace A191515.P14887624875851268479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A196049 (f1 (n + 1) - f1 n).toNat)

end

end A191515.P14887624875851268479

/-! ## A191515.P185131032888366872

`dr(A196049(Δ[A007504(n)]))`
-/

namespace A191515.P185131032888366872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A196049 (f1 (n + 1) - f1 n).toNat)

end

end A191515.P185131032888366872

/-! ## A191515.P3424732505572565312

`and(3, A196049(p?[A000961(n+1)]))`
-/

namespace A191515.P3424732505572565312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A196049 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A191515.P3424732505572565312

/-! ## A191515.P10539734607593507901

`A196049(n+1)+A064911(n+1)`
-/

namespace A191515.P10539734607593507901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196049 (n + 1) + A064911 (n + 1)

end

end A191515.P10539734607593507901

/-! ## A191515.P65631344397001759

`∑{d}[p?[A018252(n+1)-7], A196049(#)]`
-/

namespace A191515.P65631344397001759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A196049 d

end

end A191515.P65631344397001759

/-!
# A191518: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of semilength n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) having k UUU's (U=(1,1)).

The programs for A191518, there is no canonical definition to state claims against.
-/

/-! ## A191518.P3761077350072172531

`A216956(A246868(n)+A027082(n))`
-/

namespace A191518.P3761077350072172531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216956 (A246868 n + A027082 n).toNat

end

end A191518.P3761077350072172531

/-! ## A191518.P16994233850216670060

`A003987(A117419(n)-A251140(n+1))`
-/

namespace A191518.P16994233850216670060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A117419 n - A251140 (n + 1)).toNat

end

end A191518.P16994233850216670060

/-! ## A191518.P13012363554141338924

`and(A028495(n), A033562(A199338(n+1)))`
-/

namespace A191518.P13012363554141338924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A028495 n) (A033562 (A199338 (n + 1)).toNat)

end

end A191518.P13012363554141338924

/-! ## A191518.P15641389053336255974

`A003987(A117419(n)-A001222(2*n+1))`
-/

namespace A191518.P15641389053336255974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003987 (A117419 n - A001222 (2 * n + 1)).toNat

end

end A191518.P15641389053336255974

/-! ## A191518.P13362366122775216826

`A028495(A330308(n+1)%A032555(n+1))`
-/

namespace A191518.P13362366122775216826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (Int.tmod (A330308 (n + 1)) (A032555 (n + 1))).toNat

end

end A191518.P13362366122775216826

/-!
# A191519: Number of dispersed Dyck paths of semilength n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) having no UUU's (U=(1,1)).

The programs for A191519, there is no canonical definition to state claims against.
-/

/-! ## A191519.P10867753744721573376

`A191518(lt[A274200(n+1), 2*A191518(n)])`
-/

namespace A191519.P10867753744721573376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191519.P10867753744721573376

/-! ## A191519.P4041416514386594

`A191518(lt[A274200(n+1)/2, A191518(n)])`
-/

namespace A191519.P4041416514386594
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274200 (n + 1) : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A191519.P4041416514386594

/-! ## A191519.P4556404845409123172

`A191518(lt[A379302(n), A191518(n)])`
-/

namespace A191519.P4556404845409123172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379302 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191519.P4556404845409123172

/-! ## A191519.P12799495327221615571

`A191518(lt[A274200(n+1), A191518(n)+1])`
-/

namespace A191519.P12799495327221615571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191518 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191519.P12799495327221615571

/-! ## A191519.P213767313507355963

`A093126(n+1)+A051058(A037958(n))`
-/

namespace A191519.P213767313507355963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093126 (n + 1) + A051058 (A037958 n).toNat

end

end A191519.P213767313507355963

/-!
# A191520: Number of UUU's in all the dispersed Dyck paths of semilength n (i.e., in all Motzkin paths of length n; U=(1,1)).

The programs for A191520, the canonical program `A191520.P13265001190735840137` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191520 has offset 0).

The definition of A191520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191520.P13265001190735840137

`A191522(n)-A191787(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A191520

/-- `A191522(n)-A191787(n)` -/
def P13265001190735840137.Spec : Prop :=
  ∀ n, P13265001190735840137.a n = A191520 n

theorem P13265001190735840137.correct : P13265001190735840137.Spec := by
  intro n
  simp only [A191520]

end A191520

/-! ## A191520.P18227070950089271117

`(A340568(n)-A340569(n))/4`
-/

namespace A191520.P18227070950089271117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340568 n - A340569 n : ℚ) / 4

end

end A191520.P18227070950089271117

namespace A191520

/-- `(A340568(n)-A340569(n))/4` -/
def P18227070950089271117.Spec : Prop :=
  ∀ n, P18227070950089271117.a n = (A191520 n : ℚ)

end A191520

/-! ## A191520.P14741954411376921384

`A191522(n)-(A191527(n)-(A191386(n)+A191309(n)))`
-/

namespace A191520.P14741954411376921384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n - (A191527 n - (A191386 n + A191309 n))

end

end A191520.P14741954411376921384

namespace A191520

/-- `A191522(n)-(A191527(n)-(A191386(n)+A191309(n)))` -/
def P14741954411376921384.Spec : Prop :=
  ∀ n, P14741954411376921384.a n = A191520 n

theorem P14741954411376921384.correct : P14741954411376921384.Spec := by
  intro n
  simp only [A191520, Nat.add_sub_cancel, A191520.P14741954411376921384.a, A191520.P13265001190735840137.a, A191309, A191309.P18243075712559101294.a, A191386, A191386.P5013181058466511668.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A191527, A191527.P18257187905751201443.a, A191787, A191787.P17825478627761863050.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A139262, A139262.P8524009422663711179.a, A140106, A140106.P2723219612803141067.a, A191524, A191524.P4442675164963678049.a, A210736, A210736.P1250447749793702526.a, A258431, A258431.P10302209761239524539.a, A000079, A000079.P10855139691139572931.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A050168, A050168.P2561838391192846284.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A129194, A129194.P14466208917237569440.a, A002740, A002740.P348049862178716560.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191520

/-! ## A191520.P3184528335460498061

`A191522(n)-(A340567(n)-(A191522(n)+A191386(n)))`
-/

namespace A191520.P3184528335460498061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n - (A340567 n - (A191522 n + A191386 n))

end

end A191520.P3184528335460498061

namespace A191520

/-- `A191522(n)-(A340567(n)-(A191522(n)+A191386(n)))` -/
def P3184528335460498061.Spec : Prop :=
  ∀ n, P3184528335460498061.a n = A191520 n

theorem P3184528335460498061.correct : P3184528335460498061.Spec := by
  intro n
  simp only [A191520, Nat.add_sub_cancel, A191520.P3184528335460498061.a, A191520.P13265001190735840137.a, A191386, A191386.P5013181058466511668.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A191787, A191787.P17825478627761863050.a, A340567, A340567.P15280367653010939046.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A140106, A140106.P2723219612803141067.a, A191524, A191524.P4442675164963678049.a, A210736, A210736.P1250447749793702526.a, A258431, A258431.P10302209761239524539.a, A000079, A000079.P10855139691139572931.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A050168, A050168.P2561838391192846284.a, A129194, A129194.P14466208917237569440.a, A191309, A191309.P18243075712559101294.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191520

/-! ## A191520.P2010003237740316003

`(A340568(n)-(A322585(n²+1)+A045621(n)-A063886(n)))/4`
-/

namespace A191520.P2010003237740316003
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340568 n - (A322585 (n ^ 2 + 1) + (A045621 n - A063886 n)) : ℚ) / 4

end

end A191520.P2010003237740316003

namespace A191520

/-- `(A340568(n)-(A322585(n²+1)+A045621(n)-A063886(n)))/4` -/
def P2010003237740316003.Spec : Prop :=
  ∀ n, P2010003237740316003.a n = (A191520 n : ℚ)

end A191520

/-!
# A191522: Number of valleys in all left factors of Dyck paths of length n. A valley is a (1,-1)-step followed by a (1,1)-step.

The programs for A191522, the canonical program `A191522.P8267354329706753814` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191522 has offset 0).

The definition of A191522 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191522.P5614738670187704308

`A191787(n)+A191520(n)`
-/

namespace A191522.P5614738670187704308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191787 n + A191520 n

end

end A191522.P5614738670187704308

namespace A191522

/-- `A191787(n)+A191520(n)` -/
def P5614738670187704308.Spec : Prop :=
  ∀ n, P5614738670187704308.a n = A191522 n

theorem P5614738670187704308.correct : P5614738670187704308.Spec := by
  intro n
  simp only [A191522, Nat.add_sub_cancel, A191522.P5614738670187704308.a, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A140106, A140106.P2723219612803141067.a, A191520, A191520.P13265001190735840137.a, A191787, A191787.P17825478627761863050.a, A210736, A210736.P1250447749793702526.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A129194, A129194.P14466208917237569440.a, A191386, A191386.P5013181058466511668.a, A191524, A191524.P4442675164963678049.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A191309, A191309.P18243075712559101294.a, A258431, A258431.P10302209761239524539.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191522

/-! ## A191522.P8267354329706753814

`Δ[A210736(n)]*A140106(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191522

/-- `Δ[A210736(n)]*A140106(n+1)` -/
def P8267354329706753814.Spec : Prop :=
  ∀ n, P8267354329706753814.a n = A191522 n

theorem P8267354329706753814.correct : P8267354329706753814.Spec := by
  intro n
  simp only [A191522]

end A191522

/-! ## A191522.P16541689067135530804

`(n-A008619(n))*Δ[A210736(n)]`
-/

namespace A191522.P16541689067135530804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A008619 n) * (f1 (n + 1) - f1 n)

end

end A191522.P16541689067135530804

namespace A191522

/-- `(n-A008619(n))*Δ[A210736(n)]` -/
def P16541689067135530804.Spec : Prop :=
  ∀ n, P16541689067135530804.a n = A191522 n

end A191522

/-! ## A191522.P16043204039778390940

`A037952(n)%A210736(n)*A028242(n)`
-/

namespace A191522.P16043204039778390940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037952 n) (A210736 n) * A028242 n

end

end A191522.P16043204039778390940

namespace A191522

/-- `A037952(n)%A210736(n)*A028242(n)` -/
def P16043204039778390940.Spec : Prop :=
  ∀ n, P16043204039778390940.a n = A191522 n

end A191522

/-! ## A191522.P3171050838153602050

`A004526(n)*A210736(n)-Δ[A210736(n)]`
-/

namespace A191522.P3171050838153602050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n * A210736 n - (f1 (n + 1) - f1 n)

end

end A191522.P3171050838153602050

namespace A191522

/-- `A004526(n)*A210736(n)-Δ[A210736(n)]` -/
def P3171050838153602050.Spec : Prop :=
  ∀ n, P3171050838153602050.a n = A191522 n

end A191522

/-! ## A191522.P9371658513121761926

`A340568(n)-A191309(n)`
-/

namespace A191522.P9371658513121761926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340568 n - A191309 n

end

end A191522.P9371658513121761926

namespace A191522

/-- `A340568(n)-A191309(n)` -/
def P9371658513121761926.Spec : Prop :=
  ∀ n, P9371658513121761926.a n = A191522 n

theorem P9371658513121761926.correct : P9371658513121761926.Spec := by
  intro n
  simp only [A191522, Nat.add_sub_cancel, A191522.P9371658513121761926.a, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A140106, A140106.P2723219612803141067.a, A191309, A191309.P18243075712559101294.a, A210736, A210736.P1250447749793702526.a, A340568, A340568.P8040469025914050039.a, A000034, A000034.P10773112074177680709.a, A001405, A001405.P5205018418992951678.a, A004526, A004526.P10084182425416171735.a, A022998, A022998.P6062845442791183064.a, A129194, A129194.P14466208917237569440.a, A139262, A139262.P8524009422663711179.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191522

/-! ## A191522.P18111363255420425656

`A340567(n)-A191524(n)`
-/

namespace A191522.P18111363255420425656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340567 n - A191524 n

end

end A191522.P18111363255420425656

namespace A191522

/-- `A340567(n)-A191524(n)` -/
def P18111363255420425656.Spec : Prop :=
  ∀ n, P18111363255420425656.a n = A191522 n

theorem P18111363255420425656.correct : P18111363255420425656.Spec := by
  intro n
  simp only [A191522, Nat.add_sub_cancel, A191522.P18111363255420425656.a, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A140106, A140106.P2723219612803141067.a, A191524, A191524.P4442675164963678049.a, A210736, A210736.P1250447749793702526.a, A340567, A340567.P15280367653010939046.a, A000079, A000079.P10855139691139572931.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A050168, A050168.P2561838391192846284.a, A129194, A129194.P14466208917237569440.a, A191309, A191309.P18243075712559101294.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191522

/-! ## A191522.P12978464156921828711

`A007318(A000982(n))*A140106(n+1)`
-/

namespace A191522.P12978464156921828711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000982 n).toNat * A140106 (n + 1)

end

end A191522.P12978464156921828711

namespace A191522

/-- `A007318(A000982(n))*A140106(n+1)` -/
def P12978464156921828711.Spec : Prop :=
  ∀ n, P12978464156921828711.a n = A191522 n

end A191522

/-! ## A191522.P17835305317795787635

`A007318(n²-A007590(n))*A140106(n+1)`
-/

namespace A191522.P17835305317795787635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((n ^ 2 : ℤ) - A007590 n).toNat * A140106 (n + 1)

end

end A191522.P17835305317795787635

namespace A191522

/-- `A007318(n²-A007590(n))*A140106(n+1)` -/
def P17835305317795787635.Spec : Prop :=
  ∀ n, P17835305317795787635.a n = A191522 n

end A191522

/-! ## A191522.P17609196013899340331

`A007318(A007590(n+1)-n)*A140106(n+1)`
-/

namespace A191522.P17609196013899340331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A007590 (n + 1) - (n : ℤ)).toNat * A140106 (n + 1)

end

end A191522.P17609196013899340331

namespace A191522

/-- `A007318(A007590(n+1)-n)*A140106(n+1)` -/
def P17609196013899340331.Spec : Prop :=
  ∀ n, P17609196013899340331.a n = A191522 n

end A191522

/-!
# A191523: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n and having k double rises, i.e., two consecutive (1,1)-steps (n>=1, 0<=k<=n-1).

The programs for A191523, there is no canonical definition to state claims against.
-/

/-! ## A191523.P6864515754298908978

`A008480(4*A229345(n))`
-/

namespace A191523.P6864515754298908978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (4 * A229345 n).toNat

end

end A191523.P6864515754298908978

/-! ## A191523.P15212297410142695260

`A285572(4*A229345(n))`
-/

namespace A191523.P15212297410142695260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285572 (4 * A229345 n).toNat

end

end A191523.P15212297410142695260

/-! ## A191523.P2512464555734230325

`A084558(A008284(n+1)^A131240(n))`
-/

namespace A191523.P2512464555734230325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084558 (SequenceMachineLib.roundAway ((A008284 (n + 1) : ℚ) ^ (A131240 n : ℤ))).toNat

end

end A191523.P2512464555734230325

/-! ## A191523.P17068382910103982280

`A165113(A034448(n+1)*A221388(n+1))`
-/

namespace A191523.P17068382910103982280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165113 (A034448 (n + 1) * A221388 (n + 1)).toNat

end

end A191523.P17068382910103982280

/-!
# A191524: Number of double rises in all left factors of Dyck paths of length n (a double rise consists of two consecutive (1,1)-steps).

The programs for A191524, the canonical program `A191524.P4442675164963678049` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191524 has offset 0).

The definition of A191524 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191524.P4152773593780576707

`A191787(n)+A191386(n)`
-/

namespace A191524.P4152773593780576707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191787 n + A191386 n

end

end A191524.P4152773593780576707

namespace A191524

/-- `A191787(n)+A191386(n)` -/
def P4152773593780576707.Spec : Prop :=
  ∀ n, P4152773593780576707.a n = A191524 n

theorem P4152773593780576707.correct : P4152773593780576707.Spec := by
  intro n
  simp only [A191524, Nat.add_sub_cancel, A191524.P4152773593780576707.a, A191524.P4442675164963678049.a, A000079, A000079.P10855139691139572931.a, A050168, A050168.P2561838391192846284.a, A191309, A191309.P18243075712559101294.a, A191386, A191386.P5013181058466511668.a, A191787, A191787.P17825478627761863050.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, A258431, A258431.P10302209761239524539.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191524

/-! ## A191524.P1575024889049024027

`A191522(n)+A307768(n)/2`
-/

namespace A191524.P1575024889049024027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191522 n : ℚ) + (A307768 n : ℚ) / 2

end

end A191524.P1575024889049024027

namespace A191524

/-- `A191522(n)+A307768(n)/2` -/
def P1575024889049024027.Spec : Prop :=
  ∀ n, P1575024889049024027.a n = (A191524 n : ℚ)

end A191524

/-! ## A191524.P5350792899043335518

`A191522(n)+A045621(log2(A011782(n)))`
-/

namespace A191524.P5350792899043335518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n + A045621 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A191524.P5350792899043335518

namespace A191524

/-- `A191522(n)+A045621(log2(A011782(n)))` -/
def P5350792899043335518.Spec : Prop :=
  ∀ n, P5350792899043335518.a n = A191524 n

end A191524

/-! ## A191524.P4442675164963678049

`A000079(n)+A191309(n)-A050168(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A191524

/-- `A000079(n)+A191309(n)-A050168(n)` -/
def P4442675164963678049.Spec : Prop :=
  ∀ n, P4442675164963678049.a n = A191524 n

theorem P4442675164963678049.correct : P4442675164963678049.Spec := by
  intro n
  simp only [A191524]

end A191524

/-! ## A191524.P14118171983208860266

`A011782(n)+A191522(n)-A210736(n)`
-/

namespace A191524.P14118171983208860266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + (A191522 n - A210736 n)

end

end A191524.P14118171983208860266

namespace A191524

/-- `A011782(n)+A191522(n)-A210736(n)` -/
def P14118171983208860266.Spec : Prop :=
  ∀ n, P14118171983208860266.a n = A191524 n

end A191524

/-! ## A191524.P9591055106038475945

`A191386(n)+A191522(n)-A191520(n)`
-/

namespace A191524.P9591055106038475945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191386 n + (A191522 n - A191520 n)

end

end A191524.P9591055106038475945

namespace A191524

/-- `A191386(n)+A191522(n)-A191520(n)` -/
def P9591055106038475945.Spec : Prop :=
  ∀ n, P9591055106038475945.a n = A191524 n

theorem P9591055106038475945.correct : P9591055106038475945.Spec := by
  intro n
  simp only [A191524, Nat.add_sub_cancel, A191524.P9591055106038475945.a, A191524.P4442675164963678049.a, A000079, A000079.P10855139691139572931.a, A050168, A050168.P2561838391192846284.a, A191309, A191309.P18243075712559101294.a, A191386, A191386.P5013181058466511668.a, A191520, A191520.P13265001190735840137.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, A140106, A140106.P2723219612803141067.a, A191787, A191787.P17825478627761863050.a, A210736, A210736.P1250447749793702526.a, A258431, A258431.P10302209761239524539.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A129194, A129194.P14466208917237569440.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191524

/-! ## A191524.P6382208232427368517

`A191527(n)-A191309(n)`
-/

namespace A191524.P6382208232427368517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n - A191309 n

end

end A191524.P6382208232427368517

namespace A191524

/-- `A191527(n)-A191309(n)` -/
def P6382208232427368517.Spec : Prop :=
  ∀ n, P6382208232427368517.a n = A191524 n

theorem P6382208232427368517.correct : P6382208232427368517.Spec := by
  intro n
  simp only [A191524, Nat.add_sub_cancel, A191524.P6382208232427368517.a, A191524.P4442675164963678049.a, A000079, A000079.P10855139691139572931.a, A050168, A050168.P2561838391192846284.a, A191309, A191309.P18243075712559101294.a, A191527, A191527.P18257187905751201443.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191524

/-! ## A191524.P6976456080522654211

`A340567(n)-A191522(n)`
-/

namespace A191524.P6976456080522654211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340567 n - A191522 n

end

end A191524.P6976456080522654211

namespace A191524

/-- `A340567(n)-A191522(n)` -/
def P6976456080522654211.Spec : Prop :=
  ∀ n, P6976456080522654211.a n = A191524 n

theorem P6976456080522654211.correct : P6976456080522654211.Spec := by
  intro n
  simp only [A191524, Nat.add_sub_cancel, A191524.P6976456080522654211.a, A191524.P4442675164963678049.a, A000079, A000079.P10855139691139572931.a, A050168, A050168.P2561838391192846284.a, A191309, A191309.P18243075712559101294.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A340567, A340567.P15280367653010939046.a, A000034, A000034.P10773112074177680709.a, A004526, A004526.P10084182425416171735.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A139262, A139262.P8524009422663711179.a, A140106, A140106.P2723219612803141067.a, A210736, A210736.P1250447749793702526.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A129194, A129194.P14466208917237569440.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191524

/-!
# A191525: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n and having k hills; a hill is a (1,1)-step starting at level 0 and followed by a (1,-1)-step.

The programs for A191525, there is no canonical definition to state claims against.
-/

/-! ## A191525.P540382765904472193

`A191306(A055645(n)+1)`
-/

namespace A191525.P540382765904472193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 (A055645 n + 1).toNat

end

end A191525.P540382765904472193

/-! ## A191525.P7856266590825913121

`A191306(∑[A184964(n)!])`
-/

namespace A191525.P7856266590825913121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A184964 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191525.P7856266590825913121

/-! ## A191525.P4031570365210577441

`ratio[A001489(∏[A191306(n)])]`
-/

namespace A191525.P4031570365210577441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A191525.P4031570365210577441

/-! ## A191525.P6746644648295655191

`ratio[A004277(∏[A191306(n)])]`
-/

namespace A191525.P6746644648295655191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A191525.P6746644648295655191

/-! ## A191525.P16950750696977599797

`A191306(A262545(n+1)+1)`
-/

namespace A191525.P16950750696977599797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191306 (A262545 (n + 1) + 1).toNat

end

end A191525.P16950750696977599797

/-!
# A191526: Number left factors of Dyck paths of length n and having no hills; a hill is a (1,1)-step starting at level 0 and followed by a (1,-1)-step.

The programs for A191526, the canonical program `A191526.P16833955371914358645` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191526 has offset 0).

The definition of A191526 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191526.P16833955371914358645

`A001405(n+1)-A109078(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A191526

/-- `A001405(n+1)-A109078(n+1)` -/
def P16833955371914358645.Spec : Prop :=
  ∀ n, P16833955371914358645.a n = A191526 n

theorem P16833955371914358645.correct : P16833955371914358645.Spec := by
  intro n
  simp only [A191526]

end A191526

/-! ## A191526.P13712499581345461416

`A201635(A165157(n+1))`
-/

namespace A191526.P13712499581345461416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A165157 (n + 1)).toNat

end

end A191526.P13712499581345461416

namespace A191526

/-- `A201635(A165157(n+1))` -/
def P13712499581345461416.Spec : Prop :=
  ∀ n, P13712499581345461416.a n = A191526 n

end A191526

/-! ## A191526.P5206966529471661965

`A201635(A101881(n+1)-1)`
-/

namespace A191526.P5206966529471661965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (A101881 (n + 1) - 1).toNat

end

end A191526.P5206966529471661965

namespace A191526

/-- `A201635(A101881(n+1)-1)` -/
def P5206966529471661965.Spec : Prop :=
  ∀ n, P5206966529471661965.a n = A191526 n

end A191526

/-! ## A191526.P10261607157724001269

`A201635(∑[A001405(n+1)/A057977(n+1)])`
-/

namespace A191526.P10261607157724001269
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001405 (n + 1) : ℚ) / (A057977 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201635 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A191526.P10261607157724001269

namespace A191526

/-- `A201635(∑[A001405(n+1)/A057977(n+1)])` -/
def P10261607157724001269.Spec : Prop :=
  ∀ n, P10261607157724001269.a n = A191526 n

end A191526

/-! ## A191526.P9482746786935930451

`A395545(A261243(n+1))`
-/

namespace A191526.P9482746786935930451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395545 (A261243 (n + 1)).toNat

end

end A191526.P9482746786935930451

namespace A191526

/-- `A395545(A261243(n+1))` -/
def P9482746786935930451.Spec : Prop :=
  ∀ n, P9482746786935930451.a n = A191526 n

end A191526

/-! ## A191526.P8932982330368311956

`A035317(floor(n²/2))`
-/

namespace A191526.P8932982330368311956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A191526.P8932982330368311956

namespace A191526

/-- `A035317(floor(n²/2))` -/
def P8932982330368311956.Spec : Prop :=
  ∀ n, P8932982330368311956.a n = A191526 n

end A191526

/-! ## A191526.P13544593287195171005

`A080242(∑[n-char[1]])`
-/

namespace A191526.P13544593287195171005
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191526.P13544593287195171005

namespace A191526

/-- `A080242(∑[n-char[1]])` -/
def P13544593287195171005.Spec : Prop :=
  ∀ n, P13544593287195171005.a n = A191526 n

end A191526

/-! ## A191526.P3421227772069399534

`A059259(floor(n²/2)+n)`
-/

namespace A191526.P3421227772069399534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059259 (⌊(n ^ 2 : ℚ) / 2⌋ + (n : ℤ)).toNat

end

end A191526.P3421227772069399534

namespace A191526

/-- `A059259(floor(n²/2)+n)` -/
def P3421227772069399534.Spec : Prop :=
  ∀ n, P3421227772069399534.a n = A191526 n

end A191526

/-! ## A191526.P16244695625804799547

`A059260(A007590(n+1))`
-/

namespace A191526.P16244695625804799547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A007590 (n + 1)).toNat

end

end A191526.P16244695625804799547

namespace A191526

/-- `A059260(A007590(n+1))` -/
def P16244695625804799547.Spec : Prop :=
  ∀ n, P16244695625804799547.a n = A191526 n

end A191526

/-! ## A191526.P5168926673047959100

`A135228(A080476(n+1))`
-/

namespace A191526.P5168926673047959100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 (A080476 (n + 1)).toNat

end

end A191526.P5168926673047959100

namespace A191526

/-- `A135228(A080476(n+1))` -/
def P5168926673047959100.Spec : Prop :=
  ∀ n, P5168926673047959100.a n = A191526 n

end A191526

/-! ## A191526.P7070867639193744958

`A059260(2*A002620(n+1))`
-/

namespace A191526.P7070867639193744958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (2 * A002620 (n + 1)).toNat

end

end A191526.P7070867639193744958

namespace A191526

/-- `A059260(2*A002620(n+1))` -/
def P7070867639193744958.Spec : Prop :=
  ∀ n, P7070867639193744958.a n = A191526 n

end A191526

/-! ## A191526.P11437740144903185060

`A059260(A002620(n+1)+A002620(n+1))`
-/

namespace A191526.P11437740144903185060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059260 (A002620 (n + 1) + A002620 (n + 1)).toNat

end

end A191526.P11437740144903185060

namespace A191526

/-- `A059260(A002620(n+1)+A002620(n+1))` -/
def P11437740144903185060.Spec : Prop :=
  ∀ n, P11437740144903185060.a n = A191526 n

end A191526

/-! ## A191526.P6030900908273335218

`A108561(∑[or(1, n)]+n)`
-/

namespace A191526.P6030900908273335218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A191526.P6030900908273335218

namespace A191526

/-- `A108561(∑[or(1, n)]+n)` -/
def P6030900908273335218.Spec : Prop :=
  ∀ n, P6030900908273335218.a n = A191526 n

end A191526

/-! ## A191526.P11399437525874117367

`A112465(A000982(n+2))`
-/

namespace A191526.P11399437525874117367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A000982 (n + 2)).toNat

end

end A191526.P11399437525874117367

namespace A191526

/-- `A112465(A000982(n+2))` -/
def P11399437525874117367.Spec : Prop :=
  ∀ n, P11399437525874117367.a n = A191526 n

end A191526

/-! ## A191526.P2436499205142721313

`A108561(A047838(n+2))`
-/

namespace A191526.P2436499205142721313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A047838 (n + 2)).toNat

end

end A191526.P2436499205142721313

namespace A191526

/-- `A108561(A047838(n+2))` -/
def P2436499205142721313.Spec : Prop :=
  ∀ n, P2436499205142721313.a n = A191526 n

end A191526

/-! ## A191526.P5157735516246089692

`A108561(A000982(n+1)+n)`
-/

namespace A191526.P5157735516246089692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (A000982 (n + 1) + (n : ℤ)).toNat

end

end A191526.P5157735516246089692

namespace A191526

/-- `A108561(A000982(n+1)+n)` -/
def P5157735516246089692.Spec : Prop :=
  ∀ n, P5157735516246089692.a n = A191526 n

end A191526

/-! ## A191526.P5465202825465485558

`A108561(record[A154684(n+1)]-n)`
-/

namespace A191526.P5465202825465485558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108561 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A191526.P5465202825465485558

namespace A191526

/-- `A108561(record[A154684(n+1)]-n)` -/
def P5465202825465485558.Spec : Prop :=
  ∀ n, P5465202825465485558.a n = A191526 n

end A191526

/-! ## A191526.P5934656122693216642

`A112465(A080476(n+1)+2+n)`
-/

namespace A191526.P5934656122693216642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A080476 (n + 1) + 2 + (n : ℤ)).toNat

end

end A191526.P5934656122693216642

namespace A191526

/-- `A112465(A080476(n+1)+2+n)` -/
def P5934656122693216642.Spec : Prop :=
  ∀ n, P5934656122693216642.a n = A191526 n

end A191526

/-! ## A191526.P13722568576628492827

`A112465(A008619(n+1)+∑[n+1])`
-/

namespace A191526.P13722568576628492827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A008619 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A191526.P13722568576628492827

namespace A191526

/-- `A112465(A008619(n+1)+∑[n+1])` -/
def P13722568576628492827.Spec : Prop :=
  ∀ n, P13722568576628492827.a n = A191526 n

end A191526

/-!
# A191527: Number of turns in all left factors of Dyck paths of length n.

The programs for A191527, the canonical program `A191527.P18257187905751201443` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191527 has offset 0).

The definition of A191527 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191527.P18257187905751201443

`A191524(n)+A191309(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A191527

/-- `A191524(n)+A191309(n)` -/
def P18257187905751201443.Spec : Prop :=
  ∀ n, P18257187905751201443.a n = A191527 n

theorem P18257187905751201443.correct : P18257187905751201443.Spec := by
  intro n
  simp only [A191527]

end A191527

/-! ## A191527.P9240655732748698110

`A014314(n)-A131577(n)`
-/

namespace A191527.P9240655732748698110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - A131577 n

end

end A191527.P9240655732748698110

namespace A191527

/-- `A014314(n)-A131577(n)` -/
def P9240655732748698110.Spec : Prop :=
  ∀ n, P9240655732748698110.a n = A191527 n

theorem P9240655732748698110.correct : P9240655732748698110.Spec := by
  intro n
  simp only [A191527, Nat.add_sub_cancel, A191527.P9240655732748698110.a, A191527.P18257187905751201443.a, A014314, A014314.P224106078485910448.a, A131577, A131577.P3998309598604981540.a, A191309, A191309.P18243075712559101294.a, A191524, A191524.P4442675164963678049.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A139262, A139262.P8524009422663711179.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191527

/-! ## A191527.P133983329336217171

`A014314(n)+Δ[A122958(n)]`
-/

namespace A191527.P133983329336217171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n + (f1 (n + 1) - f1 n)

end

end A191527.P133983329336217171

namespace A191527

/-- `A014314(n)+Δ[A122958(n)]` -/
def P133983329336217171.Spec : Prop :=
  ∀ n, P133983329336217171.a n = A191527 n

end A191527

/-! ## A191527.P3858973753805660352

`A014314(n)-Δ[A011782(n)]`
-/

namespace A191527.P3858973753805660352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - (f1 (n + 1) - f1 n)

end

end A191527.P3858973753805660352

namespace A191527

/-- `A014314(n)-Δ[A011782(n)]` -/
def P3858973753805660352.Spec : Prop :=
  ∀ n, P3858973753805660352.a n = A191527 n

end A191527

/-! ## A191527.P4571924190316710107

`Δ[A210736(n)]+2*A191522(n)`
-/

namespace A191527.P4571924190316710107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A191522 n

end

end A191527.P4571924190316710107

namespace A191527

/-- `Δ[A210736(n)]+2*A191522(n)` -/
def P4571924190316710107.Spec : Prop :=
  ∀ n, P4571924190316710107.a n = A191527 n

end A191527

/-! ## A191527.P3415396282974793369

`A014314(n)-record[A048675(n+1)]`
-/

namespace A191527.P3415396282974793369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191527.P3415396282974793369

namespace A191527

/-- `A014314(n)-record[A048675(n+1)]` -/
def P3415396282974793369.Spec : Prop :=
  ∀ n, P3415396282974793369.a n = A191527 n

end A191527

/-! ## A191527.P8305384971141863976

`A014314(n)-record[A052331(n+1)]`
-/

namespace A191527.P8305384971141863976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191527.P8305384971141863976

namespace A191527

/-- `A014314(n)-record[A052331(n+1)]` -/
def P8305384971141863976.Spec : Prop :=
  ∀ n, P8305384971141863976.a n = A191527 n

end A191527

/-! ## A191527.P11221033169651699934

`A210736(n+1)/2*A289207(n+1)`
-/

namespace A191527.P11221033169651699934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210736 (n + 1) : ℚ) / 2 * (A289207 (n + 1) : ℚ)

end

end A191527.P11221033169651699934

namespace A191527

/-- `A210736(n+1)/2*A289207(n+1)` -/
def P11221033169651699934.Spec : Prop :=
  ∀ n, P11221033169651699934.a n = (A191527 n : ℚ)

end A191527

/-! ## A191527.P17110986948060520115

`A140106(2*n+1)/2*A210736(n+1)`
-/

namespace A191527.P17110986948060520115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140106 (2 * n + 1) : ℚ) / 2 * (A210736 (n + 1) : ℚ)

end

end A191527.P17110986948060520115

namespace A191527

/-- `A140106(2*n+1)/2*A210736(n+1)` -/
def P17110986948060520115.Spec : Prop :=
  ∀ n, P17110986948060520115.a n = (A191527 n : ℚ)

end A191527

/-! ## A191527.P1397190594114810419

`(A340567(n)+A107373(n+1))/2`
-/

namespace A191527.P1397190594114810419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340567 n + A107373 (n + 1) : ℚ) / 2

end

end A191527.P1397190594114810419

namespace A191527

/-- `(A340567(n)+A107373(n+1))/2` -/
def P1397190594114810419.Spec : Prop :=
  ∀ n, P1397190594114810419.a n = (A191527 n : ℚ)

end A191527

/-! ## A191527.P5747024283334389409

`round(A100071(n+1)/2)-A001405(n)`
-/

namespace A191527.P5747024283334389409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A100071 (n + 1) : ℚ) / 2) - A001405 n

end

end A191527.P5747024283334389409

namespace A191527

/-- `round(A100071(n+1)/2)-A001405(n)` -/
def P5747024283334389409.Spec : Prop :=
  ∀ n, P5747024283334389409.a n = A191527 n

end A191527

/-! ## A191527.P11250921440811254652

`ceil((n-1)*C(n, floor(n/2))/2)`
-/

namespace A191527.P11250921440811254652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((n : ℤ) - 1) * (Nat.choose n ⌊(n : ℚ) / 2⌋.toNat : ℤ) : ℚ) / 2⌉

end

end A191527.P11250921440811254652

namespace A191527

/-- `ceil((n-1)*C(n, floor(n/2))/2)` -/
def P11250921440811254652.Spec : Prop :=
  ∀ n, P11250921440811254652.a n = A191527 n

end A191527

/-! ## A191527.P7399457140465153272

`A191522(2*n)/A210736(2*n+1)*A210736(n+1)`
-/

namespace A191527.P7399457140465153272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191522 (2 * n) : ℚ) / (A210736 (2 * n + 1) : ℚ) * (A210736 (n + 1) : ℚ)

end

end A191527.P7399457140465153272

namespace A191527

/-- `A191522(2*n)/A210736(2*n+1)*A210736(n+1)` -/
def P7399457140465153272.Spec : Prop :=
  ∀ n, P7399457140465153272.a n = (A191527 n : ℚ)

end A191527

/-!
# A191528: Triangle read by rows: T(n,k) is the number of left factors of Dyck paths of length n that have k returns to the axis.

The programs for A191528, the canonical program `A191528.P9215815392354335812` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191528 has offset 0).

The definition of A191528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2601 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191528.P9215815392354335812

`A007318(A091018(n)-A000194(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191528

/-- `A007318(A091018(n)-A000194(n))` -/
def P9215815392354335812.Spec : Prop :=
  ∀ n, P9215815392354335812.a n = A191528 n

theorem P9215815392354335812.correct : P9215815392354335812.Spec := by
  intro n
  simp only [A191528]

end A191528

/-! ## A191528.P8628324878290166214

`A101508(A091018(n)-A000194(n))`
-/

namespace A191528.P8628324878290166214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101508 (A091018 n - A000194 n).toNat

end

end A191528.P8628324878290166214

namespace A191528

/-- `A101508(A091018(n)-A000194(n))` -/
def P8628324878290166214.Spec : Prop :=
  ∀ n, P8628324878290166214.a n = A191528 n

end A191528

/-! ## A191528.P13777740727144418250

`A132749(A091018(n)-A000194(n))`
-/

namespace A191528.P13777740727144418250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132749 (A091018 n - A000194 n).toNat

end

end A191528.P13777740727144418250

namespace A191528

/-- `A132749(A091018(n)-A000194(n))` -/
def P13777740727144418250.Spec : Prop :=
  ∀ n, P13777740727144418250.a n = A191528 n

end A191528

/-! ## A191528.P9862305094252892499

`A007318(A091018(n)-A322832(n))`
-/

namespace A191528.P9862305094252892499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A091018 n - A322832 n).toNat

end

end A191528.P9862305094252892499

namespace A191528

/-- `A007318(A091018(n)-A322832(n))` -/
def P9862305094252892499.Spec : Prop :=
  ∀ n, P9862305094252892499.a n = A191528 n

end A191528

/-! ## A191528.P9777614699183635078

`abs(A130595(A091018(n)-A000194(n)))`
-/

namespace A191528.P9777614699183635078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 (A091018 n - A000194 n).toNat|

end

end A191528.P9777614699183635078

namespace A191528

/-- `abs(A130595(A091018(n)-A000194(n)))` -/
def P9777614699183635078.Spec : Prop :=
  ∀ n, P9777614699183635078.a n = A191528 n

end A191528

/-! ## A191528.P18063471484813184949

`A007318(A056536(n+1)-(A000194(n)+1))`
-/

namespace A191528.P18063471484813184949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056536 (n + 1) - (A000194 n + 1)).toNat

end

end A191528.P18063471484813184949

namespace A191528

/-- `A007318(A056536(n+1)-(A000194(n)+1))` -/
def P18063471484813184949.Spec : Prop :=
  ∀ n, P18063471484813184949.a n = A191528 n

theorem P18063471484813184949.correct : P18063471484813184949.Spec := by
  intro n
  simp only [A191528, Nat.add_sub_cancel, A191528.P18063471484813184949.a, A191528.P9215815392354335812.a, A000194, A000194.P3625933274776871084.a, A007318, A007318.P11755526479805562006.a, A056536, A056536.P15475188742304027796.a, A091018, A091018.P2259398009619809425.a, A056537, A056537.P3331014331152516535.a, A091995, A091995.P16558306300262697301.a, A000267, A000267.P8737011026442136894.a, A002260, A002260.P9170571874073898642.a, A002620, A002620.P9002536657626793813.a, A094727, A094727.P1041695477673985807.a, A161680, A161680.P17206074215489759881.a, A322832, A322832.P4257575422464920388.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191528

/-! ## A191528.P9798477132882827659

`A007318(A056536(n+1)-A138099(n+1))`
-/

namespace A191528.P9798477132882827659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A056536 (n + 1) - A138099 (n + 1)).toNat

end

end A191528.P9798477132882827659

namespace A191528

/-- `A007318(A056536(n+1)-A138099(n+1))` -/
def P9798477132882827659.Spec : Prop :=
  ∀ n, P9798477132882827659.a n = A191528 n

end A191528

/-! ## A191528.P14076508828277379697

`A107249(A300997(n+1))`
-/

namespace A191528.P14076508828277379697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (A300997 (n + 1)).toNat

end

end A191528.P14076508828277379697

namespace A191528

/-- `A107249(A300997(n+1))` -/
def P14076508828277379697.Spec : Prop :=
  ∀ n, P14076508828277379697.a n = A191528 n

end A191528

/-! ## A191528.P3425449166910674732

`A107249(A246706(n+1))`
-/

namespace A191528.P3425449166910674732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107249 (A246706 (n + 1)).toNat

end

end A191528.P3425449166910674732

namespace A191528

/-- `A107249(A246706(n+1))` -/
def P3425449166910674732.Spec : Prop :=
  ∀ n, P3425449166910674732.a n = A191528 n

end A191528

/-!
# A191529: Number of dispersed Dyck paths of length n (i.e., Motzkin paths of length n with no (1,0) steps at positive heights) with no initial and no final (1,0)-steps.

The programs for A191529, the canonical program `A191529.P15028808747650929508` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191529 has offset 0).

The definition of A191529 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191529.P15028808747650929508

`Δ[Δ[A001405(abs(2-n))]]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191529

/-- `Δ[Δ[A001405(abs(2-n))]]` -/
def P15028808747650929508.Spec : Prop :=
  ∀ n, P15028808747650929508.a n = A191529 n

theorem P15028808747650929508.correct : P15028808747650929508.Spec := by
  intro n
  simp only [A191529]

end A191529

/-! ## A191529.P11149328885178312813

`Δ[Δ[A051920(abs(2-n))]]`
-/

namespace A191529.P11149328885178312813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 |2 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191529.P11149328885178312813

namespace A191529

/-- `Δ[Δ[A051920(abs(2-n))]]` -/
def P11149328885178312813.Spec : Prop :=
  ∀ n, P11149328885178312813.a n = A191529 n

theorem P11149328885178312813.correct : P11149328885178312813.Spec := by
  intro n
  simp only [A191529, Nat.add_sub_cancel, A191529.P11149328885178312813.f2, A191529.P11149328885178312813.f1, A191529.P11149328885178312813.a, A191529.P15028808747650929508.f2, A191529.P15028808747650929508.f1, A191529.P15028808747650929508.a, A001405, A001405.P5205018418992951678.a, A051920, A051920.P2707849764288868979.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191529

/-! ## A191529.P730918946866967537

`A001405(n)+A001405(A289207(n))-A063886(n)`
-/

namespace A191529.P730918946866967537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n + (A001405 (A289207 n).toNat - A063886 n)

end

end A191529.P730918946866967537

namespace A191529

/-- `A001405(n)+A001405(A289207(n))-A063886(n)` -/
def P730918946866967537.Spec : Prop :=
  ∀ n, P730918946866967537.a n = A191529 n

end A191529

/-! ## A191529.P15095118279600673056

`C(A289207(n), A289207(A052938(n)))`
-/

namespace A191529.P15095118279600673056
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289207 n).toNat (A289207 (A052938 n).toNat).toNat

end

end A191529.P15095118279600673056

namespace A191529

/-- `C(A289207(n), A289207(A052938(n)))` -/
def P15095118279600673056.Spec : Prop :=
  ∀ n, (P15095118279600673056.a n : ℤ) = A191529 n

end A191529

/-! ## A191529.P2619328747611645436

`A144225(A236283(n+1))`
-/

namespace A191529.P2619328747611645436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A236283 (n + 1)).toNat

end

end A191529.P2619328747611645436

namespace A191529

/-- `A144225(A236283(n+1))` -/
def P2619328747611645436.Spec : Prop :=
  ∀ n, P2619328747611645436.a n = A191529 n

end A191529

/-! ## A191529.P9330355496684391740

`A144225(A340528(n+2))`
-/

namespace A191529.P9330355496684391740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A340528 (n + 2)).toNat

end

end A191529.P9330355496684391740

namespace A191529

/-- `A144225(A340528(n+2))` -/
def P9330355496684391740.Spec : Prop :=
  ∀ n, P9330355496684391740.a n = A191529 n

end A191529

/-!
# A191530: Triangle read by rows: T(n,k) is the number of dispersed Dyck paths of semilength n (i.e., Motzkin paths of length n with no (1,0)-steps at positive heights) for which the sum of the lengths of the initial and final horizontal segments is k (0<=k<=n).

The programs for A191530, there is no canonical definition to state claims against.
-/

/-! ## A191530.P695208367776500674

`xor(A053121(n), A285006(A339067(n+1)))`
-/

namespace A191530.P695208367776500674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053121 n) (A285006 (A339067 (n + 1)).toNat)

end

end A191530.P695208367776500674

/-! ## A191530.P11714372863109508263

`xor(A285006(A339067(n+1)), A322378(n))`
-/

namespace A191530.P11714372863109508263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A285006 (A339067 (n + 1)).toNat) (A322378 n)

end

end A191530.P11714372863109508263

/-! ## A191530.P10916643981967139490

`xor(A053121(n), A102683(A001497(n)))`
-/

namespace A191530.P10916643981967139490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053121 n) (A102683 (A001497 n).toNat)

end

end A191530.P10916643981967139490

/-! ## A191530.P6898119305500652808

`xor(A053121(n), A102683(A033842(n)))`
-/

namespace A191530.P6898119305500652808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A053121 n) (A102683 (A033842 n).toNat)

end

end A191530.P6898119305500652808

/-! ## A191530.P10426496081873637010

`xor(A102683(A001497(n)), A322378(n))`
-/

namespace A191530.P10426496081873637010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A102683 (A001497 n).toNat) (A322378 n)

end

end A191530.P10426496081873637010

/-!
# A191531: Sum of lengths of initial and final horizontal segments over all dispersed Dyck paths of semilength n (i.e., over all Motzkin paths of length n with no (1,0)-steps at positive heights).

The programs for A191531, the canonical program `A191531.P12400038727558931515` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191531 has offset 0).

The definition of A191531 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191531.P12400038727558931515

`∑[A063886(n)-1]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191531

/-- `∑[A063886(n)-1]` -/
def P12400038727558931515.Spec : Prop :=
  ∀ n, P12400038727558931515.a n = A191531 n

theorem P12400038727558931515.correct : P12400038727558931515.Spec := by
  intro n
  simp only [A191531]

end A191531

/-! ## A191531.P4251510598900025808

`∑[A182027(n+1)]-(n+2)`
-/

namespace A191531.P4251510598900025808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 2 : ℤ)

end

end A191531.P4251510598900025808

namespace A191531

/-- `∑[A182027(n+1)]-(n+2)` -/
def P4251510598900025808.Spec : Prop :=
  ∀ n, P4251510598900025808.a n = A191531 n

end A191531

/-! ## A191531.P5828499524778937498

`2*A072100(n+1)-(n+2)`
-/

namespace A191531.P5828499524778937498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A072100 (n + 1) - (n + 2 : ℤ)

end

end A191531.P5828499524778937498

namespace A191531

/-- `2*A072100(n+1)-(n+2)` -/
def P5828499524778937498.Spec : Prop :=
  ∀ n, P5828499524778937498.a n = A191531 n

end A191531

/-! ## A191531.P13256526468302990953

`∑[∑[char[2*n]]*A089408(n+1)-1]`
-/

namespace A191531.P13256526468302990953
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A089408 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P13256526468302990953

namespace A191531

/-- `∑[∑[char[2*n]]*A089408(n+1)-1]` -/
def P13256526468302990953.Spec : Prop :=
  ∀ n, P13256526468302990953.a n = A191531 n

end A191531

/-! ## A191531.P8745037782522267908

`∑[A182027(A326178(n))-1]`
-/

namespace A191531.P8745037782522267908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182027 (A326178 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P8745037782522267908

namespace A191531

/-- `∑[A182027(A326178(n))-1]` -/
def P8745037782522267908.Spec : Prop :=
  ∀ n, P8745037782522267908.a n = A191531 n

end A191531

/-! ## A191531.P6760429079591844998

`A001478(n+1)+∑[A063886(n)]`
-/

namespace A191531.P6760429079591844998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P6760429079591844998

namespace A191531

/-- `A001478(n+1)+∑[A063886(n)]` -/
def P6760429079591844998.Spec : Prop :=
  ∀ n, P6760429079591844998.a n = A191531 n

end A191531

/-! ## A191531.P1231880108843375982

`∑[A050168(n)]-(A001405(n)+n)`
-/

namespace A191531.P1231880108843375982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A001405 n + (n : ℤ))

end

end A191531.P1231880108843375982

namespace A191531

/-- `∑[A050168(n)]-(A001405(n)+n)` -/
def P1231880108843375982.Spec : Prop :=
  ∀ n, P1231880108843375982.a n = A191531 n

end A191531

/-! ## A191531.P15565969316329654515

`∑[A001405(n)-A210628(n)]-n`
-/

namespace A191531.P15565969316329654515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n - A210628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A191531.P15565969316329654515

namespace A191531

/-- `∑[A001405(n)-A210628(n)]-n` -/
def P15565969316329654515.Spec : Prop :=
  ∀ n, P15565969316329654515.a n = A191531 n

end A191531

/-! ## A191531.P15006566312735781541

`∑[A210736(n+1)-A210628(n)]-n`
-/

namespace A191531.P15006566312735781541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (n + 1) - A210628 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A191531.P15006566312735781541

namespace A191531

/-- `∑[A210736(n+1)-A210628(n)]-n` -/
def P15006566312735781541.Spec : Prop :=
  ∀ n, P15006566312735781541.a n = A191531 n

end A191531

/-! ## A191531.P7577832857436309949

`∑[A000225(n)-A307768(n)]`
-/

namespace A191531.P7577832857436309949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n - A307768 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P7577832857436309949

namespace A191531

/-- `∑[A000225(n)-A307768(n)]` -/
def P7577832857436309949.Spec : Prop :=
  ∀ n, P7577832857436309949.a n = A191531 n

theorem P7577832857436309949.correct : P7577832857436309949.Spec := by
  intro n
  simp only [A191531, Nat.add_sub_cancel, A191531.P7577832857436309949.f1, A191531.P7577832857436309949.a, A191531.P12400038727558931515.f1, A191531.P12400038727558931515.a, A000225, A000225.P6535533121115206393.a, A063886, A063886.P2008880257839641201.a, A307768, A307768.P13717369919277474039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191531

/-! ## A191531.P5229221965519995141

`∑[A000051(n)-(A307768(n)+2)]`
-/

namespace A191531.P5229221965519995141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n - (A307768 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P5229221965519995141

namespace A191531

/-- `∑[A000051(n)-(A307768(n)+2)]` -/
def P5229221965519995141.Spec : Prop :=
  ∀ n, P5229221965519995141.a n = A191531 n

theorem P5229221965519995141.correct : P5229221965519995141.Spec := by
  intro n
  simp only [A191531, Nat.add_sub_cancel, A191531.P5229221965519995141.f1, A191531.P5229221965519995141.a, A191531.P12400038727558931515.f1, A191531.P12400038727558931515.a, A000051, A000051.P14067217022188782580.a, A063886, A063886.P2008880257839641201.a, A307768, A307768.P13717369919277474039.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191531

/-! ## A191531.P3393304850762553487

`∑[A172068(∑[A110654(n)])-1]`
-/

namespace A191531.P3393304850762553487
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172068 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P3393304850762553487

namespace A191531

/-- `∑[A172068(∑[A110654(n)])-1]` -/
def P3393304850762553487.Spec : Prop :=
  ∀ n, P3393304850762553487.a n = A191531 n

end A191531

/-! ## A191531.P7108242590509279999

`∑[A237520(∑[A110654(n)])-1]`
-/

namespace A191531.P7108242590509279999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237520 (∑ j ∈ Finset.range (n + 1), f2 j).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191531.P7108242590509279999

namespace A191531

/-- `∑[A237520(∑[A110654(n)])-1]` -/
def P7108242590509279999.Spec : Prop :=
  ∀ n, P7108242590509279999.a n = A191531 n

end A191531

/-!
# A191532: Triangle T(n,k) read by rows: T(n,n) = 2n+1, T(n,k)=k for k<n.

The programs for A191532, the canonical program `A191532.P6208350236830388762` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191532 has offset 0).

The definition of A191532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191532.P1676957586869860996

`col(n)+1-Δ[col(n)]`
-/

namespace A191532.P1676957586869860996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) + (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A191532.P1676957586869860996

namespace A191532

/-- `col(n)+1-Δ[col(n)]` -/
def P1676957586869860996.Spec : Prop :=
  ∀ n, P1676957586869860996.a n = A191532 n

end A191532

/-! ## A191532.P5718832041844769249

`col(n)+Δ[C(row(n)+1, 2)]`
-/

namespace A191532.P5718832041844769249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A191532.P5718832041844769249

namespace A191532

/-- `col(n)+Δ[C(row(n)+1, 2)]` -/
def P5718832041844769249.Spec : Prop :=
  ∀ n, P5718832041844769249.a n = A191532 n

end A191532

/-! ## A191532.P11661942763325286641

`1+2*col(n)-col(n+1)`
-/

namespace A191532.P11661942763325286641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 2 * SequenceMachineLib.triCol n : ℤ) - (SequenceMachineLib.triCol (n + 1) : ℤ)

end

end A191532.P11661942763325286641

namespace A191532

/-- `1+2*col(n)-col(n+1)` -/
def P11661942763325286641.Spec : Prop :=
  ∀ n, P11661942763325286641.a n = A191532 n

end A191532

/-! ## A191532.P11641136077896252207

`row((n+1)*Δ[row(n)])+col(n)`
-/

namespace A191532.P11641136077896252207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat + SequenceMachineLib.triCol n

end

end A191532.P11641136077896252207

namespace A191532

/-- `row((n+1)*Δ[row(n)])+col(n)` -/
def P11641136077896252207.Spec : Prop :=
  ∀ n, (P11641136077896252207.a n : ℤ) = A191532 n

end A191532

/-! ## A191532.P1170861674790590246

`col(n)+(col(n)+1)*C(col(n), row(n))`
-/

namespace A191532.P1170861674790590246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + (SequenceMachineLib.triCol n + 1) * Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A191532.P1170861674790590246

namespace A191532

/-- `col(n)+(col(n)+1)*C(col(n), row(n))` -/
def P1170861674790590246.Spec : Prop :=
  ∀ n, (P1170861674790590246.a n : ℤ) = A191532 n

end A191532

/-! ## A191532.P3290594065282450276

`col(n)+C(col(n)+C(col(n), row(n)), row(n))`
-/

namespace A191532.P3290594065282450276
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)) (SequenceMachineLib.triRow n)

end

end A191532.P3290594065282450276

namespace A191532

/-- `col(n)+C(col(n)+C(col(n), row(n)), row(n))` -/
def P3290594065282450276.Spec : Prop :=
  ∀ n, (P3290594065282450276.a n : ℤ) = A191532 n

end A191532

/-! ## A191532.P12640312540911522642

`A158405(n+1)-col(n+1)`
-/

namespace A191532.P12640312540911522642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - (SequenceMachineLib.triCol (n + 1) : ℤ)

end

end A191532.P12640312540911522642

namespace A191532

/-- `A158405(n+1)-col(n+1)` -/
def P12640312540911522642.Spec : Prop :=
  ∀ n, P12640312540911522642.a n = A191532 n

end A191532

/-! ## A191532.P6208350236830388762

`A026741(val(A055236(n), 2))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191532

/-- `A026741(val(A055236(n), 2))` -/
def P6208350236830388762.Spec : Prop :=
  ∀ n, P6208350236830388762.a n = A191532 n

theorem P6208350236830388762.correct : P6208350236830388762.Spec := by
  intro n
  simp only [A191532]

end A191532

/-! ## A191532.P12641466964415514294

`A127648(n)+A002262(n)`
-/

namespace A191532.P12641466964415514294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n + A002262 n

end

end A191532.P12641466964415514294

namespace A191532

/-- `A127648(n)+A002262(n)` -/
def P12641466964415514294.Spec : Prop :=
  ∀ n, P12641466964415514294.a n = A191532 n

end A191532

/-! ## A191532.P9638948626727181089

`A114219(n)*A131843(n)`
-/

namespace A191532.P9638948626727181089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114219 n * A131843 n

end

end A191532.P9638948626727181089

namespace A191532

/-- `A114219(n)*A131843(n)` -/
def P9638948626727181089.Spec : Prop :=
  ∀ n, P9638948626727181089.a n = A191532 n

end A191532

/-! ## A191532.P7277152730122845070

`A127648(n)+log2(A059268(n))`
-/

namespace A191532.P7277152730122845070
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A127648 n : ℝ) + Real.logb 2 (A059268 n : ℝ)

end

end A191532.P7277152730122845070

namespace A191532

/-- `A127648(n)+log2(A059268(n))` -/
def P7277152730122845070.Spec : Prop :=
  ∀ n, P7277152730122845070.a n = (A191532 n : ℝ)

end A191532

/-! ## A191532.P14364949720424160731

`A128136(n+1)-A159797(n)`
-/

namespace A191532.P14364949720424160731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128136 (n + 1) - A159797 n

end

end A191532.P14364949720424160731

namespace A191532

/-- `A128136(n+1)-A159797(n)` -/
def P14364949720424160731.Spec : Prop :=
  ∀ n, P14364949720424160731.a n = A191532 n

end A191532

/-! ## A191532.P18131807235346513602

`A127648(n)+n-A057944(n)`
-/

namespace A191532.P18131807235346513602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127648 n + ((n : ℤ) - A057944 n)

end

end A191532.P18131807235346513602

namespace A191532

/-- `A127648(n)+n-A057944(n)` -/
def P18131807235346513602.Spec : Prop :=
  ∀ n, P18131807235346513602.a n = A191532 n

end A191532

/-! ## A191532.P3303139836418248664

`A002262(n)+Δ[A061885(n)]-1`
-/

namespace A191532.P3303139836418248664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (f1 (n + 1) - f1 n - 1)

end

end A191532.P3303139836418248664

namespace A191532

/-- `A002262(n)+Δ[A061885(n)]-1` -/
def P3303139836418248664.Spec : Prop :=
  ∀ n, P3303139836418248664.a n = A191532 n

end A191532

/-! ## A191532.P724235512321090160

`A002260(n+1)+A127648(n)-1`
-/

namespace A191532.P724235512321090160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A127648 n - 1)

end

end A191532.P724235512321090160

namespace A191532

/-- `A002260(n+1)+A127648(n)-1` -/
def P724235512321090160.Spec : Prop :=
  ∀ n, P724235512321090160.a n = A191532 n

end A191532

/-! ## A191532.P6027525564478925462

`A128138(n+1)+A051340(n)-1`
-/

namespace A191532.P6027525564478925462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128138 (n + 1) + (A051340 n - 1)

end

end A191532.P6027525564478925462

namespace A191532

/-- `A128138(n+1)+A051340(n)-1` -/
def P6027525564478925462.Spec : Prop :=
  ∀ n, P6027525564478925462.a n = A191532 n

end A191532

/-! ## A191532.P8022055916345752797

`A158405(n+1)-A048151(n+1)`
-/

namespace A191532.P8022055916345752797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (n + 1) - A048151 (n + 1)

end

end A191532.P8022055916345752797

namespace A191532

/-- `A158405(n+1)-A048151(n+1)` -/
def P8022055916345752797.Spec : Prop :=
  ∀ n, P8022055916345752797.a n = A191532 n

end A191532

/-! ## A191532.P14154835776957453022

`A127775(n+1)+A128227(n)-1`
-/

namespace A191532.P14154835776957453022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127775 (n + 1) + (A128227 n - 1)

end

end A191532.P14154835776957453022

namespace A191532

/-- `A127775(n+1)+A128227(n)-1` -/
def P14154835776957453022.Spec : Prop :=
  ∀ n, P14154835776957453022.a n = A191532 n

end A191532

/-! ## A191532.P14729756205912513415

`A002260(n+1)-Δ[log2(A059268(n))]`
-/

namespace A191532.P14729756205912513415
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℝ) - (f1 (n + 1) - f1 n)

end

end A191532.P14729756205912513415

namespace A191532

/-- `A002260(n+1)-Δ[log2(A059268(n))]` -/
def P14729756205912513415.Spec : Prop :=
  ∀ n, P14729756205912513415.a n = (A191532 n : ℝ)

end A191532

/-! ## A191532.P17813639959679196226

`A002262(n)+Δ[A000124(A003056(n))]`
-/

namespace A191532.P17813639959679196226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (f1 (n + 1) - f1 n)

end

end A191532.P17813639959679196226

namespace A191532

/-- `A002262(n)+Δ[A000124(A003056(n))]` -/
def P17813639959679196226.Spec : Prop :=
  ∀ n, P17813639959679196226.a n = A191532 n

end A191532

/-!
# A191533: Magic constants of pandiagonal magic squares of order 4 composed of distinct primes.

The programs for A191533, there is no canonical definition to state claims against.
-/

/-! ## A191533.P10985274485898974939

`A008458(eq[A338138(n+1), A353048(n+1)])`
-/

namespace A191533.P10985274485898974939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191533.P10985274485898974939

/-!
# A191537: Dispersion of (4*n-floor(n*sqrt(2))), by antidiagonals.

The programs for A191537, there is no canonical definition to state claims against.
-/

/-! ## A191537.P13386341948802765263

`A132827(n)-A133010(A085140(n))`
-/

namespace A191537.P13386341948802765263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A133010 (A085140 n).toNat

end

end A191537.P13386341948802765263

/-! ## A191537.P1413152062597737631

`A132827(n)-A340998(A191723(n+1))`
-/

namespace A191537.P1413152062597737631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A340998 ((A191723 (n + 1)).toNat + 140)

end

end A191537.P1413152062597737631

/-! ## A191537.P14272950673520408006

`(A132827(n)-A046785(n))%A000041(A022130(n))`
-/

namespace A191537.P14272950673520408006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132827 n - A046785 n) (A000041 (A022130 n).toNat)

end

end A191537.P14272950673520408006

/-! ## A191537.P9105963930269288167

`A008683(A000079(n+2))+A132827(n)-A046785(n)`
-/

namespace A191537.P9105963930269288167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A000079 (n + 2)).toNat + (A132827 n - A046785 n)

end

end A191537.P9105963930269288167

/-! ## A191537.P2115563890274588135

`A132827(n)-A340998(A358946(n+1))`
-/

namespace A191537.P2115563890274588135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132827 n - A340998 ((A358946 (n + 1)).toNat + 140)

end

end A191537.P2115563890274588135

/-!
# A191540: Dispersion of (floor(2*n*sqrt(2))), by antidiagonals.

The programs for A191540, there is no canonical definition to state claims against.
-/

/-! ## A191540.P12148581074671157159

`A254051(A002024(n+1)²-n)-A326292(A264285(n+1))`
-/

namespace A191540.P12148581074671157159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat - A326292 (A264285 (n + 1)).toNat

end

end A191540.P12148581074671157159

/-!
# A191543: Dispersion of (floor(8*n/3)), by antidiagonals.

The programs for A191543, there is no canonical definition to state claims against.
-/

/-! ## A191543.P15308162923057814509

`A191455(A077168(n))-A027870(n)`
-/

namespace A191543.P15308162923057814509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (A077168 n).toNat - A027870 n

end

end A191543.P15308162923057814509

/-! ## A191543.P16035532160070661510

`A191455(n+1)-A055641(A000051(n))`
-/

namespace A191543.P16035532160070661510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (n + 1) - A055641 (A000051 n).toNat

end

end A191543.P16035532160070661510

/-! ## A191543.P16142502751447666828

`A191455(n+1)-A055641(A000079(n))`
-/

namespace A191543.P16142502751447666828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (n + 1) - A055641 (A000079 n).toNat

end

end A191543.P16142502751447666828

/-! ## A191543.P16178742636289670048

`A191455(n+1)-A055641(A168614(n))`
-/

namespace A191543.P16178742636289670048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (n + 1) - A055641 (A168614 n).toNat

end

end A191543.P16178742636289670048

/-! ## A191543.P4628358341869222899

`A191455(n+1)+A178798(A069183(n))`
-/

namespace A191543.P4628358341869222899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191455 (n + 1) + A178798 (A069183 n).toNat

end

end A191543.P4628358341869222899

/-!
# A191546: Smallest prime factor of prime(n)^n + 1 having the form 2*k*n+1.

The programs for A191546, there is no canonical definition to state claims against.
-/

/-! ## A191546.P8604797721768622735

`2*(n+1)*A191547(n+1)+1`
-/

namespace A191546.P8604797721768622735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) * A191547 (n + 1) + 1

end

end A191546.P8604797721768622735

/-! ## A191546.P13724310158917837081

`A191547(n+1)*A317108(n+1)+1`
-/

namespace A191546.P13724310158917837081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191547 (n + 1) * A317108 (n + 1) + 1

end

end A191546.P13724310158917837081

/-! ## A191546.P16748653780782658888

`A191547(n+1)*A317440(n+1)+1`
-/

namespace A191546.P16748653780782658888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191547 (n + 1) * A317440 (n + 1) + 1

end

end A191546.P16748653780782658888

/-! ## A191546.P12829056287028302606

`or(1, A051755(n+2)*A191547(n+1))`
-/

namespace A191546.P12829056287028302606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051755 (n + 2) * A191547 (n + 1))

end

end A191546.P12829056287028302606

/-!
# A191547: a(n) is the smallest number k such that 2*k*n + 1 is a prime dividing prime(n)^n + 1.

The programs for A191547, there is no canonical definition to state claims against.
-/

/-! ## A191547.P17174356550262853560

`floor(A191546(n+1)/A004277(n+1))`
-/

namespace A191547.P17174356550262853560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191546 (n + 1) : ℚ) / (A004277 (n + 1) : ℚ)⌋

end

end A191547.P17174356550262853560

/-! ## A191547.P17313810103328209746

`floor(A191546(n+1)/A005843(n+1))`
-/

namespace A191547.P17313810103328209746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191546 (n + 1) : ℚ) / (A005843 (n + 1) : ℚ)⌋

end

end A191547.P17313810103328209746

/-! ## A191547.P6340886927656881830

`floor(A191546(n+1)/A317108(n+1))`
-/

namespace A191547.P6340886927656881830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191546 (n + 1) : ℚ) / (A317108 (n + 1) : ℚ)⌋

end

end A191547.P6340886927656881830

/-! ## A191547.P4786026957905903240

`floor(A191546(n+1)/A317440(n+1))`
-/

namespace A191547.P4786026957905903240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191546 (n + 1) : ℚ) / (A317440 (n + 1) : ℚ)⌋

end

end A191547.P4786026957905903240

/-! ## A191547.P18391802642531313735

`floor(A191546(n+1)/A051755(n+2))`
-/

namespace A191547.P18391802642531313735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191546 (n + 1) : ℚ) / (A051755 (n + 2) : ℚ)⌋

end

end A191547.P18391802642531313735

/-!
# A191548: Smallest prime factor of prime(n)^n - 1 having the form k*n + 1.

The programs for A191548, there is no canonical definition to state claims against.
-/

/-! ## A191548.P1473390213943903316

`(n+3)*A191549(n+3)+1`
-/

namespace A191548.P1473390213943903316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A191549 (n + 3) + 1

end

end A191548.P1473390213943903316

/-!
# A191549: Least number k such that kn + 1 is a prime dividing prime(n)^n - 1.

The programs for A191549, there is no canonical definition to state claims against.
-/

/-! ## A191549.P11663040412845529114

`floor(A191548(n+3)/(n+3))`
-/

namespace A191549.P11663040412845529114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A191548 (n + 3) : ℚ) / (n + 3 : ℚ)⌋

end

end A191549.P11663040412845529114

/-! ## A191549.P10403463303919779251

`round(A191548(n+3)/A289436(2*(n+3)))`
-/

namespace A191549.P10403463303919779251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A191548 (n + 3) : ℚ) / (A289436 (2 * (n + 3)) : ℚ))

end

end A191549.P10403463303919779251

/-! ## A191549.P10163450173350452853

`(A191548(n+3)-A007318(C(2, n)))/(n+3)`
-/

namespace A191549.P10163450173350452853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191548 (n + 3) - A007318 (Nat.choose 2 n) : ℚ) / (n + 3 : ℚ)

end

end A191549.P10163450173350452853

/-!
# A191554: a(n) = Product_{k=1..n} prime(k)^(2^(k-1)).

The programs for A191554, there is no canonical definition to state claims against.
-/

/-! ## A191554.P9098105676960222258

`∏[A000040(n+1)^2^n]`
-/

namespace A191554.P9098105676960222258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191554.P9098105676960222258

/-!
# A191555: a(n) = Product_{k=1..n} prime(k)^(2^(n-k)).

The programs for A191555, the canonical program `A191555.P8776187152831103570` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191555 has offset 0).

The definition of A191555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191555.P8776187152831103570

`a(n-1)²*A000040(n)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191555

/-- `a(n-1)²*A000040(n)` -/
def P8776187152831103570.Spec : Prop :=
  ∀ n, P8776187152831103570.a n = A191555 n

theorem P8776187152831103570.correct : P8776187152831103570.Spec := by
  intro n
  simp only [A191555]

end A191555

/-! ## A191555.P7902907326391971718

`a(n-1)²*record[A006530(n+1)]` with `a(0)=1`
-/

namespace A191555.P7902907326391971718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191555.P7902907326391971718

namespace A191555

/-- `a(n-1)²*record[A006530(n+1)]` -/
def P7902907326391971718.Spec : Prop :=
  ∀ n, P7902907326391971718.a n = A191555 n

end A191555

/-! ## A191555.P1857881393585662

`a(n-1)²*record[A020639(n+1)]` with `a(0)=1`
-/

namespace A191555.P1857881393585662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191555.P1857881393585662

namespace A191555

/-- `a(n-1)²*record[A020639(n+1)]` -/
def P1857881393585662.Spec : Prop :=
  ∀ n, P1857881393585662.a n = A191555 n

end A191555

/-!
# A191558: a(n) = 0 if n prime, otherwise n.

The programs for A191558, the canonical program `A191558.P14009675995309042097` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191558 has offset 1).

The definition of A191558 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191558.P14009675995309042097

`n+1-A061397(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191558

/-- `n+1-A061397(n+1)` -/
def P14009675995309042097.Spec : Prop :=
  ∀ n, P14009675995309042097.a n = A191558 (n + 1)

theorem P14009675995309042097.correct : P14009675995309042097.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel]

end A191558

/-! ## A191558.P14091315179924690962

`(n+1)*A005171(n+1)`
-/

namespace A191558.P14091315179924690962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005171 (n + 1)

end

end A191558.P14091315179924690962

namespace A191558

/-- `(n+1)*A005171(n+1)` -/
def P14091315179924690962.Spec : Prop :=
  ∀ n, P14091315179924690962.a n = A191558 (n + 1)

theorem P14091315179924690962.correct : P14091315179924690962.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel, A191558.P14091315179924690962.a, A191558.P14009675995309042097.a, A005171, A005171.P15860856746370777121.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191558

/-! ## A191558.P1705147401195201612

`1-∑{p}[n+1, C(#, n)]+n`
-/

namespace A191558.P1705147401195201612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n : ℕ) : ℤ) + (n : ℤ)

end

end A191558.P1705147401195201612

namespace A191558

/-- `1-∑{p}[n+1, C(#, n)]+n` -/
def P1705147401195201612.Spec : Prop :=
  ∀ n, P1705147401195201612.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P6776468832251268366

`xor(n+1, ∑{p}[1+n, C(#, n)])`
-/

namespace A191558.P6776468832251268366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (∑ p ∈ Nat.primeFactors (f1 n), Nat.choose p n)

end

end A191558.P6776468832251268366

namespace A191558

/-- `xor(n+1, ∑{p}[1+n, C(#, n)])` -/
def P6776468832251268366.Spec : Prop :=
  ∀ n, (P6776468832251268366.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P14562061887600005718

`lcm(n+1, ∏{p}[n+1, #%(n+1)])`
-/

namespace A191558.P14562061887600005718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p % (n + 1))

end

end A191558.P14562061887600005718

namespace A191558

/-- `lcm(n+1, ∏{p}[n+1, #%(n+1)])` -/
def P14562061887600005718.Spec : Prop :=
  ∀ n, (P14562061887600005718.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P8160084123919532823

`C(n+1, ∏{d}[∑{p}[1+n, C(#, n)], #]²)`
-/

namespace A191558.P8160084123919532823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ((∏ d ∈ Nat.divisors (f1 n), d) ^ 2)

end

end A191558.P8160084123919532823

namespace A191558

/-- `C(n+1, ∏{d}[∑{p}[1+n, C(#, n)], #]²)` -/
def P8160084123919532823.Spec : Prop :=
  ∀ n, (P8160084123919532823.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P9873718253922739268

`Δ[A101203(n)]`
-/

namespace A191558.P9873718253922739268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191558.P9873718253922739268

namespace A191558

/-- `Δ[A101203(n)]` -/
def P9873718253922739268.Spec : Prop :=
  ∀ n, P9873718253922739268.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P7301646524566819102

`(n+1)%A151800(n)`
-/

namespace A191558.P7301646524566819102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A151800 n)

end

end A191558.P7301646524566819102

namespace A191558

/-- `(n+1)%A151800(n)` -/
def P7301646524566819102.Spec : Prop :=
  ∀ n, P7301646524566819102.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P12395289964394258237

`A014683(n+1)%(n+2)`
-/

namespace A191558.P12395289964394258237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014683 (n + 1)) (n + 2 : ℤ)

end

end A191558.P12395289964394258237

namespace A191558

/-- `A014683(n+1)%(n+2)` -/
def P12395289964394258237.Spec : Prop :=
  ∀ n, P12395289964394258237.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P3541006489285752228

`lcm(n+1, A063918(n+1))`
-/

namespace A191558.P3541006489285752228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A063918 (n + 1))

end

end A191558.P3541006489285752228

namespace A191558

/-- `lcm(n+1, A063918(n+1))` -/
def P3541006489285752228.Spec : Prop :=
  ∀ n, (P3541006489285752228.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P3953482529994739017

`C(n+1, A175028(n+1))`
-/

namespace A191558.P3953482529994739017
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A175028 (n + 1)).toNat

end

end A191558.P3953482529994739017

namespace A191558

/-- `C(n+1, A175028(n+1))` -/
def P3953482529994739017.Spec : Prop :=
  ∀ n, (P3953482529994739017.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P1908503093535244451

`C(C(A113523(n+1), n), n)`
-/

namespace A191558.P1908503093535244451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose (A113523 (n + 1)).toNat n) n

end

end A191558.P1908503093535244451

namespace A191558

/-- `C(C(A113523(n+1), n), n)` -/
def P1908503093535244451.Spec : Prop :=
  ∀ n, (P1908503093535244451.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P12641710241455154890

`C(n+1, A089026(n+1)²)`
-/

namespace A191558.P12641710241455154890
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) (A089026 (n + 1) ^ 2).toNat

end

end A191558.P12641710241455154890

namespace A191558

/-- `C(n+1, A089026(n+1)²)` -/
def P12641710241455154890.Spec : Prop :=
  ∀ n, (P12641710241455154890.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P7925738974013573390

`(n+1)*(1-A010051(n+1))`
-/

namespace A191558.P7925738974013573390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (1 - A010051 (n + 1))

end

end A191558.P7925738974013573390

namespace A191558

/-- `(n+1)*(1-A010051(n+1))` -/
def P7925738974013573390.Spec : Prop :=
  ∀ n, P7925738974013573390.a n = A191558 (n + 1)

theorem P7925738974013573390.correct : P7925738974013573390.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel, A191558.P7925738974013573390.a, A191558.P14009675995309042097.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191558

/-! ## A191558.P1249702181494582710

`2*(n+1)-A143545(n+1)`
-/

namespace A191558.P1249702181494582710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 1) : ℤ) - A143545 (n + 1)

end

end A191558.P1249702181494582710

namespace A191558

/-- `2*(n+1)-A143545(n+1)` -/
def P1249702181494582710.Spec : Prop :=
  ∀ n, P1249702181494582710.a n = A191558 (n + 1)

theorem P1249702181494582710.correct : P1249702181494582710.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel, A191558.P1249702181494582710.a, A191558.P14009675995309042097.a, A061397, A061397.P17730824645895443051.a, A143545, A143545.P10821814786316977648.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191558

/-! ## A191558.P17187531777178182725

`A175029(n+1)-2*(n+1)`
-/

namespace A191558.P17187531777178182725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175029 (n + 1) - (2 * (n + 1) : ℤ)

end

end A191558.P17187531777178182725

namespace A191558

/-- `A175029(n+1)-2*(n+1)` -/
def P17187531777178182725.Spec : Prop :=
  ∀ n, P17187531777178182725.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P5336845214386627960

`3*(n+1)-A175030(n+1)`
-/

namespace A191558.P5336845214386627960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - A175030 (n + 1)

end

end A191558.P5336845214386627960

namespace A191558

/-- `3*(n+1)-A175030(n+1)` -/
def P5336845214386627960.Spec : Prop :=
  ∀ n, P5336845214386627960.a n = A191558 (n + 1)

end A191558

/-! ## A191558.P15064368204274040369

`(n+1)*(A014684(n+1)-n)`
-/

namespace A191558.P15064368204274040369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A014684 (n + 1) - (n : ℤ))

end

end A191558.P15064368204274040369

namespace A191558

/-- `(n+1)*(A014684(n+1)-n)` -/
def P15064368204274040369.Spec : Prop :=
  ∀ n, P15064368204274040369.a n = A191558 (n + 1)

theorem P15064368204274040369.correct : P15064368204274040369.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel, A191558.P15064368204274040369.a, A191558.P14009675995309042097.a, A014684, A014684.P14857736222881351984.a, A061397, A061397.P17730824645895443051.a, A000027, A000027.P10331202704469894836.a, A005171, A005171.P15860856746370777121.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191558

/-! ## A191558.P5126757337049170141

`(n+1)*char[A018252(n+1)-1]`
-/

namespace A191558.P5126757337049170141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A191558.P5126757337049170141

namespace A191558

/-- `(n+1)*char[A018252(n+1)-1]` -/
def P5126757337049170141.Spec : Prop :=
  ∀ n, (P5126757337049170141.a n : ℤ) = A191558 (n + 1)

end A191558

/-! ## A191558.P4975247846034169765

`(n+1)*(A113636(n+1)-(n+1))`
-/

namespace A191558.P4975247846034169765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A113636 (n + 1) - (n + 1 : ℤ))

end

end A191558.P4975247846034169765

namespace A191558

/-- `(n+1)*(A113636(n+1)-(n+1))` -/
def P4975247846034169765.Spec : Prop :=
  ∀ n, P4975247846034169765.a n = A191558 (n + 1)

theorem P4975247846034169765.correct : P4975247846034169765.Spec := by
  intro n
  simp only [A191558, Nat.add_sub_cancel, A191558.P4975247846034169765.a, A191558.P14009675995309042097.a, A061397, A061397.P17730824645895443051.a, A113636, A113636.P387307132510664875.a, A000027, A000027.P10331202704469894836.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A014684, A014684.P14857736222881351984.a, A005171, A005171.P15860856746370777121.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191558

/-!
# A191559: a(n) = 25^(4*n+1).

The programs for A191559, there is no canonical definition to state claims against.
-/

/-! ## A191559.P13272490251856438751

`5^(8*n+2)`
-/

namespace A191559.P13272490251856438751
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (8 * n + 2)

end

end A191559.P13272490251856438751

/-! ## A191559.P8336647064929824364

`(5^or(1, 4*n))²`
-/

namespace A191559.P8336647064929824364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ Nat.lor 1 (4 * n)) ^ 2

end

end A191559.P8336647064929824364

/-! ## A191559.P8884767619317125688

`(5^xor(1, 4*n))²`
-/

namespace A191559.P8884767619317125688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ Nat.xor 1 (4 * n)) ^ 2

end

end A191559.P8884767619317125688

/-! ## A191559.P979152316939414714

`(5^Δ[C(2*n, 2)])²`
-/

namespace A191559.P979152316939414714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)) ^ 2

end

end A191559.P979152316939414714

/-! ## A191559.P16634438477209869835

`record[(5^(xor(3, n)-2))²]`
-/

namespace A191559.P16634438477209869835
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 : ℚ) ^ ((Nat.xor 3 n : ℤ) - 2 : ℤ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191559.P16634438477209869835

/-!
# A191560: a(n) = 25^(4*n+3).

The programs for A191560, there is no canonical definition to state claims against.
-/

/-! ## A191560.P9751461957572352810

`record[25^xor(3, n)]`
-/

namespace A191560.P9751461957572352810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  25 ^ Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191560.P9751461957572352810

/-! ## A191560.P169108698325150817

`5^(8*n+6)`
-/

namespace A191560.P169108698325150817
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ (8 * n + 6)

end

end A191560.P169108698325150817

/-! ## A191560.P9137350551190789124

`record[(-5)^or(6, n)]`
-/

namespace A191560.P9137350551190789124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-5) ^ Nat.lor 6 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191560.P9137350551190789124

/-! ## A191560.P4416166954839910354

`(5^xor(3, 4*n))²`
-/

namespace A191560.P4416166954839910354
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (5 ^ Nat.xor 3 (4 * n)) ^ 2

end

end A191560.P4416166954839910354

/-! ## A191560.P1996263708065991015

`root(5, 1/record[xor(3, n)])²`
-/

namespace A191560.P1996263708065991015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((5 : ℝ) ^ (1 / (1 / (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) : ℝ))) ^ 2

end

end A191560.P1996263708065991015

/-!
# A191561: a(n) = 2^n mod 3*n.

The programs for A191561, the canonical program `A191561.P11500049019165056286` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191561 has offset 1).

The definition of A191561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191561.P11500049019165056286

`(2^(n+1))%(3*(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191561

/-- `(2^(n+1))%(3*(n+1))` -/
def P11500049019165056286.Spec : Prop :=
  ∀ n, (P11500049019165056286.a n : ℤ) = A191561 (n + 1)

theorem P11500049019165056286.correct : P11500049019165056286.Spec := by
  intro n
  simp only [A191561, Nat.add_sub_cancel]

end A191561

/-! ## A191561.P3561109379975754214

`A126646(n)%(3*(n+1))+1`
-/

namespace A191561.P3561109379975754214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126646 n) (3 * (n + 1) : ℤ) + 1

end

end A191561.P3561109379975754214

namespace A191561

/-- `A126646(n)%(3*(n+1))+1` -/
def P3561109379975754214.Spec : Prop :=
  ∀ n, P3561109379975754214.a n = A191561 (n + 1)

end A191561

/-! ## A191561.P13013499963588609149

`∑[A000079(n)]%(3*(n+1))+1`
-/

namespace A191561.P13013499963588609149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (3 * (n + 1) : ℤ) + 1

end

end A191561.P13013499963588609149

namespace A191561

/-- `∑[A000079(n)]%(3*(n+1))+1` -/
def P13013499963588609149.Spec : Prop :=
  ∀ n, P13013499963588609149.a n = A191561 (n + 1)

end A191561

/-! ## A191561.P5688574212336464065

`A255047(n+1)%(3*(n+1))+1`
-/

namespace A191561.P5688574212336464065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255047 (n + 1)) (3 * (n + 1) : ℤ) + 1

end

end A191561.P5688574212336464065

namespace A191561

/-- `A255047(n+1)%(3*(n+1))+1` -/
def P5688574212336464065.Spec : Prop :=
  ∀ n, P5688574212336464065.a n = A191561 (n + 1)

end A191561

/-! ## A191561.P2770689303739603164

`A000918(n+1)%(3*(n+1))+2`
-/

namespace A191561.P2770689303739603164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000918 (n + 1)) (3 * (n + 1) : ℤ) + 2

end

end A191561.P2770689303739603164

namespace A191561

/-- `A000918(n+1)%(3*(n+1))+2` -/
def P2770689303739603164.Spec : Prop :=
  ∀ n, P2770689303739603164.a n = A191561 (n + 1)

end A191561

/-! ## A191561.P3395000385153705162

`A000225(n+1)%A008486(n+1)+1`
-/

namespace A191561.P3395000385153705162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000225 (n + 1)) (A008486 (n + 1)) + 1

end

end A191561.P3395000385153705162

namespace A191561

/-- `A000225(n+1)%A008486(n+1)+1` -/
def P3395000385153705162.Spec : Prop :=
  ∀ n, P3395000385153705162.a n = A191561 (n + 1)

end A191561

/-!
# A191562: a(n) = 7^n mod 3*n.

The programs for A191562, the canonical program `A191562.P15085598730455755710` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191562 has offset 1).

The definition of A191562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191562.P15085598730455755710

`(7^(n+1))%(3*(n+1))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191562

/-- `(7^(n+1))%(3*(n+1))` -/
def P15085598730455755710.Spec : Prop :=
  ∀ n, (P15085598730455755710.a n : ℤ) = A191562 (n + 1)

theorem P15085598730455755710.correct : P15085598730455755710.Spec := by
  intro n
  simp only [A191562, Nat.add_sub_cancel]

end A191562

/-! ## A191562.P1867683770519182164

`A016777(∑[A198480(n)]%(n+1))`
-/

namespace A191562.P1867683770519182164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)).toNat

end

end A191562.P1867683770519182164

namespace A191562

/-- `A016777(∑[A198480(n)]%(n+1))` -/
def P1867683770519182164.Spec : Prop :=
  ∀ n, P1867683770519182164.a n = A191562 (n + 1)

end A191562

/-! ## A191562.P18113633546714858983

`A028310(A000420(n+1)%A008486(n+1))`
-/

namespace A191562.P18113633546714858983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A000420 (n + 1)) (A008486 (n + 1))).toNat

end

end A191562.P18113633546714858983

namespace A191562

/-- `A028310(A000420(n+1)%A008486(n+1))` -/
def P18113633546714858983.Spec : Prop :=
  ∀ n, P18113633546714858983.a n = A191562 (n + 1)

end A191562

/-! ## A191562.P992828305749985791

`(A000420((n+1)^A165581(n²))%A008486(n+1))^A165581(n²)`
-/

namespace A191562.P992828305749985791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A000420 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A165581 (n ^ 2) : ℤ))).toNat) (A008486 (n + 1)) : ℚ) ^ (A165581 (n ^ 2) : ℤ)

end

end A191562.P992828305749985791

namespace A191562

/-- `(A000420((n+1)^A165581(n²))%A008486(n+1))^A165581(n²)` -/
def P992828305749985791.Spec : Prop :=
  ∀ n, P992828305749985791.a n = (A191562 (n + 1) : ℚ)

end A191562

/-!
# A191563: For n >= 3, draw a regular n-sided polygon and its n*(n-3)/2 diagonals, so there are n*(n-1)/2 lines; a(n) is the number of ways to choose a subset of these lines (subsets differing by a rotation or reflection are regarded as identical). a(1)=1, a(2)=2 by convention.

The programs for A191563, there is no canonical definition to state claims against.
-/

/-! ## A191563.P14017061392737155443

`A175338(n!)+n`
-/

namespace A191563.P14017061392737155443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175338 (Nat.factorial n) + (n : ℤ)

end

end A191563.P14017061392737155443

/-!
# A191564: Expansion of exp(x*Bernoulli(x)) = 1+sum(n>0, a(n)/(n!)^2*x^n).

The programs for A191564, there is no canonical definition to state claims against.
-/

/-! ## A191564.P1594382995474436901

`A024012(n)*A186650(A298671(n))`
-/

namespace A191564.P1594382995474436901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024012 n * A186650 (A298671 n).toNat

end

end A191564.P1594382995474436901

/-! ## A191564.P4884065543189993934

`A179280(n)*A179285(A179274(n+1))`
-/

namespace A191564.P4884065543189993934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179280 n * A179285 (A179274 (n + 1)).toNat

end

end A191564.P4884065543189993934

/-!
# A191566: a(n) = 7*a(n-1) + (-1)^n*6*2^(n-1).

The programs for A191566, the canonical program `A191566.P6592603921610780210` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191566 has offset 0).

The definition of A191566 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191566.P12671443545049913005

`ogf((1-4x)/(1-5x-14x^2))`
-/

namespace A191566.P12671443545049913005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4] [1, -5, -14] n

end

end A191566.P12671443545049913005

namespace A191566

/-- `ogf((1-4x)/(1-5x-14x^2))` -/
def P12671443545049913005.Spec : Prop :=
  ∀ n, P12671443545049913005.a n = A191566 n

end A191566

/-! ## A191566.P807387905751169140

`(7^n+2*(-2)^n)/3`
-/

namespace A191566.P807387905751169140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 ^ n : ℤ) + 2 * (-2) ^ n : ℚ) / 3

end

end A191566.P807387905751169140

namespace A191566

/-- `(7^n+2*(-2)^n)/3` -/
def P807387905751169140.Spec : Prop :=
  ∀ n, P807387905751169140.a n = (A191566 n : ℚ)

theorem P807387905751169140.correct : P807387905751169140.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A191566, Nat.add_sub_cancel, A191566.P807387905751169140.a, A191566.P6592603921610780210.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A191566, Nat.add_sub_cancel, A191566.P807387905751169140.a, A191566.P6592603921610780210.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A191566

/-! ## A191566.P6592603921610780210

`5*a(n-1)+14*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191566

/-- `5*a(n-1)+14*a(n-2)` -/
def P6592603921610780210.Spec : Prop :=
  ∀ n, (P6592603921610780210.a n : ℤ) = A191566 n

theorem P6592603921610780210.correct : P6592603921610780210.Spec := by
  intro n
  simp only [A191566]

end A191566

/-! ## A191566.P9812653751235227633

`7*a(n-1)+(-1)^n*6*2^(n-1)` with `a(0)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191566.P9812653751235227633
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  7 * a (n - 1) + ((-1) ^ n * 6 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A191566.P9812653751235227633

namespace A191566

/-- `7*a(n-1)+(-1)^n*6*2^(n-1)` -/
def P9812653751235227633.Spec : Prop :=
  ∀ n, P9812653751235227633.a n = (A191566 n : ℚ)

end A191566

/-! ## A191566.P10162377935484121096

`A125725(n+1)+A077925(n)`
-/

namespace A191566.P10162377935484121096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) + A077925 n

end

end A191566.P10162377935484121096

namespace A191566

/-- `A125725(n+1)+A077925(n)` -/
def P10162377935484121096.Spec : Prop :=
  ∀ n, P10162377935484121096.a n = A191566 n

end A191566

/-! ## A191566.P18073350934469682975

`A125725(n+1)+∑[A122803(n)]`
-/

namespace A191566.P18073350934469682975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125725 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191566.P18073350934469682975

namespace A191566

/-- `A125725(n+1)+∑[A122803(n)]` -/
def P18073350934469682975.Spec : Prop :=
  ∀ n, P18073350934469682975.a n = A191566 n

end A191566

/-!
# A191567: Four interlaced 2nd order polynomials: a(4*k) = k*(1+2*k); a(1+2*k) = 2*(1+2*k)*(3+2*k); a(2+4*k) = 4*(1+k)*(1+2*k).

The programs for A191567, the canonical program `A191567.P17799677235168068695` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191567 has offset 0).

The definition of A191567 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191567.P453485243349262398

`n*(n+2)*(37-27*cos(n*π)-6*cos(n*π/2))/32`
-/

namespace A191567.P453485243349262398
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n * (n + 2) : ℝ) * (37 - 27 * Real.cos ((n : ℝ) * Real.pi) - 6 * Real.cos ((n : ℝ) * Real.pi / 2)) / 32

end

end A191567.P453485243349262398

namespace A191567

/-- `n*(n+2)*(37-27*cos(n*π)-6*cos(n*π/2))/32` -/
def P453485243349262398.Spec : Prop :=
  ∀ n, P453485243349262398.a n = (A191567 n : ℝ)

end A191567

/-! ## A191567.P7277373831562991718

`ogf((6x+4x^2+30x^3+3x^4+52x^5+12x^6+36x^7+x^8+6x^9-2x^11)/(1-3x^4+3x^8-x^12))`
-/

namespace A191567.P7277373831562991718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 4, 30, 3, 52, 12, 36, 1, 6, 0, -2] [1, 0, 0, 0, -3, 0, 0, 0, 3, 0, 0, 0, -1] n

end

end A191567.P7277373831562991718

namespace A191567

/-- `ogf((6x+4x^2+30x^3+3x^4+52x^5+12x^6+36x^7+x^8+6x^9-2x^11)/(1-3x^4+3x^8-x^12))` -/
def P7277373831562991718.Spec : Prop :=
  ∀ n, P7277373831562991718.a n = A191567 n

end A191567

/-! ## A191567.P17799677235168068695

`A061037(n+2)+A181318(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191567

/-- `A061037(n+2)+A181318(n)` -/
def P17799677235168068695.Spec : Prop :=
  ∀ n, P17799677235168068695.a n = A191567 n

theorem P17799677235168068695.correct : P17799677235168068695.Spec := by
  intro n
  simp only [A191567]

end A191567

/-! ## A191567.P9180966667543195676

`2*n*(n+2)/gcd(4, n)²`
-/

namespace A191567.P9180966667543195676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) * ((n + 2 : ℚ) / (Nat.gcd 4 n ^ 2 : ℚ))

end

end A191567.P9180966667543195676

namespace A191567

/-- `2*n*(n+2)/gcd(4, n)²` -/
def P9180966667543195676.Spec : Prop :=
  ∀ n, P9180966667543195676.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P15274345592381268344

`(n+2)/2*A188134(n)`
-/

namespace A191567.P15274345592381268344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A188134 n : ℚ)

end

end A191567.P15274345592381268344

namespace A191567

/-- `(n+2)/2*A188134(n)` -/
def P15274345592381268344.Spec : Prop :=
  ∀ n, P15274345592381268344.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P5566217282611464711

`A142883(n)-A181318(n)`
-/

namespace A191567.P5566217282611464711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142883 n - A181318 n

end

end A191567.P5566217282611464711

namespace A191567

/-- `A142883(n)-A181318(n)` -/
def P5566217282611464711.Spec : Prop :=
  ∀ n, P5566217282611464711.a n = A191567 n

end A191567

/-! ## A191567.P16883157875643645590

`A177002(n)*A198148(n)`
-/

namespace A191567.P16883157875643645590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177002 n * A198148 n

end

end A191567.P16883157875643645590

namespace A191567

/-- `A177002(n)*A198148(n)` -/
def P16883157875643645590.Spec : Prop :=
  ∀ n, P16883157875643645590.a n = A191567 n

end A191567

/-! ## A191567.P7798919115019306264

`lcm(A145979(n), A198148(n))`
-/

namespace A191567.P7798919115019306264
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145979 n) (A198148 n)

end

end A191567.P7798919115019306264

namespace A191567

/-- `lcm(A145979(n), A198148(n))` -/
def P7798919115019306264.Spec : Prop :=
  ∀ n, (P7798919115019306264.a n : ℤ) = A191567 n

end A191567

/-! ## A191567.P10792977328308071492

`A054000(n+1)/A010156(n)`
-/

namespace A191567.P10792977328308071492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (n + 1) : ℚ) / (A010156 n : ℚ)

end

end A191567.P10792977328308071492

namespace A191567

/-- `A054000(n+1)/A010156(n)` -/
def P10792977328308071492.Spec : Prop :=
  ∀ n, P10792977328308071492.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P14720485361930663084

`A188134(n)+2*A181318(n)`
-/

namespace A191567.P14720485361930663084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 n + 2 * A181318 n

end

end A191567.P14720485361930663084

namespace A191567

/-- `A188134(n)+2*A181318(n)` -/
def P14720485361930663084.Spec : Prop :=
  ∀ n, P14720485361930663084.a n = A191567 n

end A191567

/-! ## A191567.P15130197834695525699

`(A140676(n)-n²)/A010156(n)`
-/

namespace A191567.P15130197834695525699
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140676 n - (n ^ 2 : ℤ) : ℚ) / (A010156 n : ℚ)

end

end A191567.P15130197834695525699

namespace A191567

/-- `(A140676(n)-n²)/A010156(n)` -/
def P15130197834695525699.Spec : Prop :=
  ∀ n, P15130197834695525699.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P6254107364481047022

`2*A061037(n+2)-A188134(n)`
-/

namespace A191567.P6254107364481047022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A061037 (n + 2) - A188134 n

end

end A191567.P6254107364481047022

namespace A191567

/-- `2*A061037(n+2)-A188134(n)` -/
def P6254107364481047022.Spec : Prop :=
  ∀ n, P6254107364481047022.a n = A191567 n

end A191567

/-! ## A191567.P8857091221005088667

`(A028347(n+2)+n²)/A010156(n)`
-/

namespace A191567.P8857091221005088667
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028347 (n + 2) + (n ^ 2 : ℤ) : ℚ) / (A010156 n : ℚ)

end

end A191567.P8857091221005088667

namespace A191567

/-- `(A028347(n+2)+n²)/A010156(n)` -/
def P8857091221005088667.Spec : Prop :=
  ∀ n, P8857091221005088667.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P15907142464392992295

`A026741(A026741(n))*A145979(n)`
-/

namespace A191567.P15907142464392992295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat * A145979 n

end

end A191567.P15907142464392992295

namespace A191567

/-- `A026741(A026741(n))*A145979(n)` -/
def P15907142464392992295.Spec : Prop :=
  ∀ n, P15907142464392992295.a n = A191567 n

end A191567

/-! ## A191567.P1954414792924565272

`A168077(A026741(n))+A061037(n+2)`
-/

namespace A191567.P1954414792924565272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 (A026741 n).toNat + A061037 (n + 2)

end

end A191567.P1954414792924565272

namespace A191567

/-- `A168077(A026741(n))+A061037(n+2)` -/
def P1954414792924565272.Spec : Prop :=
  ∀ n, P1954414792924565272.a n = A191567 n

end A191567

/-! ## A191567.P9326222839179568551

`(A171621(n+2)+A168077(n))/A010121(n)`
-/

namespace A191567.P9326222839179568551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171621 (n + 2) + A168077 n : ℚ) / (A010121 n : ℚ)

end

end A191567.P9326222839179568551

namespace A191567

/-- `(A171621(n+2)+A168077(n))/A010121(n)` -/
def P9326222839179568551.Spec : Prop :=
  ∀ n, P9326222839179568551.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P8772878070219162983

`A026741(n+2)*A064680(A026741(n))`
-/

namespace A191567.P8772878070219162983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (n + 2) * A064680 (A026741 n).toNat

end

end A191567.P8772878070219162983

namespace A191567

/-- `A026741(n+2)*A064680(A026741(n))` -/
def P8772878070219162983.Spec : Prop :=
  ∀ n, P8772878070219162983.a n = A191567 n

end A191567

/-! ## A191567.P927114347671927724

`(A176672(n+1)-A145979(n))*A145979(n)`
-/

namespace A191567.P927114347671927724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176672 (n + 1) - A145979 n) * A145979 n

end

end A191567.P927114347671927724

namespace A191567

/-- `(A176672(n+1)-A145979(n))*A145979(n)` -/
def P927114347671927724.Spec : Prop :=
  ∀ n, P927114347671927724.a n = A191567 n

end A191567

/-! ## A191567.P14156214566110049215

`A061038(n+2)/A002378(n+1)*A000217(n)`
-/

namespace A191567.P14156214566110049215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061038 (n + 2) : ℚ) / (A002378 (n + 1) : ℚ) * (A000217 n : ℚ)

end

end A191567.P14156214566110049215

namespace A191567

/-- `A061038(n+2)/A002378(n+1)*A000217(n)` -/
def P14156214566110049215.Spec : Prop :=
  ∀ n, P14156214566110049215.a n = (A191567 n : ℚ)

end A191567

/-! ## A191567.P5478586775825008573

`A106609(2*n)*A145979(n)`
-/

namespace A191567.P5478586775825008573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (2 * n) * A145979 n

end

end A191567.P5478586775825008573

namespace A191567

/-- `A106609(2*n)*A145979(n)` -/
def P5478586775825008573.Spec : Prop :=
  ∀ n, P5478586775825008573.a n = A191567 n

end A191567

/-!
# A191569: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 1 knight-move neighboring 1.

The programs for A191569, there is no canonical definition to state claims against.
-/

/-! ## A191569.P7674575575220072642

`∑[A308310(n+3)+A001157(n+1)]`
-/

namespace A191569.P7674575575220072642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308310 (n + 3) + A001157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191569.P7674575575220072642

/-!
# A191574: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 6 knight-move neighboring 1s.

The programs for A191574, there is no canonical definition to state claims against.
-/

/-! ## A191574.P15128420676221731714

`∏[record[A321184(n)+1]]`
-/

namespace A191574.P15128420676221731714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321184 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191574.P15128420676221731714

/-!
# A191576: Numbers n such that number of divisors of n equals the number of 1's in Gray code for n.

The programs for A191576, there is no canonical definition to state claims against.
-/

/-! ## A191576.P7518746525060027849

`eq[A032741(n)+1, A005811(n)]`
-/

namespace A191576.P7518746525060027849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191576.P7518746525060027849

/-! ## A191576.P15496471329251782063

`eq[A032741(n)+5, A136004(n)]`
-/

namespace A191576.P15496471329251782063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136004 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191576.P15496471329251782063

/-! ## A191576.P2821265930843814093

`eq[A000005(abs(1-n)+1), A005811(n)]`
-/

namespace A191576.P2821265930843814093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191576.P2821265930843814093

/-! ## A191576.P4178617217294913457

`eq[A000005(n+1), A005811(n+1)]+1`
-/

namespace A191576.P4178617217294913457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191576.P4178617217294913457

/-! ## A191576.P16077284666520229233

`eq[∏{e}[n, A264986(#)/2+1], A005811(n)]`
-/

namespace A191576.P16077284666520229233
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ((A264986 (Nat.factorization (f2 n) p) : ℚ) / 2 + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f3 j : ℚ)) n

end

end A191576.P16077284666520229233

/-! ## A191576.P14405733615976620175

`eq[A023443(A005811(n)), A032741(n)]`
-/

namespace A191576.P14405733615976620175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A005811 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191576.P14405733615976620175

/-! ## A191576.P7655814925840170405

`eq[A005811(A035327(n)), A032741(n)]`
-/

namespace A191576.P7655814925840170405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191576.P7655814925840170405

/-! ## A191576.P3933653898754844151

`eq[A000005(n+1), A000120(A003188(n+1))]+1`
-/

namespace A191576.P3933653898754844151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A003188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A191576.P3933653898754844151

/-!
# A191577: Expansion of (x*exp(x)/(exp(x)-1))^3 = sum(n>=0, a(n)/(n!*(n+1)!)*x^n).

The programs for A191577, there is no canonical definition to state claims against.
-/

/-! ## A191577.P8603709907600794562

`A008443(A103194(n))*A237667(n)`
-/

namespace A191577.P8603709907600794562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008443 (A103194 n).toNat * A237667 n

end

end A191577.P8603709907600794562

/-!
# A191578: Triangle read by rows, based on expansion of (x^2/(exp(x)-1))^m = x^m+sum(n>m T(n,m)*m!/((n-m)!*n!)*x^n).

The programs for A191578, there is no canonical definition to state claims against.
-/

/-! ## A191578.P14774514307677061894

`A097807(n)*A202995(n+1)`
-/

namespace A191578.P14774514307677061894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A202995 (n + 1)

end

end A191578.P14774514307677061894

/-! ## A191578.P6064567111288717339

`A202995(C(n+1, n))/A097807(n)`
-/

namespace A191578.P6064567111288717339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202995 (Nat.choose (n + 1) n) : ℚ) / (A097807 n : ℚ)

end

end A191578.P6064567111288717339

/-! ## A191578.P17534354317450357247

`A202995(Δ[n²]-n)/A097807(n)`
-/

namespace A191578.P17534354317450357247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202995 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / (A097807 n : ℚ)

end

end A191578.P17534354317450357247

/-! ## A191578.P4022358019687281083

`A033999(A025581(n))*A202995(n+1)`
-/

namespace A191578.P4022358019687281083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025581 n).toNat * A202995 (n + 1)

end

end A191578.P4022358019687281083

/-! ## A191578.P3271086170561769136

`A033999(A051162(n))*A202995(n+1)`
-/

namespace A191578.P3271086170561769136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A051162 n).toNat * A202995 (n + 1)

end

end A191578.P3271086170561769136

/-! ## A191578.P12413224903602216094

`A033999(A063656(n))*A202995(n+1)`
-/

namespace A191578.P12413224903602216094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A063656 n).toNat * A202995 (n + 1)

end

end A191578.P12413224903602216094

/-! ## A191578.P785011160773190529

`A009531(A099375(n))*A202995(n+1)`
-/

namespace A191578.P785011160773190529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A099375 n).toNat * A202995 (n + 1)

end

end A191578.P785011160773190529

/-! ## A191578.P7384295985729948137

`A008836(A130321(n))*A202995(n+1)`
-/

namespace A191578.P7384295985729948137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A130321 n).toNat * A202995 (n + 1)

end

end A191578.P7384295985729948137

/-! ## A191578.P10350854677827228074

`A033999(A004202(n+1))*A202995(n+1)`
-/

namespace A191578.P10350854677827228074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A004202 (n + 1)).toNat * A202995 (n + 1)

end

end A191578.P10350854677827228074

/-! ## A191578.P5987927115549023793

`A009001(A155156(n+1))*A202995(n+1)`
-/

namespace A191578.P5987927115549023793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A155156 (n + 1)).toNat * A202995 (n + 1)

end

end A191578.P5987927115549023793

/-!
# A191580: Numbers n for which the sum of their prime factors (with repetition) divides the sum of their anti-divisors.

The programs for A191580, there is no canonical definition to state claims against.
-/

/-! ## A191580.P5397225379787900762

`A351205(eq[A023416(n), A059692(n)])`
-/

namespace A191580.P5397225379787900762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351205 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A191580.P5397225379787900762

/-!
# A191582: Riordan matrix (1/(1-3*x^2),x/(1-x)).

The programs for A191582, there is no canonical definition to state claims against.
-/

/-! ## A191582.P2444707081407543798

`abs(A279010(comp[∑[n]]))`
-/

namespace A191582.P2444707081407543798
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A279010 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)|

end

end A191582.P2444707081407543798

/-! ## A191582.P3739998844707134438

`A097807(n)*A279010(∑[A035214(n)])`
-/

namespace A191582.P3739998844707134438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A279010 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A191582.P3739998844707134438

/-! ## A191582.P6923474368400245207

`A097807(n)*A279010(A014132(n+1))`
-/

namespace A191582.P6923474368400245207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A279010 (A014132 (n + 1)).toNat

end

end A191582.P6923474368400245207

/-! ## A191582.P11004491191740633805

`gcd(A000038(n), A279010(A014132(n+1)))`
-/

namespace A191582.P11004491191740633805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A279010 (A014132 (n + 1)).toNat)

end

end A191582.P11004491191740633805

/-! ## A191582.P1097302807061942718

`lcm(A020985(n), A279010(A014132(n+1)))`
-/

namespace A191582.P1097302807061942718
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A279010 (A014132 (n + 1)).toNat)

end

end A191582.P1097302807061942718

/-! ## A191582.P16393727544567989750

`∑{d}[A279010(A014132(n+1)), A000010(#)]`
-/

namespace A191582.P16393727544567989750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279010 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A191582.P16393727544567989750

/-! ## A191582.P17251970190714620679

`∑{d}[A279010(A007401(n+1)+1), A000010(#)]`
-/

namespace A191582.P17251970190714620679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279010 (A007401 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A191582.P17251970190714620679

/-! ## A191582.P15931332850608018812

`lcm(-A279010(A014132(n+1)), A000040(n+2)%2)`
-/

namespace A191582.P15931332850608018812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A279010 (A014132 (n + 1)).toNat) (Int.tmod (A000040 (n + 2)) 2)

end

end A191582.P15931332850608018812

/-! ## A191582.P3923639321935301932

`A279010(A014132(n+1))/A097807(A233583(n+1))`
-/

namespace A191582.P3923639321935301932
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279010 (A014132 (n + 1)).toNat : ℚ) / (A097807 (A233583 (n + 1)).toNat : ℚ)

end

end A191582.P3923639321935301932

/-!
# A191583: Sum of the distinct prime divisors of prime(n) + prime(n+1).

The programs for A191583, the canonical program `A191583.P1361937462763374416` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191583 has offset 1).

The definition of A191583 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191583.P8390455858666897010

`∑{p}[Δ[A061802(n)], #]`
-/

namespace A191583.P8390455858666897010
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P8390455858666897010

namespace A191583

/-- `∑{p}[Δ[A061802(n)], #]` -/
def P8390455858666897010.Spec : Prop :=
  ∀ n, (P8390455858666897010.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P1361937462763374416

`∑{p}[A001043(n+1), #]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A191583

/-- `∑{p}[A001043(n+1), #]` -/
def P1361937462763374416.Spec : Prop :=
  ∀ n, (P1361937462763374416.a n : ℤ) = A191583 (n + 1)

theorem P1361937462763374416.correct : P1361937462763374416.Spec := by
  intro n
  simp only [A191583, Nat.add_sub_cancel]

end A191583

/-! ## A191583.P13295747042024633757

`∑{p}[A011974(n+2), #]`
-/

namespace A191583.P13295747042024633757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P13295747042024633757

namespace A191583

/-- `∑{p}[A011974(n+2), #]` -/
def P13295747042024633757.Spec : Prop :=
  ∀ n, (P13295747042024633757.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P1428933689155801424

`∑{p}[A096277(n)-a(n-1), #]` with `a(0)=5`
-/

namespace A191583.P1428933689155801424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  A096277 n - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P1428933689155801424

namespace A191583

/-- `∑{p}[A096277(n)-a(n-1), #]` -/
def P1428933689155801424.Spec : Prop :=
  ∀ n, (P1428933689155801424.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P18082203230008541474

`∑{p}[A045533(n+1)%A001748(n+1), #]`
-/

namespace A191583.P18082203230008541474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045533 (n + 1)) (A001748 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P18082203230008541474

namespace A191583

/-- `∑{p}[A045533(n+1)%A001748(n+1), #]` -/
def P18082203230008541474.Spec : Prop :=
  ∀ n, (P18082203230008541474.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P5020865898802456017

`∑{p}[A000040(n+1)+A000040(n+2), #]`
-/

namespace A191583.P5020865898802456017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P5020865898802456017

namespace A191583

/-- `∑{p}[A000040(n+1)+A000040(n+2), #]` -/
def P5020865898802456017.Spec : Prop :=
  ∀ n, (P5020865898802456017.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P8531247694728480585

`∑{p}[A069102(n+3), #]`
-/

namespace A191583.P8531247694728480585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069102 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P8531247694728480585

namespace A191583

/-- `∑{p}[A069102(n+3), #]` -/
def P8531247694728480585.Spec : Prop :=
  ∀ n, (P8531247694728480585.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P15321542097799272682

`∑{p}[A164653(n+3), #]`
-/

namespace A191583.P15321542097799272682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A191583.P15321542097799272682

namespace A191583

/-- `∑{p}[A164653(n+3), #]` -/
def P15321542097799272682.Spec : Prop :=
  ∀ n, (P15321542097799272682.a n : ℤ) = A191583 (n + 1)

end A191583

/-! ## A191583.P9868466003720303873

`A008472(∏{p}[A001043(n+1), #])`
-/

namespace A191583.P9868466003720303873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A191583.P9868466003720303873

namespace A191583

/-- `A008472(∏{p}[A001043(n+1), #])` -/
def P9868466003720303873.Spec : Prop :=
  ∀ n, P9868466003720303873.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P14173034467705859722

`A008472(Δ[A061802(n)])`
-/

namespace A191583.P14173034467705859722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (f1 (n + 1) - f1 n).toNat

end

end A191583.P14173034467705859722

namespace A191583

/-- `A008472(Δ[A061802(n)])` -/
def P14173034467705859722.Spec : Prop :=
  ∀ n, P14173034467705859722.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P7655199359770942409

`A008472(A001043(n+1))`
-/

namespace A191583.P7655199359770942409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A001043 (n + 1)).toNat

end

end A191583.P7655199359770942409

namespace A191583

/-- `A008472(A001043(n+1))` -/
def P7655199359770942409.Spec : Prop :=
  ∀ n, P7655199359770942409.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P984036072148785729

`A008472(A011974(n+2))`
-/

namespace A191583.P984036072148785729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A011974 (n + 2)).toNat

end

end A191583.P984036072148785729

namespace A191583

/-- `A008472(A011974(n+2))` -/
def P984036072148785729.Spec : Prop :=
  ∀ n, P984036072148785729.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P9463092321457608600

`A008472(A076273(n+2)+1)`
-/

namespace A191583.P9463092321457608600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A076273 (n + 2) + 1).toNat

end

end A191583.P9463092321457608600

namespace A191583

/-- `A008472(A076273(n+2)+1)` -/
def P9463092321457608600.Spec : Prop :=
  ∀ n, P9463092321457608600.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P12574880793285012377

`A008472(A092949(n+1)-1)`
-/

namespace A191583.P12574880793285012377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A092949 (n + 1) - 1).toNat

end

end A191583.P12574880793285012377

namespace A191583

/-- `A008472(A092949(n+1)-1)` -/
def P12574880793285012377.Spec : Prop :=
  ∀ n, P12574880793285012377.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P16250456317699487386

`A008472(A061802(n+1)-A061802(n))`
-/

namespace A191583.P16250456317699487386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A061802 (n + 1) - A061802 n).toNat

end

end A191583.P16250456317699487386

namespace A191583

/-- `A008472(A061802(n+1)-A061802(n))` -/
def P16250456317699487386.Spec : Prop :=
  ∀ n, P16250456317699487386.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P1409007632765675776

`A008472(A007504(n+2)-A007504(n))`
-/

namespace A191583.P1409007632765675776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A007504 (n + 2) - A007504 n).toNat

end

end A191583.P1409007632765675776

namespace A191583

/-- `A008472(A007504(n+2)-A007504(n))` -/
def P1409007632765675776.Spec : Prop :=
  ∀ n, P1409007632765675776.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P3582974079050307353

`A008472(A065091(n+1)+A000040(n+1))`
-/

namespace A191583.P3582974079050307353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A065091 (n + 1) + A000040 (n + 1)).toNat

end

end A191583.P3582974079050307353

namespace A191583

/-- `A008472(A065091(n+1)+A000040(n+1))` -/
def P3582974079050307353.Spec : Prop :=
  ∀ n, P3582974079050307353.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P8080606262478655114

`A008472(A008578(n+2)+A000040(n+2))`
-/

namespace A191583.P8080606262478655114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A008578 (n + 2) + A000040 (n + 2)).toNat

end

end A191583.P8080606262478655114

namespace A191583

/-- `A008472(A008578(n+2)+A000040(n+2))` -/
def P8080606262478655114.Spec : Prop :=
  ∀ n, P8080606262478655114.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P5785800503377229014

`A008472(A000040(n+2)+record[A008472(n+2)])`
-/

namespace A191583.P5785800503377229014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A000040 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191583.P5785800503377229014

namespace A191583

/-- `A008472(A000040(n+2)+record[A008472(n+2)])` -/
def P5785800503377229014.Spec : Prop :=
  ∀ n, P5785800503377229014.a n = A191583 (n + 1)

end A191583

/-! ## A191583.P16741477568899181962

`A008472(A144043(2*(n+1)))`
-/

namespace A191583.P16741477568899181962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (A144043 (2 * (n + 1))).toNat

end

end A191583.P16741477568899181962

namespace A191583

/-- `A008472(A144043(2*(n+1)))` -/
def P16741477568899181962.Spec : Prop :=
  ∀ n, P16741477568899181962.a n = A191583 (n + 1)

end A191583

/-!
# A191584: Diagonal sums of the Riordan matrix (1/(1-3*x^2),x/(1-x)) (A191582).

The programs for A191584, the canonical program `A191584.P10527920168645486696` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191584 has offset 0).

The definition of A191584 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191584.P10527920168645486696

`3^(floor(n/2)+1)-A000045(n+3)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191584

/-- `3^(floor(n/2)+1)-A000045(n+3)` -/
def P10527920168645486696.Spec : Prop :=
  ∀ n, P10527920168645486696.a n = (A191584 n : ℚ)

end A191584

/-! ## A191584.P11130947380504554048

`ogf((1-x)/(1-x-4x^2+3x^3+3x^4))`
-/

namespace A191584.P11130947380504554048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -4, 3, 3] n

end

end A191584.P11130947380504554048

namespace A191584

/-- `ogf((1-x)/(1-x-4x^2+3x^3+3x^4))` -/
def P11130947380504554048.Spec : Prop :=
  ∀ n, P11130947380504554048.a n = A191584 n

end A191584

/-! ## A191584.P8429936160232263859

`A000045(n-1)+3*a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A191584.P8429936160232263859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A000045 (n - 1) + 3 * a (n - 2)

end

end A191584.P8429936160232263859

namespace A191584

/-- `A000045(n-1)+3*a(n-2)` -/
def P8429936160232263859.Spec : Prop :=
  ∀ n, P8429936160232263859.a n = A191584 n

end A191584

/-! ## A191584.P9602412050030188297

`∏[A176040(n)]-A020695(n)`
-/

namespace A191584.P9602412050030188297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A020695 n

end

end A191584.P9602412050030188297

namespace A191584

/-- `∏[A176040(n)]-A020695(n)` -/
def P9602412050030188297.Spec : Prop :=
  ∀ n, P9602412050030188297.a n = A191584 n

end A191584

/-! ## A191584.P5186451618396633529

`A056449(n+1)-A020695(n)`
-/

namespace A191584.P5186451618396633529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056449 (n + 1) - A020695 n

end

end A191584.P5186451618396633529

namespace A191584

/-- `A056449(n+1)-A020695(n)` -/
def P5186451618396633529.Spec : Prop :=
  ∀ n, P5186451618396633529.a n = A191584 n

end A191584

/-! ## A191584.P9585479731415362404

`A000244(A008619(n))-A020695(n)`
-/

namespace A191584.P9585479731415362404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A008619 n).toNat - A020695 n

end

end A191584.P9585479731415362404

namespace A191584

/-- `A000244(A008619(n))-A020695(n)` -/
def P9585479731415362404.Spec : Prop :=
  ∀ n, P9585479731415362404.a n = A191584 n

end A191584

/-! ## A191584.P13694388883820845522

`a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)` with `a(0)=1, a(1)=0, a(2)=4, a(3)=1`
-/

namespace A191584.P13694388883820845522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 4, 1] fun n a =>
  a (n - 1) + 4 * a (n - 2) - 3 * a (n - 3) - 3 * a (n - 4)

end

end A191584.P13694388883820845522

namespace A191584

/-- `a(n-1)+4*a(n-2)-3*a(n-3)-3*a(n-4)` -/
def P13694388883820845522.Spec : Prop :=
  ∀ n, P13694388883820845522.a n = A191584 n

end A191584

/-! ## A191584.P1912949879258085244

`A108411(n+2)-A208340(A000217(n+2))`
-/

namespace A191584.P1912949879258085244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108411 (n + 2) - A208340 (A000217 (n + 2)).toNat

end

end A191584.P1912949879258085244

namespace A191584

/-- `A108411(n+2)-A208340(A000217(n+2))` -/
def P1912949879258085244.Spec : Prop :=
  ∀ n, P1912949879258085244.a n = A191584 n

end A191584

/-!
# A191585: Central coefficients of the Riordan matrix (1/(1-3*x^2),x/(1-x)) (A191582).

The programs for A191585, there is no canonical definition to state claims against.
-/

/-! ## A191585.P1011842902833640080

`A191582(∑[4*n])`
-/

namespace A191585.P1011842902833640080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191582 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191585.P1011842902833640080

/-! ## A191585.P11454873433733454226

`A191582(A046092(n))-val(or(1, n), 2)`
-/

namespace A191585.P11454873433733454226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191582 (A046092 n).toNat - (SequenceMachineLib.valuation (Nat.lor 1 n) 2 : ℤ)

end

end A191585.P11454873433733454226

/-! ## A191585.P1323906282591376633

`gcd(A151933(n), A191582(A046092(n)))`
-/

namespace A191585.P1323906282591376633
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A191582 (A046092 n).toNat)

end

end A191585.P1323906282591376633

/-! ## A191585.P17342727609839592513

`or(A000007(n), A191582(A046092(n)))`
-/

namespace A191585.P17342727609839592513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A191582 (A046092 n).toNat)

end

end A191585.P17342727609839592513

/-! ## A191585.P2267090373951505202

`abs(A000038(n)-A191582(A046092(n)))`
-/

namespace A191585.P2267090373951505202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000038 n - A191582 (A046092 n).toNat|

end

end A191585.P2267090373951505202

/-! ## A191585.P8899818052955021987

`abs(A033999(n)*A191582(A046092(n)))`
-/

namespace A191585.P8899818052955021987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 n * A191582 (A046092 n).toNat|

end

end A191585.P8899818052955021987

/-! ## A191585.P15781308369158717320

`A000034(2*n)*A191582(A046092(n))`
-/

namespace A191585.P15781308369158717320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A191582 (A046092 n).toNat

end

end A191585.P15781308369158717320

/-! ## A191585.P16574705800009598231

`A014963(A008458(n))*A191582(A046092(n))`
-/

namespace A191585.P16574705800009598231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A191582 (A046092 n).toNat

end

end A191585.P16574705800009598231

/-! ## A191585.P2504783858428419923

`A014963(A000217(n+3))*A191582(A046092(n))`
-/

namespace A191585.P2504783858428419923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000217 (n + 3)).toNat * A191582 (A046092 n).toNat

end

end A191585.P2504783858428419923

/-!
# A191586: Binomial row sums of the Riordan matrix (1/(1-x),x/(1-x^2)) (A046854).

The programs for A191586, the canonical program `A191586.P12013486034707206914` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191586 has offset 0).

The definition of A191586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191586.P12013486034707206914

`∑{#}[n, C(n, #)*C(floor((n+#)/2), #)]`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191586

/-- `∑{#}[n, C(n, #)*C(floor((n+#)/2), #)]` -/
def P12013486034707206914.Spec : Prop :=
  ∀ n, (P12013486034707206914.a n : ℤ) = A191586 n

theorem P12013486034707206914.correct : P12013486034707206914.Spec := by
  intro n
  simp only [A191586]

end A191586

/-! ## A191586.P16677783719822118665

`A036234(A007482(n))-A000720(n+1)`
-/

namespace A191586.P16677783719822118665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A007482 n).toNat - A000720 (n + 1)

end

end A191586.P16677783719822118665

namespace A191586

/-- `A036234(A007482(n))-A000720(n+1)` -/
def P16677783719822118665.Spec : Prop :=
  ∀ n, P16677783719822118665.a n = A191586 n

end A191586

/-! ## A191586.P9012560216252222244

`A245473(A150884(n))`
-/

namespace A191586.P9012560216252222244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245473 (A150884 n).toNat

end

end A191586.P9012560216252222244

namespace A191586

/-- `A245473(A150884(n))` -/
def P9012560216252222244.Spec : Prop :=
  ∀ n, P9012560216252222244.a n = A191586 n

end A191586

/-!
# A191588: T(m,n) is the number of ways to split two strings of length m and n, respectively, into the same number of nonempty parts such that at least one of the corresponding parts has length 1 and such that the parts have at most size 2.

The programs for A191588, there is no canonical definition to state claims against.
-/

/-! ## A191588.P10367916672144273097

`A059268(n)-A008679(A077168(n))`
-/

namespace A191588.P10367916672144273097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n - A008679 (A077168 n).toNat

end

end A191588.P10367916672144273097

/-! ## A191588.P1546084869974262235

`or(A030528(n+1), A187446(A195581(n)²))`
-/

namespace A191588.P1546084869974262235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A030528 (n + 1)) (A187446 (A195581 n ^ 2).toNat)

end

end A191588.P1546084869974262235

/-!
# A191589: Primes of the form 3*n^4+12*n^2+2, n > 0.

The programs for A191589, there is no canonical definition to state claims against.
-/

/-! ## A191589.P6689483255136663033

`∩[A165347(n+1), A160827(n)]`
-/

namespace A191589.P6689483255136663033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191589.P6689483255136663033

/-! ## A191589.P17166733428240659944

`∩[A201782(n+1), A160827(n)]`
-/

namespace A191589.P17166733428240659944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160827 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191589.P17166733428240659944

/-! ## A191589.P7876520661179272513

`∩[A165347(n+1), A201782(n+1)]`
-/

namespace A191589.P7876520661179272513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201782 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191589.P7876520661179272513

/-! ## A191589.P14180089742675510730

`∩[A201782(n+1), A217844(n+1)]`
-/

namespace A191589.P14180089742675510730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191589.P14180089742675510730

/-!
# A191590: a(n) is the genus of the modular curve associated to the principal congruence subgroup of level p(n), where p(n) is the n-th prime number.

The programs for A191590, the canonical program `A191590.P16605662909043242526` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191590 has offset 2).

The definition of A191590 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191590.P16605662909043242526

`(A000040(n+2)+2)*(A000040(n+2)-3)*(A000040(n+2)-5)/24`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A191590

/-- `(A000040(n+2)+2)*(A000040(n+2)-3)*(A000040(n+2)-5)/24` -/
def P16605662909043242526.Spec : Prop :=
  ∀ n, P16605662909043242526.a n = (A191590 (n + 2) : ℚ)

end A191590

/-! ## A191590.P9090954140125503579

`A127922(n+2)-A074367(n+1)`
-/

namespace A191590.P9090954140125503579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127922 (n + 2) - A074367 (n + 1)

end

end A191590.P9090954140125503579

namespace A191590

/-- `A127922(n+2)-A074367(n+1)` -/
def P9090954140125503579.Spec : Prop :=
  ∀ n, P9090954140125503579.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P14029697644500156998

`A030007(n+2)+2*A030004(n+2)`
-/

namespace A191590.P14029697644500156998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030007 (n + 2) + 2 * A030004 (n + 2)

end

end A191590.P14029697644500156998

namespace A191590

/-- `A030007(n+2)+2*A030004(n+2)` -/
def P14029697644500156998.Spec : Prop :=
  ∀ n, P14029697644500156998.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P2341471951931683169

`A000330((p?[2*n+1]-3)/2)-(p?[2*n+1]-3)/2`
-/

namespace A191590.P2341471951931683169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (SequenceMachineLib.roundAway (((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 3 : ℚ) / 2)).toNat : ℚ) - ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 3 : ℚ) / 2

end

end A191590.P2341471951931683169

namespace A191590

/-- `A000330((p?[2*n+1]-3)/2)-(p?[2*n+1]-3)/2` -/
def P2341471951931683169.Spec : Prop :=
  ∀ n, P2341471951931683169.a n = (A191590 (n + 2) : ℚ)

end A191590

/-! ## A191590.P5516659205880242320

`A051925(A067076(n+1))`
-/

namespace A191590.P5516659205880242320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051925 (A067076 (n + 1)).toNat

end

end A191590.P5516659205880242320

namespace A191590

/-- `A051925(A067076(n+1))` -/
def P5516659205880242320.Spec : Prop :=
  ∀ n, P5516659205880242320.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P597233695372013790

`A001767(p?[2*n+1])`
-/

namespace A191590.P597233695372013790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A191590.P597233695372013790

namespace A191590

/-- `A001767(p?[2*n+1])` -/
def P597233695372013790.Spec : Prop :=
  ∀ n, P597233695372013790.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P13629468420411898916

`A001767(A045319(n+1))`
-/

namespace A191590.P13629468420411898916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (A045319 (n + 1)).toNat

end

end A191590.P13629468420411898916

namespace A191590

/-- `A001767(A045319(n+1))` -/
def P13629468420411898916.Spec : Prop :=
  ∀ n, P13629468420411898916.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P4834038909291763293

`A001767(A045344(n+1))`
-/

namespace A191590.P4834038909291763293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (A045344 (n + 1)).toNat

end

end A191590.P4834038909291763293

namespace A191590

/-- `A001767(A045344(n+1))` -/
def P4834038909291763293.Spec : Prop :=
  ∀ n, P4834038909291763293.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P15704151285422888239

`A001767(A065091(n+1))`
-/

namespace A191590.P15704151285422888239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (A065091 (n + 1)).toNat

end

end A191590.P15704151285422888239

namespace A191590

/-- `A001767(A065091(n+1))` -/
def P15704151285422888239.Spec : Prop :=
  ∀ n, P15704151285422888239.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P6934884352311516816

`A001767(A000040(n+2))`
-/

namespace A191590.P6934884352311516816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (A000040 (n + 2)).toNat

end

end A191590.P6934884352311516816

namespace A191590

/-- `A001767(A000040(n+2))` -/
def P6934884352311516816.Spec : Prop :=
  ∀ n, P6934884352311516816.a n = A191590 (n + 2)

end A191590

/-! ## A191590.P6457018630749274736

`A001767(A006005(n+2))`
-/

namespace A191590.P6457018630749274736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001767 (A006005 (n + 2)).toNat

end

end A191590.P6457018630749274736

namespace A191590

/-- `A001767(A006005(n+2))` -/
def P6457018630749274736.Spec : Prop :=
  ∀ n, P6457018630749274736.a n = A191590 (n + 2)

end A191590

/-!
# A191591: Number of different vowels in the Filipino (Tagalog) name of n.

The programs for A191591, there is no canonical definition to state claims against.
-/

/-! ## A191591.P1949737533137555783

`A055642(A000005(3*n+1)*A354707(n+1))`
-/

namespace A191591.P1949737533137555783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A000005 (3 * n + 1) * A354707 (n + 1)).toNat

end

end A191591.P1949737533137555783

/-! ## A191591.P7144228405873556957

`A262626(p?[A224989(n+1)]!)`
-/

namespace A191591.P7144228405873556957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262626 (Nat.factorial (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat)

end

end A191591.P7144228405873556957

/-! ## A191591.P9467912945254760587

`A001222(A053404(p?[A224989(n+1)]))`
-/

namespace A191591.P9467912945254760587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A053404 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A191591.P9467912945254760587

/-! ## A191591.P11835599604364123363

`A001221(A085538(p?[A224989(n+1)]))`
-/

namespace A191591.P11835599604364123363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A085538 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A191591.P11835599604364123363

/-! ## A191591.P14734037802922752876

`A001221(A124475(3*n+5)*A254938(n+1))`
-/

namespace A191591.P14734037802922752876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A124475 (3 * n + 5) * A254938 (n + 1)).toNat

end

end A191591.P14734037802922752876

/-!
# A191592: Numbers in A191311 but not in A129521.

The programs for A191592, there is no canonical definition to state claims against.
-/

/-! ## A191592.P3096719861103944882

`∩[A066182(A191311(n+1)+1), A191311(n+1)]`
-/

namespace A191592.P3096719861103944882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A191311 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191311 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191592.P3096719861103944882

/-!
# A191593: Number of partitions of 12*n into parts < 5.

The programs for A191593, the canonical program `A191593.P1404647331602006259` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191593 has offset 0).

The definition of A191593 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191593.P9645702119383022038

`ogf((1+30x+39x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A191593.P9645702119383022038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 30, 39, 2] [1, -4, 6, -4, 1] n

end

end A191593.P9645702119383022038

namespace A191593

/-- `ogf((1+30x+39x^2+2x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P9645702119383022038.Spec : Prop :=
  ∀ n, P9645702119383022038.a n = A191593 n

end A191593

/-! ## A191593.P1404647331602006259

`12*n^3+15*n²+6*n+1`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191593

/-- `12*n^3+15*n²+6*n+1` -/
def P1404647331602006259.Spec : Prop :=
  ∀ n, (P1404647331602006259.a n : ℤ) = A191593 n

theorem P1404647331602006259.correct : P1404647331602006259.Spec := by
  intro n
  simp only [A191593]

end A191593

/-! ## A191593.P1730243001022056410

`A014126(6*n)`
-/

namespace A191593.P1730243001022056410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014126 (6 * n)

end

end A191593.P1730243001022056410

namespace A191593

/-- `A014126(6*n)` -/
def P1730243001022056410.Spec : Prop :=
  ∀ n, P1730243001022056410.a n = A191593 n

end A191593

/-! ## A191593.P8227922851076670892

`A001400(12*n)`
-/

namespace A191593.P8227922851076670892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (12 * n)

end

end A191593.P8227922851076670892

namespace A191593

/-- `A001400(12*n)` -/
def P8227922851076670892.Spec : Prop :=
  ∀ n, P8227922851076670892.a n = A191593 n

end A191593

/-! ## A191593.P2020165375149070186

`Δ[(C(n, 2)+n²)*(2*n²-1)]`
-/

namespace A191593.P2020165375149070186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + n ^ 2 : ℤ) * ((2 * n ^ 2 : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191593.P2020165375149070186

namespace A191593

/-- `Δ[(C(n, 2)+n²)*(2*n²-1)]` -/
def P2020165375149070186.Spec : Prop :=
  ∀ n, P2020165375149070186.a n = A191593 n

theorem P2020165375149070186.correct : P2020165375149070186.Spec := by
  intro n
  simp only [A191593, Nat.add_sub_cancel, A191593.P2020165375149070186.f1, A191593.P2020165375149070186.a, A191593.P1404647331602006259.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191593

/-! ## A191593.P6999797774383944188

`Δ[A000326(n)*A056220(n)]`
-/

namespace A191593.P6999797774383944188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n * A056220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191593.P6999797774383944188

namespace A191593

/-- `Δ[A000326(n)*A056220(n)]` -/
def P6999797774383944188.Spec : Prop :=
  ∀ n, P6999797774383944188.a n = A191593 n

theorem P6999797774383944188.correct : P6999797774383944188.Spec := by
  intro n
  simp only [A191593, Nat.add_sub_cancel, A191593.P6999797774383944188.f1, A191593.P6999797774383944188.a, A191593.P1404647331602006259.a, A000326, A000326.P15785277619453972366.a, A056220, A056220.P5045014962229294692.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191593

/-! ## A191593.P3794362543255361807

`round((2*n*A004767(n)+1)*A016945(n)/4)`
-/

namespace A191593.P3794362543255361807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * ((n : ℤ) * A004767 n) + 1) * A016945 n : ℚ) / 4)

end

end A191593.P3794362543255361807

namespace A191593

/-- `round((2*n*A004767(n)+1)*A016945(n)/4)` -/
def P3794362543255361807.Spec : Prop :=
  ∀ n, P3794362543255361807.a n = A191593 n

end A191593

/-! ## A191593.P16704930302339413015

`∑[A153286(2*n+1)]`
-/

namespace A191593.P16704930302339413015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153286 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191593.P16704930302339413015

namespace A191593

/-- `∑[A153286(2*n+1)]` -/
def P16704930302339413015.Spec : Prop :=
  ∀ n, P16704930302339413015.a n = A191593 n

end A191593

/-! ## A191593.P12365761993502072032

`(A212959(2*n)+A005915(2*n))/2`
-/

namespace A191593.P12365761993502072032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212959 (2 * n) + A005915 (2 * n) : ℚ) / 2

end

end A191593.P12365761993502072032

namespace A191593

/-- `(A212959(2*n)+A005915(2*n))/2` -/
def P12365761993502072032.Spec : Prop :=
  ∀ n, P12365761993502072032.a n = (A191593 n : ℚ)

end A191593

/-! ## A191593.P12965225983213720166

`A238340(3*n+1)`
-/

namespace A191593.P12965225983213720166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (3 * n + 1)

end

end A191593.P12965225983213720166

namespace A191593

/-- `A238340(3*n+1)` -/
def P12965225983213720166.Spec : Prop :=
  ∀ n, P12965225983213720166.a n = A191593 n

end A191593

/-! ## A191593.P6137893319953312837

`A256524(4*n)`
-/

namespace A191593.P6137893319953312837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 (4 * n)

end

end A191593.P6137893319953312837

namespace A191593

/-- `A256524(4*n)` -/
def P6137893319953312837.Spec : Prop :=
  ∀ n, P6137893319953312837.a n = A191593 n

end A191593

/-! ## A191593.P14596602251443771024

`∩[A238340(n+1), A256524(n)]`
-/

namespace A191593.P14596602251443771024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256524 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191593.P14596602251443771024

namespace A191593

/-- `∩[A238340(n+1), A256524(n)]` -/
def P14596602251443771024.Spec : Prop :=
  ∀ n, (P14596602251443771024.a n : ℤ) = A191593 n

end A191593

/-! ## A191593.P1515779561966545272

`A026810(12*n+4)`
-/

namespace A191593.P1515779561966545272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 (12 * n + 4)

end

end A191593.P1515779561966545272

namespace A191593

/-- `A026810(12*n+4)` -/
def P1515779561966545272.Spec : Prop :=
  ∀ n, P1515779561966545272.a n = A191593 n

end A191593

/-! ## A191593.P3098789431292241737

`A011961(A017545(n))`
-/

namespace A191593.P3098789431292241737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011961 (A017545 n).toNat

end

end A191593.P3098789431292241737

namespace A191593

/-- `A011961(A017545(n))` -/
def P3098789431292241737.Spec : Prop :=
  ∀ n, P3098789431292241737.a n = A191593 n

end A191593

/-! ## A191593.P11984091383277320138

`A059290(A008574(2*n)+A008574(n+1))`
-/

namespace A191593.P11984091383277320138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059290 (A008574 (2 * n) + A008574 (n + 1)).toNat

end

end A191593.P11984091383277320138

namespace A191593

/-- `A059290(A008574(2*n)+A008574(n+1))` -/
def P11984091383277320138.Spec : Prop :=
  ∀ n, P11984091383277320138.a n = A191593 n

end A191593

/-! ## A191593.P3901852076283031468

`A029138(4*6*n)`
-/

namespace A191593.P3901852076283031468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029138 (4 * (6 * n))

end

end A191593.P3901852076283031468

namespace A191593

/-- `A029138(4*6*n)` -/
def P3901852076283031468.Spec : Prop :=
  ∀ n, P3901852076283031468.a n = A191593 n

end A191593

/-! ## A191593.P3074312784174737596

`A029167(A044102(n))`
-/

namespace A191593.P3074312784174737596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A044102 n).toNat

end

end A191593.P3074312784174737596

namespace A191593

/-- `A029167(A044102(n))` -/
def P3074312784174737596.Spec : Prop :=
  ∀ n, P3074312784174737596.a n = A191593 n

end A191593

/-! ## A191593.P8496124211988645585

`A029167(A167632(n+1))`
-/

namespace A191593.P8496124211988645585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (A167632 (n + 1)).toNat

end

end A191593.P8496124211988645585

namespace A191593

/-- `A029167(A167632(n+1))` -/
def P8496124211988645585.Spec : Prop :=
  ∀ n, P8496124211988645585.a n = A191593 n

end A191593

/-! ## A191593.P8402610579545228379

`A029167(2*A161705(n))`
-/

namespace A191593.P8402610579545228379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029167 (2 * A161705 n).toNat

end

end A191593.P8402610579545228379

namespace A191593

/-- `A029167(2*A161705(n))` -/
def P8402610579545228379.Spec : Prop :=
  ∀ n, P8402610579545228379.a n = A191593 n

end A191593

/-! ## A191593.P11690046544890781782

`A288165(4*A017197(n))`
-/

namespace A191593.P11690046544890781782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288165 (4 * A017197 n).toNat

end

end A191593.P11690046544890781782

namespace A191593

/-- `A288165(4*A017197(n))` -/
def P11690046544890781782.Spec : Prop :=
  ∀ n, P11690046544890781782.a n = A191593 n

end A191593

/-!
# A191596: Expansion of (1+x)^4/(1-x)^7.

The programs for A191596, the canonical program `A191596.P4827555142866375646` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191596 has offset 0).

The definition of A191596 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x+6x^2+4x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` (program `A191596.P4827555142866375646`, by `A191596.P4827555142866375646.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191596.P4827555142866375646

`ogf((1+4x+6x^2+4x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191596

/-- `ogf((1+4x+6x^2+4x^3+x^4)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P4827555142866375646.Spec : Prop :=
  ∀ n, P4827555142866375646.a n = A191596 n

theorem P4827555142866375646.correct : P4827555142866375646.Spec := by
  intro n
  simp only [A191596]

end A191596

/-! ## A191596.P12897806536783145285

`(((((n+n+18)*n+80)*n+210)*n+323)*n+267)/90*n+1`
-/

namespace A191596.P12897806536783145285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((n + n + 18) * n + 80) * n + 210) * n + 323) * n + 267 : ℚ) / 90 * (n : ℚ) + 1

end

end A191596.P12897806536783145285

namespace A191596

/-- `(((((n+n+18)*n+80)*n+210)*n+323)*n+267)/90*n+1` -/
def P12897806536783145285.Spec : Prop :=
  ∀ n, P12897806536783145285.a n = (A191596 n : ℚ)

end A191596

/-! ## A191596.P13367871950496327499

`∑[∑[A001846(n)]]`
-/

namespace A191596.P13367871950496327499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001846 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191596.P13367871950496327499

namespace A191596

/-- `∑[∑[A001846(n)]]` -/
def P13367871950496327499.Spec : Prop :=
  ∀ n, P13367871950496327499.a n = A191596 n

end A191596

/-! ## A191596.P7153701432707810586

`∑[∑[∑[A008412(n)]]]`
-/

namespace A191596.P7153701432707810586
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191596.P7153701432707810586

namespace A191596

/-- `∑[∑[∑[A008412(n)]]]` -/
def P7153701432707810586.Spec : Prop :=
  ∀ n, P7153701432707810586.a n = A191596 n

end A191596

/-! ## A191596.P16701058986834958306

`∑[A069038(n+1)]`
-/

namespace A191596.P16701058986834958306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191596.P16701058986834958306

namespace A191596

/-- `∑[A069038(n+1)]` -/
def P16701058986834958306.Spec : Prop :=
  ∀ n, P16701058986834958306.a n = A191596 n

end A191596

/-! ## A191596.P17382563442185944440

`∑[A035599(n+1)/2]`
-/

namespace A191596.P17382563442185944440
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035599 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191596.P17382563442185944440

namespace A191596

/-- `∑[A035599(n+1)/2]` -/
def P17382563442185944440.Spec : Prop :=
  ∀ n, P17382563442185944440.a n = (A191596 n : ℚ)

end A191596

/-! ## A191596.P3138766043030773026

`(A069039(n+1)+A069038(n+1))/2`
-/

namespace A191596.P3138766043030773026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069039 (n + 1) + A069038 (n + 1) : ℚ) / 2

end

end A191596.P3138766043030773026

namespace A191596

/-- `(A069039(n+1)+A069038(n+1))/2` -/
def P3138766043030773026.Spec : Prop :=
  ∀ n, P3138766043030773026.a n = (A191596 n : ℚ)

end A191596

/-! ## A191596.P7302084387094087275

`∑[A142977(∑[n+3])]`
-/

namespace A191596.P7302084387094087275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142977 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191596.P7302084387094087275

namespace A191596

/-- `∑[A142977(∑[n+3])]` -/
def P7302084387094087275.Spec : Prop :=
  ∀ n, P7302084387094087275.a n = A191596 n

end A191596

/-! ## A191596.P6225259409575248993

`A154948(eq[6, A002260(n+1)])`
-/

namespace A191596.P6225259409575248993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154948 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191596.P6225259409575248993

namespace A191596

/-- `A154948(eq[6, A002260(n+1)])` -/
def P6225259409575248993.Spec : Prop :=
  ∀ n, P6225259409575248993.a n = A191596 n

end A191596

/-!
# A191597: Expansion of x*(1+3*x)/ ( (1-4*x)*(1+x+x^2)).

The programs for A191597, the canonical program `A191597.P9306726903512727029` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191597 has offset 0).

The definition of A191597 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2)/(1-3x-3x^2-4x^3))` (program `A191597.P9306726903512727029`, by `A191597.P9306726903512727029.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191597.P9306726903512727029

`ogf((x+3x^2)/(1-3x-3x^2-4x^3))`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A191597

/-- `ogf((x+3x^2)/(1-3x-3x^2-4x^3))` -/
def P9306726903512727029.Spec : Prop :=
  ∀ n, P9306726903512727029.a n = A191597 n

theorem P9306726903512727029.correct : P9306726903512727029.Spec := by
  intro n
  simp only [A191597]

end A191597

/-! ## A191597.P10498459731134835377

`3*a(n-1)+3*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A191597.P10498459731134835377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  3 * a (n - 1) + 3 * a (n - 2) + 4 * a (n - 3)

end

end A191597.P10498459731134835377

namespace A191597

/-- `3*a(n-1)+3*a(n-2)+4*a(n-3)` -/
def P10498459731134835377.Spec : Prop :=
  ∀ n, (P10498459731134835377.a n : ℤ) = A191597 n

end A191597

/-! ## A191597.P12206462238796339357

`A024495(2*n)`
-/

namespace A191597.P12206462238796339357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024495 (2 * n)

end

end A191597.P12206462238796339357

namespace A191597

/-- `A024495(2*n)` -/
def P12206462238796339357.Spec : Prop :=
  ∀ n, P12206462238796339357.a n = A191597 n

end A191597

/-! ## A191597.P11216331669879968648

`(4^n-A061347(n+1))/3`
-/

namespace A191597.P11216331669879968648
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - A061347 (n + 1) : ℚ) / 3

end

end A191597.P11216331669879968648

namespace A191597

/-- `(4^n-A061347(n+1))/3` -/
def P11216331669879968648.Spec : Prop :=
  ∀ n, P11216331669879968648.a n = (A191597 n : ℚ)

end A191597

/-! ## A191597.P6069808796369909416

`A113405(2*n)+A113405(2*n+1)`
-/

namespace A191597.P6069808796369909416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113405 (2 * n) + A113405 (2 * n + 1)

end

end A191597.P6069808796369909416

namespace A191597

/-- `A113405(2*n)+A113405(2*n+1)` -/
def P6069808796369909416.Spec : Prop :=
  ∀ n, P6069808796369909416.a n = A191597 n

end A191597

/-! ## A191597.P5589020677078170849

`Δ[floor((2^n/3)²)]`
-/

namespace A191597.P5589020677078170849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 ^ n : ℚ) / 3) ^ 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191597.P5589020677078170849

namespace A191597

/-- `Δ[floor((2^n/3)²)]` -/
def P5589020677078170849.Spec : Prop :=
  ∀ n, P5589020677078170849.a n = A191597 n

end A191597

/-! ## A191597.P1299016750736862497

`record[char[3*n]-∑[(-2)^n]]`
-/

namespace A191597.P1299016750736862497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191597.P1299016750736862497

namespace A191597

/-- `record[char[3*n]-∑[(-2)^n]]` -/
def P1299016750736862497.Spec : Prop :=
  ∀ n, P1299016750736862497.a n = A191597 n

end A191597

/-! ## A191597.P6048129772622080505

`A138635(6*n)`
-/

namespace A191597.P6048129772622080505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138635 (6 * n)

end

end A191597.P6048129772622080505

namespace A191597

/-- `A138635(6*n)` -/
def P6048129772622080505.Spec : Prop :=
  ∀ n, P6048129772622080505.a n = A191597 n

end A191597

/-! ## A191597.P16450824990550713298

`A135574(Δ[n²])`
-/

namespace A191597.P16450824990550713298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135574 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A191597.P16450824990550713298

namespace A191597

/-- `A135574(Δ[n²])` -/
def P16450824990550713298.Spec : Prop :=
  ∀ n, P16450824990550713298.a n = A191597 n

end A191597

/-! ## A191597.P4743014702630339875

`A086953(Δ[n²])/2`
-/

namespace A191597.P4743014702630339875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086953 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A191597.P4743014702630339875

namespace A191597

/-- `A086953(Δ[n²])/2` -/
def P4743014702630339875.Spec : Prop :=
  ∀ n, P4743014702630339875.a n = (A191597 n : ℚ)

end A191597

/-! ## A191597.P5288262032182562922

`A136324(A047267(n+1))`
-/

namespace A191597.P5288262032182562922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136324 (A047267 (n + 1)).toNat

end

end A191597.P5288262032182562922

namespace A191597

/-- `A136324(A047267(n+1))` -/
def P5288262032182562922.Spec : Prop :=
  ∀ n, P5288262032182562922.a n = A191597 n

end A191597

/-! ## A191597.P3297382560541123836

`A387843(n)-A057078(n)`
-/

namespace A191597.P3297382560541123836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387843 n - A057078 n

end

end A191597.P3297382560541123836

namespace A191597

/-- `A387843(n)-A057078(n)` -/
def P3297382560541123836.Spec : Prop :=
  ∀ n, P3297382560541123836.a n = A191597 n

end A191597

/-! ## A191597.P15862338891321138270

`A387868(n)-A387843(n)`
-/

namespace A191597.P15862338891321138270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387868 n - A387843 n

end

end A191597.P15862338891321138270

namespace A191597

/-- `A387868(n)-A387843(n)` -/
def P15862338891321138270.Spec : Prop :=
  ∀ n, P15862338891321138270.a n = A191597 n

end A191597

/-! ## A191597.P9456344757293127852

`A133684(A047231(2*n+1))`
-/

namespace A191597.P9456344757293127852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 (A047231 (2 * n + 1)).toNat

end

end A191597.P9456344757293127852

namespace A191597

/-- `A133684(A047231(2*n+1))` -/
def P9456344757293127852.Spec : Prop :=
  ∀ n, P9456344757293127852.a n = A191597 n

end A191597

/-! ## A191597.P12667947230481357745

`A022003(n)+A001045(2*n)`
-/

namespace A191597.P12667947230481357745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022003 n + A001045 (2 * n)

end

end A191597.P12667947230481357745

namespace A191597

/-- `A022003(n)+A001045(2*n)` -/
def P12667947230481357745.Spec : Prop :=
  ∀ n, P12667947230481357745.a n = A191597 n

end A191597

/-! ## A191597.P294938898011771516

`A024493(2*n)-A057078(n)`
-/

namespace A191597.P294938898011771516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 (2 * n) - A057078 n

end

end A191597.P294938898011771516

namespace A191597

/-- `A024493(2*n)-A057078(n)` -/
def P294938898011771516.Spec : Prop :=
  ∀ n, P294938898011771516.a n = A191597 n

end A191597

/-! ## A191597.P15289572126406451536

`A002450(n)+and(1, A001610(n))`
-/

namespace A191597.P15289572126406451536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + Int.land 1 (A001610 n)

end

end A191597.P15289572126406451536

namespace A191597

/-- `A002450(n)+and(1, A001610(n))` -/
def P15289572126406451536.Spec : Prop :=
  ∀ n, P15289572126406451536.a n = A191597 n

end A191597

/-! ## A191597.P17439797834988668722

`A078008(2*n)-A049347(n)²`
-/

namespace A191597.P17439797834988668722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 (2 * n) - A049347 n ^ 2

end

end A191597.P17439797834988668722

namespace A191597

/-- `A078008(2*n)-A049347(n)²` -/
def P17439797834988668722.Spec : Prop :=
  ∀ n, P17439797834988668722.a n = A191597 n

end A191597

/-! ## A191597.P11927306518317600571

`∑[A011782(n)²]-A010892(n)²`
-/

namespace A191597.P11927306518317600571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A010892 n ^ 2

end

end A191597.P11927306518317600571

namespace A191597

/-- `∑[A011782(n)²]-A010892(n)²` -/
def P11927306518317600571.Spec : Prop :=
  ∀ n, P11927306518317600571.a n = A191597 n

end A191597

/-! ## A191597.P16091966075525490039

`∑[A011782(n)²]-A049347(n)²`
-/

namespace A191597.P16091966075525490039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A049347 n ^ 2

end

end A191597.P16091966075525490039

namespace A191597

/-- `∑[A011782(n)²]-A049347(n)²` -/
def P16091966075525490039.Spec : Prop :=
  ∀ n, P16091966075525490039.a n = A191597 n

end A191597

/-!
# A191598: a(1)=1. Then, if the first n terms contain all the numbers 1 to n, a(n+1)=2*a(n), otherwise a(n+1) is the smallest number not already in the sequence.

The programs for A191598, there is no canonical definition to state claims against.
-/

/-! ## A191598.P12021100044263402321

`A091379(A071726(n))+n`
-/

namespace A191598.P12021100044263402321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091379 (A071726 n).toNat + (n : ℤ)

end

end A191598.P12021100044263402321

/-! ## A191598.P14223703289734408142

`A034701(A270427(n+1)%(A153802(n+1)+A000040(n+1)))`
-/

namespace A191598.P14223703289734408142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034701 (Int.tmod (A270427 (n + 1)) (A153802 (n + 1) + A000040 (n + 1))).toNat

end

end A191598.P14223703289734408142

/-!
# A191599: Numbers k that do not divide Ramanujan's tau(k).

The programs for A191599, there is no canonical definition to state claims against.
-/

/-! ## A191599.P12484412819142841804

`comp[A063938(n+1)-1]+1`
-/

namespace A191599.P12484412819142841804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063938 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A191599.P12484412819142841804

/-! ## A191599.P794922179222647519

`lt[6, 6*a(A273650(n))]` with `a(0)=1`
-/

namespace A191599.P794922179222647519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  6 * f2 (A273650 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A191599.P794922179222647519

/-! ## A191599.P15431643299951462719

`lt[1, A273650(n+1)+1]+1`
-/

namespace A191599.P15431643299951462719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273650 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191599.P15431643299951462719

/-! ## A191599.P14593831373179932097

`eq[6, A278251(6*a(A273650(n)))]` with `a(0)=1`
-/

namespace A191599.P14593831373179932097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A278251 (6 * f2 (A273650 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191599.P14593831373179932097

/-! ## A191599.P14390892144489175233

`eq[6, A025872(6*a(A273650(n)))]` with `a(0)=8`
-/

namespace A191599.P14390892144489175233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f2 =>
  A025872 (6 * f2 (A273650 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191599.P14390892144489175233

/-! ## A191599.P10172414382630090817

`eq[6, 6%A324519(a(A273650(n)))]` with `a(0)=1`
-/

namespace A191599.P10172414382630090817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.tmod 6 (A324519 (f2 (A273650 n).toNat).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191599.P10172414382630090817

/-! ## A191599.P17057283115933947778

`eq[3, A002024(a(A273650(n))+3)]` with `a(0)=0, a(1)=2`
-/

namespace A191599.P17057283115933947778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f2 =>
  A002024 (f2 (A273650 n).toNat + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191599.P17057283115933947778

/-! ## A191599.P9025582641175147047

`eq[(6*a(A273650(n)))%4, A000038(n)]` with `a(0)=1, a(1)=6`
-/

namespace A191599.P9025582641175147047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  6 * f1 (A273650 n).toNat % 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A191599.P9025582641175147047

/-! ## A191599.P8813995698966057999

`lt[1, A299634(A273650(n+1))]+1`
-/

namespace A191599.P8813995698966057999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299634 (A273650 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A191599.P8813995698966057999

