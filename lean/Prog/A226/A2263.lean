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
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A226300: a(n) = A182107(4n).

The programs for A226300, there is no canonical definition to state claims against.
-/

/-! ## A226300.P10909011798076654725

`A182107(4*(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226300.P10909011798076654725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (4 * (n + 1))

end

end A226300.P10909011798076654725

/-! ## A226300.P7746649493885957724

`record[Δ[A182107(n+3)]]`
-/

namespace A226300.P7746649493885957724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226300.P7746649493885957724

/-! ## A226300.P1578836950034255833

`record[A182107(Δ[A028552(n)])]`
-/

namespace A226300.P1578836950034255833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226300.P1578836950034255833

/-! ## A226300.P15817578385052550828

`record[A182107(A103517(n+1))]`
-/

namespace A226300.P15817578385052550828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (A103517 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226300.P15817578385052550828

/-! ## A226300.P8489466096067239402

`record[A182107(A005843(n+2))]`
-/

namespace A226300.P8489466096067239402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (A005843 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226300.P8489466096067239402

/-!
# A226301: a(n) = A182107(4n+1).

The programs for A226301, there is no canonical definition to state claims against.
-/

/-! ## A226301.P14849626279910740281

`A182107(4*(n+1)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226301.P14849626279910740281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (4 * (n + 1) + 1)

end

end A226301.P14849626279910740281

/-! ## A226301.P15863691748541674973

`record[A182107(A103517(n)+3)]`
-/

namespace A226301.P15863691748541674973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (A103517 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226301.P15863691748541674973

/-! ## A226301.P15669584013922236497

`record[A182107(A005843(n)+5)]`
-/

namespace A226301.P15669584013922236497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (A005843 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226301.P15669584013922236497

/-! ## A226301.P16933967287692236023

`record[A182107(Δ[A028552(n)]+1)]`
-/

namespace A226301.P16933967287692236023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028552 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182107 (f2 (n + 1) - f2 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226301.P16933967287692236023

/-!
# A226304: Irregular triangle read by rows: coefficients of certain polynomials P_n(x) arising in the enumeration of tatami mat coverings.

The programs for A226304, there is no canonical definition to state claims against.
-/

/-! ## A226304.P14107569633445631078

`A173557(n+1)%A090368(A285454(n+1))`
-/

namespace A226304.P14107569633445631078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173557 (n + 1)) (A090368 (A285454 (n + 1)).toNat)

end

end A226304.P14107569633445631078

/-! ## A226304.P11133703184641879126

`and(A348807(n)-A267998(n), A032435(n+2))`
-/

namespace A226304.P11133703184641879126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A348807 n - A267998 n) (A032435 (n + 2))

end

end A226304.P11133703184641879126

/-! ## A226304.P4114627882847190526

`A000010(A019555(n+1))%A090368(A285454(n+1))`
-/

namespace A226304.P4114627882847190526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A019555 (n + 1)).toNat) (A090368 (A285454 (n + 1)).toNat)

end

end A226304.P4114627882847190526

/-! ## A226304.P15301927193862506826

`A025686(A154286(n))%5`
-/

namespace A226304.P15301927193862506826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025686 (A154286 n).toNat) 5

end

end A226304.P15301927193862506826

/-! ## A226304.P13655011616605004673

`A307176(n+1)%p?[A003984(n)]`
-/

namespace A226304.P13655011616605004673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307176 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A226304.P13655011616605004673

/-!
# A226306: Denominator of Product_{d|n} b(d)^Moebius(n/d), where b() = A100371().

The programs for A226306, there is no canonical definition to state claims against.
-/

/-! ## A226306.P1652482741697033196

`A001045(A319989(n+1)%A360550(2*n+1))`
-/

namespace A226306.P1652482741697033196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Int.tmod (A319989 (n + 1)) (A360550 (2 * n + 1))).toNat

end

end A226306.P1652482741697033196

/-! ## A226306.P925138258110459411

`A001045(A319989(n+1)%A133967(n+1))`
-/

namespace A226306.P925138258110459411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (Int.tmod (A319989 (n + 1)) (A133967 (n + 1))).toNat

end

end A226306.P925138258110459411

/-! ## A226306.P16514647043435342418

`gcd(A074887(n+1), A353468(n+1))`
-/

namespace A226306.P16514647043435342418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074887 (n + 1)) (A353468 (n + 1))

end

end A226306.P16514647043435342418

/-! ## A226306.P5887462800749851373

`gcd(A282124(A352431(n)), A353468(n+1))`
-/

namespace A226306.P5887462800749851373
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A282124 (A352431 n).toNat) (A353468 (n + 1))

end

end A226306.P5887462800749851373

/-! ## A226306.P1857513911107649719

`A035343(2^A085091(n+1))`
-/

namespace A226306.P1857513911107649719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035343 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A085091 (n + 1) : ℤ))).toNat

end

end A226306.P1857513911107649719

/-!
# A226308: a(n) = a(n-1) + a(n-2) + 2*a(n-3) with a(0)=2, a(1)=1, a(2)=5.

The programs for A226308, the canonical program `A226308.P9220947622834644365` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226308 has offset 0).

The definition of A226308 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+2*a(n-3)` (program `A226308.P9220947622834644365`, by `A226308.P9220947622834644365.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226308.P9220947622834644365

`a(n-1)+a(n-2)+2*a(n-3)` with `a(0)=2, a(1)=1, a(2)=5`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226308

/-- `a(n-1)+a(n-2)+2*a(n-3)` -/
def P9220947622834644365.Spec : Prop :=
  ∀ n, (P9220947622834644365.a n : ℤ) = A226308 n

theorem P9220947622834644365.correct : P9220947622834644365.Spec := by
  intro n
  simp only [A226308]

end A226308

/-! ## A226308.P12535767539999732603

`ogf((-2+x-2x^2)/(-1+x+x^2+2x^3))`
-/

namespace A226308.P12535767539999732603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2] [1, -1, -1, -2] n

end

end A226308.P12535767539999732603

namespace A226308

/-- `ogf((-2+x-2x^2)/(-1+x+x^2+2x^3))` -/
def P12535767539999732603.Spec : Prop :=
  ∀ n, P12535767539999732603.a n = A226308 n

end A226308

/-! ## A226308.P11086901961337821866

`a(n-3)+2^n` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A226308.P11086901961337821866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  a (n - 3) + 2 ^ n

end

end A226308.P11086901961337821866

namespace A226308

/-- `a(n-3)+2^n` -/
def P11086901961337821866.Spec : Prop :=
  ∀ n, (P11086901961337821866.a n : ℤ) = A226308 n

end A226308

/-! ## A226308.P11969604626681847822

`or(2^n, a(n-3))` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A226308.P11969604626681847822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  Nat.lor (2 ^ n) (a (n - 3))

end

end A226308.P11969604626681847822

namespace A226308

/-- `or(2^n, a(n-3))` -/
def P11969604626681847822.Spec : Prop :=
  ∀ n, (P11969604626681847822.a n : ℤ) = A226308 n

end A226308

/-! ## A226308.P4807668944924112032

`xor(2^n, a(n-3))` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A226308.P4807668944924112032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  Nat.xor (2 ^ n) (a (n - 3))

end

end A226308.P4807668944924112032

namespace A226308

/-- `xor(2^n, a(n-3))` -/
def P4807668944924112032.Spec : Prop :=
  ∀ n, (P4807668944924112032.a n : ℤ) = A226308 n

end A226308

/-! ## A226308.P5751399671027128851

`a(n-1)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=2, a(1)=1, a(2)=5`
-/

namespace A226308.P5751399671027128851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 5] fun n a =>
  a (n - 1) + a (n - 3) + (a (n - 2) + a (n - 3))

end

end A226308.P5751399671027128851

namespace A226308

/-- `a(n-1)+a(n-3)+a(n-2)+a(n-3)` -/
def P5751399671027128851.Spec : Prop :=
  ∀ n, (P5751399671027128851.a n : ℤ) = A226308 n

end A226308

/-! ## A226308.P13122800706195865748

`or(2, A033138(n+1))-1`
-/

namespace A226308.P13122800706195865748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A033138 (n + 1)) - 1

end

end A226308.P13122800706195865748

namespace A226308

/-- `or(2, A033138(n+1))-1` -/
def P13122800706195865748.Spec : Prop :=
  ∀ n, P13122800706195865748.a n = A226308 n

end A226308

/-! ## A226308.P17234389375325857310

`A046630(n+1)+1-gcd(3, 1-n)`
-/

namespace A226308.P17234389375325857310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046630 (n + 1) + 1 - (Int.gcd 3 (1 - (n : ℤ)) : ℤ)

end

end A226308.P17234389375325857310

namespace A226308

/-- `A046630(n+1)+1-gcd(3, 1-n)` -/
def P17234389375325857310.Spec : Prop :=
  ∀ n, P17234389375325857310.a n = A226308 n

end A226308

/-! ## A226308.P6963691720532027344

`A077947(n+1)+A049347(n)`
-/

namespace A226308.P6963691720532027344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (n + 1) + A049347 n

end

end A226308.P6963691720532027344

namespace A226308

/-- `A077947(n+1)+A049347(n)` -/
def P6963691720532027344.Spec : Prop :=
  ∀ n, P6963691720532027344.a n = A226308 n

end A226308

/-! ## A226308.P12138954297435249812

`A122552(n+1)+A078010(n)`
-/

namespace A226308.P12138954297435249812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122552 (n + 1) + A078010 n

end

end A226308.P12138954297435249812

namespace A226308

/-- `A122552(n+1)+A078010(n)` -/
def P12138954297435249812.Spec : Prop :=
  ∀ n, P12138954297435249812.a n = A226308 n

end A226308

/-! ## A226308.P17984809648569480132

`A257075(n)+A033138(n+1)`
-/

namespace A226308.P17984809648569480132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n + A033138 (n + 1)

end

end A226308.P17984809648569480132

namespace A226308

/-- `A257075(n)+A033138(n+1)` -/
def P17984809648569480132.Spec : Prop :=
  ∀ n, P17984809648569480132.a n = A226308 n

end A226308

/-! ## A226308.P14280415548743015026

`2*A077947(n)-A102283(n)`
-/

namespace A226308.P14280415548743015026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077947 n - A102283 n

end

end A226308.P14280415548743015026

namespace A226308

/-- `2*A077947(n)-A102283(n)` -/
def P14280415548743015026.Spec : Prop :=
  ∀ n, P14280415548743015026.a n = A226308 n

end A226308

/-! ## A226308.P13933436563416226982

`A049347(n)+abs(A077972(n+1))`
-/

namespace A226308.P13933436563416226982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049347 n + |A077972 (n + 1)|

end

end A226308.P13933436563416226982

namespace A226308

/-- `A049347(n)+abs(A077972(n+1))` -/
def P13933436563416226982.Spec : Prop :=
  ∀ n, P13933436563416226982.a n = A226308 n

end A226308

/-! ## A226308.P9759663426996411720

`A061347(n+2)+record[A078010(n)]`
-/

namespace A226308.P9759663426996411720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226308.P9759663426996411720

namespace A226308

/-- `A061347(n+2)+record[A078010(n)]` -/
def P9759663426996411720.Spec : Prop :=
  ∀ n, P9759663426996411720.a n = A226308 n

end A226308

/-! ## A226308.P11056742226565667759

`A102283(n+1)+A077947(n+1)`
-/

namespace A226308.P11056742226565667759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) + A077947 (n + 1)

end

end A226308.P11056742226565667759

namespace A226308

/-- `A102283(n+1)+A077947(n+1)` -/
def P11056742226565667759.Spec : Prop :=
  ∀ n, P11056742226565667759.a n = A226308 n

end A226308

/-! ## A226308.P9425046197957922965

`A077947(n+1)-A057078(n+2)`
-/

namespace A226308.P9425046197957922965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077947 (n + 1) - A057078 (n + 2)

end

end A226308.P9425046197957922965

namespace A226308

/-- `A077947(n+1)-A057078(n+2)` -/
def P9425046197957922965.Spec : Prop :=
  ∀ n, P9425046197957922965.a n = A226308 n

end A226308

/-! ## A226308.P12501857021740536316

`A078010(n+2)+A061347(n+2)`
-/

namespace A226308.P12501857021740536316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (n + 2) + A061347 (n + 2)

end

end A226308.P12501857021740536316

namespace A226308

/-- `A078010(n+2)+A061347(n+2)` -/
def P12501857021740536316.Spec : Prop :=
  ∀ n, P12501857021740536316.a n = A226308 n

end A226308

/-! ## A226308.P591301778695174564

`A152732(n+3)+A057078(n+1)`
-/

namespace A226308.P591301778695174564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152732 (n + 3) + A057078 (n + 1)

end

end A226308.P591301778695174564

namespace A226308

/-- `A152732(n+3)+A057078(n+1)` -/
def P591301778695174564.Spec : Prop :=
  ∀ n, P591301778695174564.a n = A226308 n

end A226308

/-! ## A226308.P8597123971963041846

`A057078(n+1)+2*A077947(n)`
-/

namespace A226308.P8597123971963041846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057078 (n + 1) + 2 * A077947 n

end

end A226308.P8597123971963041846

namespace A226308

/-- `A057078(n+1)+2*A077947(n)` -/
def P8597123971963041846.Spec : Prop :=
  ∀ n, P8597123971963041846.a n = A226308 n

end A226308

/-! ## A226308.P1469702344056272610

`A078010(n+1)+2*A078010(n)`
-/

namespace A226308.P1469702344056272610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078010 (n + 1) + 2 * A078010 n

end

end A226308.P1469702344056272610

namespace A226308

/-- `A078010(n+1)+2*A078010(n)` -/
def P1469702344056272610.Spec : Prop :=
  ∀ n, P1469702344056272610.a n = A226308 n

end A226308

/-!
# A226309: a(n) = a(n-1) + a(n-2) + a(n-3) + 2*a(n-4) with a(0)=2, a(1)=1, a(2)=5, a(3)=10.

The programs for A226309, the canonical program `A226309.P2019620374265468936` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226309 has offset 0).

The definition of A226309 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` (program `A226309.P2019620374265468936`, by `A226309.P2019620374265468936.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A226309.P2019620374265468936

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=2, a(1)=1, a(2)=5, a(3)=10`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226309

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P2019620374265468936.Spec : Prop :=
  ∀ n, (P2019620374265468936.a n : ℤ) = A226309 n

theorem P2019620374265468936.correct : P2019620374265468936.Spec := by
  intro n
  simp only [A226309]

end A226309

/-! ## A226309.P11731739537381779699

`ogf((-2+x-2x^2-2x^3)/(-1+x+x^2+x^3+2x^4))`
-/

namespace A226309.P11731739537381779699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -1, 2, 2] [1, -1, -1, -1, -2] n

end

end A226309.P11731739537381779699

namespace A226309

/-- `ogf((-2+x-2x^2-2x^3)/(-1+x+x^2+x^3+2x^4))` -/
def P11731739537381779699.Spec : Prop :=
  ∀ n, P11731739537381779699.a n = A226309 n

end A226309

/-! ## A226309.P12920003693784921136

`A262864(n)-A033999(A099208(n+1))`
-/

namespace A226309.P12920003693784921136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262864 n - A033999 (A099208 (n + 1)).toNat

end

end A226309.P12920003693784921136

namespace A226309

/-- `A262864(n)-A033999(A099208(n+1))` -/
def P12920003693784921136.Spec : Prop :=
  ∀ n, P12920003693784921136.a n = A226309 n

end A226309

/-! ## A226309.P14671408528350739828

`A262864(n)+A033999(A099208(n+1)+1)`
-/

namespace A226309.P14671408528350739828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262864 n + A033999 (A099208 (n + 1) + 1).toNat

end

end A226309.P14671408528350739828

namespace A226309

/-- `A262864(n)+A033999(A099208(n+1)+1)` -/
def P14671408528350739828.Spec : Prop :=
  ∀ n, P14671408528350739828.a n = A226309 n

end A226309

/-! ## A226309.P13853284076285840028

`A219977(n)+Δ[A262864(n)]`
-/

namespace A226309.P13853284076285840028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262864 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219977 n + (f1 (n + 1) - f1 n)

end

end A226309.P13853284076285840028

namespace A226309

/-- `A219977(n)+Δ[A262864(n)]` -/
def P13853284076285840028.Spec : Prop :=
  ∀ n, P13853284076285840028.a n = A226309 n

end A226309

/-! ## A226309.P5449461838822290953

`Δ[or(A000035(n), A262864(n))]`
-/

namespace A226309.P5449461838822290953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A262864 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226309.P5449461838822290953

namespace A226309

/-- `Δ[or(A000035(n), A262864(n))]` -/
def P5449461838822290953.Spec : Prop :=
  ∀ n, P5449461838822290953.a n = A226309 n

end A226309

/-! ## A226309.P9835523824205525457

`Δ[or(A096268(n), A262864(n))]`
-/

namespace A226309.P9835523824205525457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A096268 n) (A262864 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226309.P9835523824205525457

namespace A226309

/-- `Δ[or(A096268(n), A262864(n))]` -/
def P9835523824205525457.Spec : Prop :=
  ∀ n, P9835523824205525457.a n = A226309 n

end A226309

/-! ## A226309.P1304325073096548803

`Δ[or(A133872(n), A262864(n))]`
-/

namespace A226309.P1304325073096548803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A133872 n) (A262864 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226309.P1304325073096548803

namespace A226309

/-- `Δ[or(A133872(n), A262864(n))]` -/
def P1304325073096548803.Spec : Prop :=
  ∀ n, P1304325073096548803.a n = A226309 n

end A226309

/-!
# A226310: a(n+5) = a(n+4)+a(n+3)+a(n+2)+a(n+1)+2*a(n) with a(0)=0, a(1)=a(2)=a(3)=a(4)=1.

The programs for A226310, there is no canonical definition to state claims against.
-/

/-! ## A226310.P7637579528529717624

`Δ[A008624(A349842(n))]`
-/

namespace A226310.P7637579528529717624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A349842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226310.P7637579528529717624

/-! ## A226310.P14778492533738288211

`A291760(A018575(n+1))`
-/

namespace A226310.P14778492533738288211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291760 (A018575 (n + 1)).toNat

end

end A226310.P14778492533738288211

/-! ## A226310.P2689132091479032952

`A229763(A018754(n+1)-1)`
-/

namespace A226310.P2689132091479032952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 (A018754 (n + 1) - 1).toNat

end

end A226310.P2689132091479032952

/-! ## A226310.P829060307687230407

`and(A018754(n+1)+1, A000322(n))`
-/

namespace A226310.P829060307687230407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A018754 (n + 1) + 1) (A000322 n)

end

end A226310.P829060307687230407

/-! ## A226310.P11900029354354026571

`or(1, A018575(n+1))-A018536(n+1)`
-/

namespace A226310.P11900029354354026571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A018575 (n + 1)) - A018536 (n + 1)

end

end A226310.P11900029354354026571

/-!
# A226311: a(n+5) = a(n+4)+a(n+3)+a(n+2)+a(n+1)+2*a(n) with a(0)=2, a(1)=1, a(2)=5, a(3)=10, a(4)=20.

The programs for A226311, the canonical program `A226311.P12293019228853608447` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226311 has offset 0).

The definition of A226311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226311.P12293019228853608447

`Δ[xor(2*a(n-1), A130782(n))]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A226311

/-- `Δ[xor(2*a(n-1), A130782(n))]` -/
def P12293019228853608447.Spec : Prop :=
  ∀ n, P12293019228853608447.a n = A226311 n

theorem P12293019228853608447.correct : P12293019228853608447.Spec := by
  intro n
  simp only [A226311]

end A226311

/-! ## A226311.P15465579301138018624

`A202305(A339831(n+1))-A339814(n+1)`
-/

namespace A226311.P15465579301138018624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 (A339831 (n + 1)).toNat - A339814 (n + 1)

end

end A226311.P15465579301138018624

namespace A226311

/-- `A202305(A339831(n+1))-A339814(n+1)` -/
def P15465579301138018624.Spec : Prop :=
  ∀ n, P15465579301138018624.a n = A226311 n

end A226311

/-!
# A226312: Sum_{k=0..n} k*binomial(n,k)^2*binomial(2*k,k).

The programs for A226312, there is no canonical definition to state claims against.
-/

/-! ## A226312.P3168721278199507167

`2*n/3*A002893(n)`
-/

namespace A226312.P3168721278199507167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / 3 * (A002893 n : ℚ)

end

end A226312.P3168721278199507167

/-! ## A226312.P11924260124986503225

`2*n*A087457(round(sqrt(n²+1)))`
-/

namespace A226312.P11924260124986503225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A087457 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A226312.P11924260124986503225

/-! ## A226312.P10022791239377718750

`(A246459(n)-A002893(n))/2`
-/

namespace A226312.P10022791239377718750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246459 n - A002893 n : ℚ) / 2

end

end A226312.P10022791239377718750

/-!
# A226313: Number of commuting 4-tuples of elements from S_n, divided by n!.

The programs for A226313, there is no canonical definition to state claims against.
-/

/-! ## A226313.P6498693213268978837

`A362826(Δ[A264443(n)])`
-/

namespace A226313.P6498693213268978837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362826 (f1 (n + 1) - f1 n).toNat

end

end A226313.P6498693213268978837

/-! ## A226313.P18025056720976485257

`A362826(Δ[A023545(n+1)])`
-/

namespace A226313.P18025056720976485257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362826 (f1 (n + 1) - f1 n).toNat

end

end A226313.P18025056720976485257

/-! ## A226313.P12234899628944001690

`A362826(A000217(n+4)-xor(n, -1))`
-/

namespace A226313.P12234899628944001690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362826 (A000217 (n + 4) - Int.xor (n : ℤ) (-1)).toNat

end

end A226313.P12234899628944001690

/-! ## A226313.P8124270099799208231

`A362826(A023545(n+2)-A023545(n+1))`
-/

namespace A226313.P8124270099799208231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362826 (A023545 (n + 2) - A023545 (n + 1)).toNat

end

end A226313.P8124270099799208231

/-! ## A226313.P5909413560579229344

`A362826(lt[A122843(n+4), A322826(n+1)])`
-/

namespace A226313.P5909413560579229344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122843 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322826 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362826 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226313.P5909413560579229344

/-!
# A226314: Triangle read by rows: T(i,j) = j+(i-j)/gcd(i,j) (1<=i<=j).

The programs for A226314, the canonical program `A226314.P17792487929510332212` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226314 has offset 1).

The definition of A226314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226314.P17792487929510332212

`A002024(n+1)-A167192(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A226314

/-- `A002024(n+1)-A167192(n+1)` -/
def P17792487929510332212.Spec : Prop :=
  ∀ n, P17792487929510332212.a n = A226314 (n + 1)

theorem P17792487929510332212.correct : P17792487929510332212.Spec := by
  intro n
  simp only [A226314, Nat.add_sub_cancel]

end A226314

/-! ## A226314.P4217611908693615065

`∑[A035214(n)-1]-A167192(n+1)`
-/

namespace A226314.P4217611908693615065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A167192 (n + 1)

end

end A226314.P4217611908693615065

namespace A226314

/-- `∑[A035214(n)-1]-A167192(n+1)` -/
def P4217611908693615065.Spec : Prop :=
  ∀ n, P4217611908693615065.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P5125164380341612307

`A007401(n+1)-(A167192(n+1)+n)`
-/

namespace A226314.P5125164380341612307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (n + 1) - (A167192 (n + 1) + (n : ℤ))

end

end A226314.P5125164380341612307

namespace A226314

/-- `A007401(n+1)-(A167192(n+1)+n)` -/
def P5125164380341612307.Spec : Prop :=
  ∀ n, P5125164380341612307.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P1897128122024295061

`A004736(A167192(n+1)+n+1)+A002262(n)`
-/

namespace A226314.P1897128122024295061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A167192 (n + 1) + (n : ℤ) + 1).toNat + A002262 n

end

end A226314.P1897128122024295061

namespace A226314

/-- `A004736(A167192(n+1)+n+1)+A002262(n)` -/
def P1897128122024295061.Spec : Prop :=
  ∀ n, P1897128122024295061.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P5202654257131062186

`A025581(A004736(n+1)+A167192(n+1)+n)`
-/

namespace A226314.P5202654257131062186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A004736 (n + 1) + (A167192 (n + 1) + (n : ℤ))).toNat

end

end A226314.P5202654257131062186

namespace A226314

/-- `A025581(A004736(n+1)+A167192(n+1)+n)` -/
def P5202654257131062186.Spec : Prop :=
  ∀ n, P5202654257131062186.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P7837742049203436825

`A054531(1-A002262(n)+n)-A167192(n+1)`
-/

namespace A226314.P7837742049203436825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (1 - A002262 n + (n : ℤ)).toNat - A167192 (n + 1)

end

end A226314.P7837742049203436825

namespace A226314

/-- `A054531(1-A002262(n)+n)-A167192(n+1)` -/
def P7837742049203436825.Spec : Prop :=
  ∀ n, P7837742049203436825.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P4965807051413021201

`A002024(n+1)+A164306(n+1)-A054531(n+1)`
-/

namespace A226314.P4965807051413021201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + (A164306 (n + 1) - A054531 (n + 1))

end

end A226314.P4965807051413021201

namespace A226314

/-- `A002024(n+1)+A164306(n+1)-A054531(n+1)` -/
def P4965807051413021201.Spec : Prop :=
  ∀ n, P4965807051413021201.a n = A226314 (n + 1)

end A226314

/-! ## A226314.P8874801565892108602

`A050873(n+1)*A054531(n+1)-A167192(n+1)`
-/

namespace A226314.P8874801565892108602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) * A054531 (n + 1) - A167192 (n + 1)

end

end A226314.P8874801565892108602

namespace A226314

/-- `A050873(n+1)*A054531(n+1)-A167192(n+1)` -/
def P8874801565892108602.Spec : Prop :=
  ∀ n, P8874801565892108602.a n = A226314 (n + 1)

end A226314

/-!
# A226315: a(n) = (n^2/8+3*n/8-2)*2^n + 3.

The programs for A226315, the canonical program `A226315.P12808036343476265252` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226315 has offset 1).

The definition of A226315 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226315.P12808036343476265252

`((n+1)²/8+3*(n+1)/8-2)*2^(n+1)+3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226315

/-- `((n+1)²/8+3*(n+1)/8-2)*2^(n+1)+3` -/
def P12808036343476265252.Spec : Prop :=
  ∀ n, P12808036343476265252.a n = (A226315 (n + 1) : ℚ)

end A226315

/-! ## A226315.P10248922054205190761

`∑[∑[A086866(n)]]`
-/

namespace A226315.P10248922054205190761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086866 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226315.P10248922054205190761

namespace A226315

/-- `∑[∑[A086866(n)]]` -/
def P10248922054205190761.Spec : Prop :=
  ∀ n, P10248922054205190761.a n = A226315 (n + 1)

end A226315

/-!
# A226316: Expansion of g.f. 1/2 + 1/(1+sqrt(1-8*x+8*x^2)).

The programs for A226316, there is no canonical definition to state claims against.
-/

/-! ## A226316.P4099080807997094506

`A000670(n)-A335515(n)`
-/

namespace A226316.P4099080807997094506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n - A335515 n

end

end A226316.P4099080807997094506

/-! ## A226316.P6715696660130828973

`ceil(∑[A068764(n)/2])`
-/

namespace A226316.P6715696660130828973
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068764 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉

end

end A226316.P6715696660130828973

/-! ## A226316.P6759981142155782764

`ceil(A174347(n)/4)`
-/

namespace A226316.P6759981142155782764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A174347 n : ℚ) / 4⌉

end

end A226316.P6759981142155782764

/-! ## A226316.P7935259290571307588

`ceil(A118376(n+1)/2)`
-/

namespace A226316.P7935259290571307588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A118376 (n + 1) : ℚ) / 2⌉

end

end A226316.P7935259290571307588

/-! ## A226316.P12946520936478897928

`ceil(∑[ceil(A166229(n)/2)]/2)`
-/

namespace A226316.P12946520936478897928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A166229 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A226316.P12946520936478897928

/-! ## A226316.P194187779556364418

`(A174347(round(sqrt(n²+1)))+1)/4`
-/

namespace A226316.P194187779556364418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174347 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + 1 : ℚ) / 4

end

end A226316.P194187779556364418

/-! ## A226316.P18255997398512468531

`∑[A068764(n)]/A036453(n+1)`
-/

namespace A226316.P18255997398512468531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A036453 (n + 1) : ℚ)

end

end A226316.P18255997398512468531

/-! ## A226316.P12054873379519818966

`(A000007(n)+∑[A068764(n)])/2`
-/

namespace A226316.P12054873379519818966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000007 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A226316.P12054873379519818966

/-! ## A226316.P10441432934856049129

`A118376(n+1)/A000032(C(2, n+2))`
-/

namespace A226316.P10441432934856049129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118376 (n + 1) : ℚ) / (A000032 (Nat.choose 2 (n + 2)) : ℚ)

end

end A226316.P10441432934856049129

/-! ## A226316.P11841402505775948462

`∑[A068764(n)]/A020639(A000118(n))`
-/

namespace A226316.P11841402505775948462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020639 (A000118 n).toNat : ℚ)

end

end A226316.P11841402505775948462

/-! ## A226316.P1401241104985564273

`∑[A068764(n)]/A020639(A001316(n))`
-/

namespace A226316.P1401241104985564273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020639 (A001316 n).toNat : ℚ)

end

end A226316.P1401241104985564273

/-! ## A226316.P17289665843155056538

`∑[A068764(n)]/A020639(A008458(n))`
-/

namespace A226316.P17289665843155056538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068764 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A020639 (A008458 n).toNat : ℚ)

end

end A226316.P17289665843155056538

/-! ## A226316.P17036322030818931484

`A118376(n+1)/A141256(A000120(n))`
-/

namespace A226316.P17036322030818931484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118376 (n + 1) : ℚ) / (A141256 (A000120 n).toNat : ℚ)

end

end A226316.P17036322030818931484

/-! ## A226316.P4187164943577926779

`A118376(n+1)/A020639(A118369(n+1))`
-/

namespace A226316.P4187164943577926779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118376 (n + 1) : ℚ) / (A020639 (A118369 (n + 1)).toNat : ℚ)

end

end A226316.P4187164943577926779

/-!
# A226318: Positive integers n with p_{n+1}-p_n = 2 and p_{n+3}-p_{n+2} = 2, where p_k denotes the k-th prime.

The programs for A226318, the canonical program `A226318.P4776847927226884081` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226318 has offset 1).

The definition of A226318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226318.P4776847927226884081

`A105409(n+1)-1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A226318

/-- `A105409(n+1)-1` -/
def P4776847927226884081.Spec : Prop :=
  ∀ n, P4776847927226884081.a n = A226318 (n + 1)

theorem P4776847927226884081.correct : P4776847927226884081.Spec := by
  intro n
  simp only [A226318, Nat.add_sub_cancel]

end A226318

/-! ## A226318.P4262368268704205100

`A029707(A242881(n+1)-1)`
-/

namespace A226318.P4262368268704205100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (A242881 (n + 1) - 1).toNat

end

end A226318.P4262368268704205100

namespace A226318

/-- `A029707(A242881(n+1)-1)` -/
def P4262368268704205100.Spec : Prop :=
  ∀ n, P4262368268704205100.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P7118086116529584535

`∩[A029707(n+2)-2, A029707(n+2)]`
-/

namespace A226318.P7118086116529584535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226318.P7118086116529584535

namespace A226318

/-- `∩[A029707(n+2)-2, A029707(n+2)]` -/
def P7118086116529584535.Spec : Prop :=
  ∀ n, (P7118086116529584535.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P18371605647668064187

`∩[A022884(n+1), A029707(n+1)]`
-/

namespace A226318.P18371605647668064187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226318.P18371605647668064187

namespace A226318

/-- `∩[A022884(n+1), A029707(n+1)]` -/
def P18371605647668064187.Spec : Prop :=
  ∀ n, (P18371605647668064187.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P9389378032576657203

`A107770(A242881(n+1)-1)-1`
-/

namespace A226318.P9389378032576657203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (A242881 (n + 1) - 1).toNat - 1

end

end A226318.P9389378032576657203

namespace A226318

/-- `A107770(A242881(n+1)-1)-1` -/
def P9389378032576657203.Spec : Prop :=
  ∀ n, P9389378032576657203.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P3214311406361982836

`record[gcd(A029707(n+2), A048614(n+2))]`
-/

namespace A226318.P3214311406361982836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A029707 (n + 2)) (A048614 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226318.P3214311406361982836

namespace A226318

/-- `record[gcd(A029707(n+2), A048614(n+2))]` -/
def P3214311406361982836.Spec : Prop :=
  ∀ n, (P3214311406361982836.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P6542644236896828176

`∩[A107770(n+1), A155752(n+1)]-1`
-/

namespace A226318.P6542644236896828176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A226318.P6542644236896828176

namespace A226318

/-- `∩[A107770(n+1), A155752(n+1)]-1` -/
def P6542644236896828176.Spec : Prop :=
  ∀ n, P6542644236896828176.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P3924943443083197589

`A155752(A242881(n+1))-A000034(2*n)`
-/

namespace A226318.P3924943443083197589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - A000034 (2 * n)

end

end A226318.P3924943443083197589

namespace A226318

/-- `A155752(A242881(n+1))-A000034(2*n)` -/
def P3924943443083197589.Spec : Prop :=
  ∀ n, P3924943443083197589.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P10618609345273841031

`A155752(A242881(n+1))-and(1, A016816(n))`
-/

namespace A226318.P10618609345273841031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - Int.land 1 (A016816 n)

end

end A226318.P10618609345273841031

namespace A226318

/-- `A155752(A242881(n+1))-and(1, A016816(n))` -/
def P10618609345273841031.Spec : Prop :=
  ∀ n, P10618609345273841031.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P5730085622427691592

`A155752(A242881(n+1))-ceil(2/A000040(n+1))`
-/

namespace A226318.P5730085622427691592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - ⌈2 / (A000040 (n + 1) : ℚ)⌉

end

end A226318.P5730085622427691592

namespace A226318

/-- `A155752(A242881(n+1))-ceil(2/A000040(n+1))` -/
def P5730085622427691592.Spec : Prop :=
  ∀ n, P5730085622427691592.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P3703035106322388008

`A155752(A242881(n+1))-A162153(A155752(n+1))`
-/

namespace A226318.P3703035106322388008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - A162153 (A155752 (n + 1)).toNat

end

end A226318.P3703035106322388008

namespace A226318

/-- `A155752(A242881(n+1))-A162153(A155752(n+1))` -/
def P3703035106322388008.Spec : Prop :=
  ∀ n, P3703035106322388008.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P9672778274386413560

`A155752(A242881(n+1))-A107910(A020639(2*(n+1)))`
-/

namespace A226318.P9672778274386413560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - A107910 (A020639 (2 * (n + 1))).toNat

end

end A226318.P9672778274386413560

namespace A226318

/-- `A155752(A242881(n+1))-A107910(A020639(2*(n+1)))` -/
def P9672778274386413560.Spec : Prop :=
  ∀ n, P9672778274386413560.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P10560998311804250095

`A155752(A242881(n+1))-A001222(A094743(n+1))`
-/

namespace A226318.P10560998311804250095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155752 (A242881 (n + 1)).toNat - A001222 (A094743 (n + 1)).toNat

end

end A226318.P10560998311804250095

namespace A226318

/-- `A155752(A242881(n+1))-A001222(A094743(n+1))` -/
def P10560998311804250095.Spec : Prop :=
  ∀ n, P10560998311804250095.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P4251608547645319431

`∩[A334142(2*(n+1)), A334142(2*(n+1))-2]`
-/

namespace A226318.P4251608547645319431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334142 (2 * (n + 1)) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226318.P4251608547645319431

namespace A226318

/-- `∩[A334142(2*(n+1)), A334142(2*(n+1))-2]` -/
def P4251608547645319431.Spec : Prop :=
  ∀ n, (P4251608547645319431.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P13314139608449136137

`A023443(A105409(n+1))`
-/

namespace A226318.P13314139608449136137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A105409 (n + 1)).toNat

end

end A226318.P13314139608449136137

namespace A226318

/-- `A023443(A105409(n+1))` -/
def P13314139608449136137.Spec : Prop :=
  ∀ n, P13314139608449136137.a n = A226318 (n + 1)

end A226318

/-! ## A226318.P5210003771449501029

`eq[A052180(n+2), A075526(n)]`
-/

namespace A226318.P5210003771449501029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052180 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226318.P5210003771449501029

namespace A226318

/-- `eq[A052180(n+2), A075526(n)]` -/
def P5210003771449501029.Spec : Prop :=
  ∀ n, (P5210003771449501029.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P677073725629211720

`eq[A075526(n), A356741(n+2)]`
-/

namespace A226318.P677073725629211720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356741 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226318.P677073725629211720

namespace A226318

/-- `eq[A075526(n), A356741(n+2)]` -/
def P677073725629211720.Spec : Prop :=
  ∀ n, (P677073725629211720.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P3214335408116068131

`eq[A062301(n+1), A135732(n+1)]`
-/

namespace A226318.P3214335408116068131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062301 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135732 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226318.P3214335408116068131

namespace A226318

/-- `eq[A062301(n+1), A135732(n+1)]` -/
def P3214335408116068131.Spec : Prop :=
  ∀ n, (P3214335408116068131.a n : ℤ) = A226318 (n + 1)

end A226318

/-! ## A226318.P9070900870515630915

`eq[A046929(n+1), A162153(n+1)]`
-/

namespace A226318.P9070900870515630915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226318.P9070900870515630915

namespace A226318

/-- `eq[A046929(n+1), A162153(n+1)]` -/
def P9070900870515630915.Spec : Prop :=
  ∀ n, (P9070900870515630915.a n : ℤ) = A226318 (n + 1)

end A226318

/-!
# A226319: a(n) is the smallest odd k > 1 such that k is a Niven number at least in all the bases from 1 to n.

The programs for A226319, there is no canonical definition to state claims against.
-/

/-! ## A226319.P12023962895996511281

`A265341(5^A251655(n))`
-/

namespace A226319.P12023962895996511281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265341 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A251655 n : ℤ))).toNat

end

end A226319.P12023962895996511281

/-!
# A226321: Number of real {0,1} matrices n X n which are the square of a {0,1} matrix.

The programs for A226321, there is no canonical definition to state claims against.
-/

/-! ## A226321.P17923115168091279536

`A316854(or(1, A052472(n+3)))`
-/

namespace A226321.P17923115168091279536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316854 (Int.lor 1 (A052472 (n + 3))).toNat

end

end A226321.P17923115168091279536

/-!
# A226322: Number of tilings of a 4 X n rectangle using L tetrominoes and 2 X 2 tiles.

The programs for A226322, there is no canonical definition to state claims against.
-/

/-! ## A226322.P3628072669848092991

`A002426(n)-A319148(or(1, 2^n)-n)`
-/

namespace A226322.P3628072669848092991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A319148 (Nat.lor 1 (2 ^ n) - n)

end

end A226322.P3628072669848092991

/-! ## A226322.P7825517856647497095

`A129383(n)+A046079(A002110(n))`
-/

namespace A226322.P7825517856647497095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 n + A046079 (A002110 n).toNat

end

end A226322.P7825517856647497095

/-! ## A226322.P12825825702067465577

`A002426(n)-A007814(A041553(n))`
-/

namespace A226322.P12825825702067465577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n - A007814 (A041553 n).toNat

end

end A226322.P12825825702067465577

/-!
# A226323: Number of ordered pairs (i,j) with |i| * |j| <= n and gcd(i,j) <= 1.

The programs for A226323, the canonical program `A226323.P8599648680778542413` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226323 has offset 0).

The definition of A226323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226323.P1938852508679846756

`A168390(∑[A000005(∏{p}[n, #])])`
-/

namespace A226323.P1938852508679846756
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226323.P1938852508679846756

namespace A226323

/-- `A168390(∑[A000005(∏{p}[n, #])])` -/
def P1938852508679846756.Spec : Prop :=
  ∀ n, P1938852508679846756.a n = A226323 n

end A226323

/-! ## A226323.P17507520735584287564

`A168390(record[n+2-A077610(n+1)])`
-/

namespace A226323.P17507520735584287564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A077610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226323.P17507520735584287564

namespace A226323

/-- `A168390(record[n+2-A077610(n+1)])` -/
def P17507520735584287564.Spec : Prop :=
  ∀ n, P17507520735584287564.a n = A226323 n

end A226323

/-! ## A226323.P11569989295170081137

`A168390(record[(n+1)/A077610(n+1)])`
-/

namespace A226323.P11569989295170081137
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A077610 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226323.P11569989295170081137

namespace A226323

/-- `A168390(record[(n+1)/A077610(n+1)])` -/
def P11569989295170081137.Spec : Prop :=
  ∀ n, P11569989295170081137.a n = A226323 n

end A226323

/-! ## A226323.P8417099248969012466

`record[root(A168390(n+1), A077610(n+1))]`
-/

namespace A226323.P8417099248969012466
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A168390 (n + 1) : ℝ) ^ (1 / (A077610 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226323.P8417099248969012466

namespace A226323

/-- `record[root(A168390(n+1), A077610(n+1))]` -/
def P8417099248969012466.Spec : Prop :=
  ∀ n, P8417099248969012466.a n = (A226323 n : ℝ)

end A226323

/-! ## A226323.P13557924057991263472

`A168390(∑[A034444(A028310(n))])`
-/

namespace A226323.P13557924057991263472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226323.P13557924057991263472

namespace A226323

/-- `A168390(∑[A034444(A028310(n))])` -/
def P13557924057991263472.Spec : Prop :=
  ∀ n, P13557924057991263472.a n = A226323 n

end A226323

/-! ## A226323.P8599648680778542413

`A017077(∑[A007875(n+1)]-A007875(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A226323

/-- `A017077(∑[A007875(n+1)]-A007875(n+1))` -/
def P8599648680778542413.Spec : Prop :=
  ∀ n, P8599648680778542413.a n = A226323 n

theorem P8599648680778542413.correct : P8599648680778542413.Spec := by
  intro n
  simp only [A226323]

end A226323

/-!
# A226324: Array by antidiagonals: D(m,n) = distance between m and n using the graph-metric of A226247.

The programs for A226324, there is no canonical definition to state claims against.
-/

/-! ## A226324.P930929037839552690

`A226207(n+1)+A086015(A300832(n+1))`
-/

namespace A226324.P930929037839552690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (n + 1) + A086015 (A300832 (n + 1)).toNat

end

end A226324.P930929037839552690

/-! ## A226324.P13609695775183823410

`A226207(n+1)+A185284(A340753(n+1))`
-/

namespace A226324.P13609695775183823410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226207 (n + 1) + A185284 (A340753 (n + 1)).toNat

end

end A226324.P13609695775183823410

/-!
# A226325: Integers of the form n/tau(n)^2 as n runs through the integers, where tau(n) is the number of divisors of n.

The programs for A226325, there is no canonical definition to state claims against.
-/

/-! ## A226325.P15428271859935170994

`A046754(n+1)/A000005(A046754(n+1))²`
-/

namespace A226325.P15428271859935170994
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046754 (n + 1) : ℚ) / (A000005 (A046754 (n + 1)).toNat ^ 2 : ℚ)

end

end A226325.P15428271859935170994

/-! ## A226325.P14723953624621201163

`A046754(n+1)/A035116(A046754(n+1))`
-/

namespace A226325.P14723953624621201163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046754 (n + 1) : ℚ) / (A035116 (A046754 (n + 1)).toNat : ℚ)

end

end A226325.P14723953624621201163

/-!
# A226326: a(n) = smallest k such that prime(n) is the n-th largest divisor of k.

The programs for A226326, there is no canonical definition to state claims against.
-/

/-! ## A226326.P9240307964584818227

`A029732(n+1)*A109832(A029732(n+1))`
-/

namespace A226326.P9240307964584818227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029732 (n + 1) * A109832 (A029732 (n + 1)).toNat

end

end A226326.P9240307964584818227

/-! ## A226326.P4414138624732579210

`∑[2*A130138(A215108(n))]`
-/

namespace A226326.P4414138624732579210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A130138 (A215108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226326.P4414138624732579210

/-!
# A226328: a(0)=1, a(1)=-2; a(n+2) = a(n+1) + a(n) + (period 3: repeat 3, 1, -1).

The programs for A226328, the canonical program `A226328.P10409646375293161171` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226328 has offset 0).

The definition of A226328 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226328.P10409646375293161171

`A057078(n+1)+2*A212804(n)-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A226328

/-- `A057078(n+1)+2*A212804(n)-1` -/
def P10409646375293161171.Spec : Prop :=
  ∀ n, P10409646375293161171.a n = A226328 n

theorem P10409646375293161171.correct : P10409646375293161171.Spec := by
  intro n
  simp only [A226328]

end A226328

/-! ## A226328.P16977650931381151775

`A118658(n)-(n+1)%3`
-/

namespace A226328.P16977650931381151775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - (((n + 1) % 3 : ℕ) : ℤ)

end

end A226328.P16977650931381151775

namespace A226328

/-- `A118658(n)-(n+1)%3` -/
def P16977650931381151775.Spec : Prop :=
  ∀ n, P16977650931381151775.a n = A226328 n

end A226328

/-! ## A226328.P4138973257199786010

`A118658(n)-Δ[A130481(n)]`
-/

namespace A226328.P4138973257199786010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - (f1 (n + 1) - f1 n)

end

end A226328.P4138973257199786010

namespace A226328

/-- `A118658(n)-Δ[A130481(n)]` -/
def P4138973257199786010.Spec : Prop :=
  ∀ n, P4138973257199786010.a n = A226328 n

end A226328

/-! ## A226328.P16207675613422041365

`A118658(n)-A010872(n+1)`
-/

namespace A226328.P16207675613422041365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 n - A010872 (n + 1)

end

end A226328.P16207675613422041365

namespace A226328

/-- `A118658(n)-A010872(n+1)` -/
def P16207675613422041365.Spec : Prop :=
  ∀ n, P16207675613422041365.a n = A226328 n

end A226328

/-! ## A226328.P17921548941407238078

`A212804(n)+A212804(n)-A010872(n+1)`
-/

namespace A226328.P17921548941407238078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + (A212804 n - A010872 (n + 1))

end

end A226328.P17921548941407238078

namespace A226328

/-- `A212804(n)+A212804(n)-A010872(n+1)` -/
def P17921548941407238078.Spec : Prop :=
  ∀ n, P17921548941407238078.a n = A226328 n

theorem P17921548941407238078.correct : P17921548941407238078.Spec := by
  intro n
  simp only [A226328, Nat.add_sub_cancel, A226328.P17921548941407238078.a, A226328.P10409646375293161171.a, A010872, A010872.P9752549328412734763.a, A057078, A057078.P4951435475119423572.a, A212804, A212804.P11720252403142705008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226328

/-! ## A226328.P16707243371395473009

`A000032(n)-(∑[A061347(n+1)]+A000045(n))`
-/

namespace A226328.P16707243371395473009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n - (∑ j ∈ Finset.range (n + 1), f1 j + A000045 n)

end

end A226328.P16707243371395473009

namespace A226328

/-- `A000032(n)-(∑[A061347(n+1)]+A000045(n))` -/
def P16707243371395473009.Spec : Prop :=
  ∀ n, P16707243371395473009.a n = A226328 n

end A226328

/-! ## A226328.P2866200270970594086

`Δ[A001588(n)-∑[n%3]]`
-/

namespace A226328.P2866200270970594086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226328.P2866200270970594086

namespace A226328

/-- `Δ[A001588(n)-∑[n%3]]` -/
def P2866200270970594086.Spec : Prop :=
  ∀ n, P2866200270970594086.a n = A226328 n

end A226328

/-! ## A226328.P8684979050646921241

`Δ[2*A000045(n)]-A010872(n+1)`
-/

namespace A226328.P8684979050646921241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010872 (n + 1)

end

end A226328.P8684979050646921241

namespace A226328

/-- `Δ[2*A000045(n)]-A010872(n+1)` -/
def P8684979050646921241.Spec : Prop :=
  ∀ n, P8684979050646921241.a n = A226328 n

end A226328

/-! ## A226328.P11809937574396592074

`Δ[A253197(n+1)]-A001588(n)`
-/

namespace A226328.P11809937574396592074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001588 n

end

end A226328.P11809937574396592074

namespace A226328

/-- `Δ[A253197(n+1)]-A001588(n)` -/
def P11809937574396592074.Spec : Prop :=
  ∀ n, P11809937574396592074.a n = A226328 n

end A226328

/-! ## A226328.P7351593600812094646

`A253197(n+2)-(A253197(n+1)+A001588(n))`
-/

namespace A226328.P7351593600812094646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253197 (n + 2) - (A253197 (n + 1) + A001588 n)

end

end A226328.P7351593600812094646

namespace A226328

/-- `A253197(n+2)-(A253197(n+1)+A001588(n))` -/
def P7351593600812094646.Spec : Prop :=
  ∀ n, P7351593600812094646.a n = A226328 n

end A226328

/-!
# A226329: Critical values of Wilcoxon T test at a 5% level of significance (one-tail test).

The programs for A226329, there is no canonical definition to state claims against.
-/

/-! ## A226329.P1825041825301302362

`A135662(C(n+5, 4)-(n²+4))`
-/

namespace A226329.P1825041825301302362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135662 (Nat.choose (n + 5) 4 - (n ^ 2 + 4))

end

end A226329.P1825041825301302362

/-! ## A226329.P7525782924444498315

`A059995(A141214(2*n+1)+A131845(n+2))`
-/

namespace A226329.P7525782924444498315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A141214 (2 * n + 1) + A131845 (n + 2)).toNat

end

end A226329.P7525782924444498315

/-! ## A226329.P5658549641401866942

`A059995(A175406(n+3)+A141214(2*n+1))`
-/

namespace A226329.P5658549641401866942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A175406 (n + 3) + A141214 (2 * n + 1)).toNat

end

end A226329.P5658549641401866942

/-! ## A226329.P6573908052660070853

`floor(∑[A070939(A191697(n+1))/2])`
-/

namespace A226329.P6573908052660070853
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070939 (A191697 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A226329.P6573908052660070853

/-! ## A226329.P13190209675859466080

`A340998(A247393(n+1))+A226330(n+6)`
-/

namespace A226329.P13190209675859466080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((A247393 (n + 1)).toNat + 140) + A226330 (n + 6)

end

end A226329.P13190209675859466080

/-!
# A226330: Critical values of Wilcoxon T test at a 2.5% level of significance (one-tail test).

The programs for A226330, there is no canonical definition to state claims against.
-/

/-! ## A226330.P7229147382545318965

`A049474(ceil(log2(A274889(n+1))))`
-/

namespace A226330.P7229147382545318965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 ⌈Real.logb 2 (A274889 (n + 1) : ℝ)⌉.toNat

end

end A226330.P7229147382545318965

/-! ## A226330.P1470589766273256297

`A373811(A025202(n+3))`
-/

namespace A226330.P1470589766273256297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A025202 (n + 3)).toNat

end

end A226330.P1470589766273256297

/-! ## A226330.P17309950853900947040

`lt[A240394(A001950(n+1)), A000040(n+1)]`
-/

namespace A226330.P17309950853900947040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A001950 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226330.P17309950853900947040

/-! ## A226330.P18393522352457944117

`lt[A240394(A001950(n+1)), A028843(n+1)]`
-/

namespace A226330.P18393522352457944117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240394 (A001950 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028843 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226330.P18393522352457944117

/-! ## A226330.P6058464489819925718

`lt[A337665(n), A008290(A001950(n+1))]`
-/

namespace A226330.P6058464489819925718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337665 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008290 (A001950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A226330.P6058464489819925718

/-!
# A226331: Critical values of Wilcoxon T test at a 1% level of significance (one-tail test).

The programs for A226331, there is no canonical definition to state claims against.
-/

/-! ## A226331.P11797303166388571282

`∑[A244160(A244458(n+8))]`
-/

namespace A226331.P11797303166388571282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A244458 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226331.P11797303166388571282

/-! ## A226331.P17462358503884078495

`A025692(n)-A019590(A077868(n))`
-/

namespace A226331.P17462358503884078495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025692 n - A019590 (A077868 n).toNat

end

end A226331.P17462358503884078495

/-! ## A226331.P2908503362009634638

`A025692(n)-A145649(A027423(n))`
-/

namespace A226331.P2908503362009634638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025692 n - A145649 (A027423 n).toNat

end

end A226331.P2908503362009634638

/-! ## A226331.P12506955987180090241

`A025692(n)-A010051(A005583(n+1))`
-/

namespace A226331.P12506955987180090241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025692 n - A010051 (A005583 (n + 1)).toNat

end

end A226331.P12506955987180090241

/-! ## A226331.P13895085210516987799

`A025692(n)-A008683(A038258(n))`
-/

namespace A226331.P13895085210516987799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025692 n - A008683 (A038258 n).toNat

end

end A226331.P13895085210516987799

/-!
# A226332: Critical values of Wilcoxon T test at a 0.5% level of significance (one-tail test).

The programs for A226332, there is no canonical definition to state claims against.
-/

/-! ## A226332.P16663784944837391414

`∑[floor(n/ϕ²)+1]-A000035(A016116(n))`
-/

namespace A226332.P16663784944837391414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.goldenRatio ^ 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A000035 (A016116 n).toNat

end

end A226332.P16663784944837391414

/-! ## A226332.P14174390623265216754

`A283968(n)+A159075(A016116(n))`
-/

namespace A226332.P14174390623265216754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283968 n + A159075 (A016116 n).toNat

end

end A226332.P14174390623265216754

/-! ## A226332.P10097400857190944463

`A283968(n)-A122698(A017984(n))`
-/

namespace A226332.P10097400857190944463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283968 n - A122698 (A017984 n).toNat

end

end A226332.P10097400857190944463

/-! ## A226332.P3357110762370997203

`A283968(n)-A010054(A375635(n))`
-/

namespace A226332.P3357110762370997203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283968 n - A010054 (A375635 n).toNat

end

end A226332.P3357110762370997203

/-!
# A226333: Expansion of (E_4(q) - E_4(q^5)) / 240 in powers of q where E_4 is an Eisenstein series.

The programs for A226333, the canonical program `A226333.P9778864042201279343` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226333 has offset 1).

The definition of A226333 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226333.P14187645824074099250

`∑{d}[A132739(n+1), A000578((n+1)/#)]`
-/

namespace A226333.P14187645824074099250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000578 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226333.P14187645824074099250

namespace A226333

/-- `∑{d}[A132739(n+1), A000578((n+1)/#)]` -/
def P14187645824074099250.Spec : Prop :=
  ∀ n, P14187645824074099250.a n = A226333 (n + 1)

end A226333

/-! ## A226333.P9778864042201279343

`∑{d}[n+1, A035207(#)*A059376((n+1)/#)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A226333

/-- `∑{d}[n+1, A035207(#)*A059376((n+1)/#)]` -/
def P9778864042201279343.Spec : Prop :=
  ∀ n, P9778864042201279343.a n = A226333 (n + 1)

theorem P9778864042201279343.correct : P9778864042201279343.Spec := by
  intro n
  simp only [A226333, Nat.add_sub_cancel]

end A226333

/-! ## A226333.P9646144925575095920

`∑{d}[n+1, A065959(#)*A214293((n+1)/#)]`
-/

namespace A226333.P9646144925575095920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065959 d * A214293 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226333.P9646144925575095920

namespace A226333

/-- `∑{d}[n+1, A065959(#)*A214293((n+1)/#)]` -/
def P9646144925575095920.Spec : Prop :=
  ∀ n, P9646144925575095920.a n = A226333 (n + 1)

end A226333

/-! ## A226333.P16827795175527583365

`∑{d}[n+1, A000056(#)*A285896((n+1)/#)]`
-/

namespace A226333.P16827795175527583365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000056 d * A285896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A226333.P16827795175527583365

namespace A226333

/-- `∑{d}[n+1, A000056(#)*A285896((n+1)/#)]` -/
def P16827795175527583365.Spec : Prop :=
  ∀ n, P16827795175527583365.a n = A226333 (n + 1)

end A226333

/-! ## A226333.P9593966160443418196

`A000480(∑{d}[n+1, #²]²)+∑{d}[n+1, #^3]`
-/

namespace A226333.P9593966160443418196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000480 ((∑ d ∈ Nat.divisors (f1 n), d ^ 2) ^ 2) + ((∑ d ∈ Nat.divisors (f2 n), d ^ 3 : ℕ) : ℤ)

end

end A226333.P9593966160443418196

namespace A226333

/-- `A000480(∑{d}[n+1, #²]²)+∑{d}[n+1, #^3]` -/
def P9593966160443418196.Spec : Prop :=
  ∀ n, P9593966160443418196.a n = A226333 (n + 1)

end A226333

/-!
# A226334: Number of nondecreasing -2..2 vectors of length n whose dot product with some other -2..2 vector equals n.

The programs for A226334, there is no canonical definition to state claims against.
-/

/-! ## A226334.P6932033065998050595

`A226410(∑[n+2])`
-/

namespace A226334.P6932033065998050595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226334.P6932033065998050595

/-! ## A226334.P11621225005094297264

`record[A226410(lt[A049410(n+1), n])]`
-/

namespace A226334.P11621225005094297264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049410 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226334.P11621225005094297264

/-! ## A226334.P17742153492862636511

`record[gcd(A226410(n+2), A264428(n+3))]`
-/

namespace A226334.P17742153492862636511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226410 (n + 2)) (A264428 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226334.P17742153492862636511

/-! ## A226334.P15601215065240666180

`A226410(A000096(n+1))+A025443(n)`
-/

namespace A226334.P15601215065240666180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (A000096 (n + 1)).toNat + A025443 n

end

end A226334.P15601215065240666180

/-! ## A226334.P13986188141067529300

`A226410(A000096(n+1))%A016963(n)`
-/

namespace A226334.P13986188141067529300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226410 (A000096 (n + 1)).toNat) (A016963 n)

end

end A226334.P13986188141067529300

/-!
# A226335: Number of nondecreasing -3..3 vectors of length n whose dot product with some other -3..3 vector equals n.

The programs for A226335, there is no canonical definition to state claims against.
-/

/-! ## A226335.P13392720077923110574

`A226340(∑[n+3]+1)`
-/

namespace A226335.P13392720077923110574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226335.P13392720077923110574

/-! ## A226335.P4026902081869655833

`record[A226340(n+1)/A094527(n+2)]`
-/

namespace A226335.P4026902081869655833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226340 (n + 1) : ℚ) / (A094527 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226335.P4026902081869655833

/-! ## A226335.P1758024109323857954

`record[A226340(n+1)/A324999(n+3)]`
-/

namespace A226335.P1758024109323857954
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226340 (n + 1) : ℚ) / (A324999 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226335.P1758024109323857954

/-! ## A226335.P11881857073079932547

`record[A226340(n+1)/A208760(n+4)]`
-/

namespace A226335.P11881857073079932547
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226340 (n + 1) : ℚ) / (A208760 (n + 4) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226335.P11881857073079932547

/-! ## A226335.P3902168541143227807

`record[gcd(A226340(n+1), A264428(n+3))]`
-/

namespace A226335.P3902168541143227807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A226340 (n + 1)) (A264428 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226335.P3902168541143227807

/-!
# A226336: Number of nondecreasing -4..4 vectors of length n whose dot product with some other -4..4 vector equals n.

The programs for A226336, there is no canonical definition to state claims against.
-/

/-! ## A226336.P3340601411816734311

`A226340(∑[n+4]+3)`
-/

namespace A226336.P3340601411816734311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A226336.P3340601411816734311

/-!
# A226337: Number of nondecreasing -5..5 vectors of length n whose dot product with some other -5..5 vector equals n.

The programs for A226337, there is no canonical definition to state claims against.
-/

/-! ## A226337.P11965731680421075860

`A226340(∑[n+5]+6)`
-/

namespace A226337.P11965731680421075860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A226337.P11965731680421075860

/-!
# A226338: Number of nondecreasing -6..6 vectors of length n whose dot product with some other -6..6 vector equals n.

The programs for A226338, there is no canonical definition to state claims against.
-/

/-! ## A226338.P7340909973381756821

`A226340(A052905(n+3))`
-/

namespace A226338.P7340909973381756821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A052905 (n + 3)).toNat

end

end A226338.P7340909973381756821

/-! ## A226338.P16831834478292315049

`A226340(A168105(n)-5)`
-/

namespace A226338.P16831834478292315049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A168105 n - 5).toNat

end

end A226338.P16831834478292315049

/-! ## A226338.P10288368898620807408

`A226340(eq[3, A219347(n)])`
-/

namespace A226338.P10288368898620807408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226338.P10288368898620807408

/-! ## A226338.P1826986312844007741

`A226340(eq[3, A274661(n)])`
-/

namespace A226338.P1826986312844007741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226338.P1826986312844007741

/-!
# A226339: Number of nondecreasing -7..7 vectors of length n whose dot product with some other -7..7 vector equals n.

The programs for A226339, there is no canonical definition to state claims against.
-/

/-! ## A226339.P11130587408337268506

`A226340(A055999(n+4))`
-/

namespace A226339.P11130587408337268506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A055999 (n + 4)).toNat

end

end A226339.P11130587408337268506

/-! ## A226339.P13444008637727635847

`A226340(eq[4, A219347(n)])`
-/

namespace A226339.P13444008637727635847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226339.P13444008637727635847

/-! ## A226339.P10848463409866640977

`A226340(eq[6, A193592(n)])`
-/

namespace A226339.P10848463409866640977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226339.P10848463409866640977

/-!
# A226340: T(n,k)=Number of nondecreasing -k..k vectors of length n whose dot product with some other -k..k vector equals n.

The programs for A226340, there is no canonical definition to state claims against.
-/

/-! ## A226340.P6791275342204313642

`A226410(n+1)+A010894(A344391(n))`
-/

namespace A226340.P6791275342204313642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (n + 1) + A010894 ((A344391 n).toNat + 21)

end

end A226340.P6791275342204313642

/-! ## A226340.P10058334828923775146

`A226410(n+1)+A225099(A352366(n))`
-/

namespace A226340.P10058334828923775146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (n + 1) + A225099 (A352366 n).toNat

end

end A226340.P10058334828923775146

/-! ## A226340.P15716458110649003786

`A226410(n+1)+A010894(A000203(n+1))`
-/

namespace A226340.P15716458110649003786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226410 (n + 1) + A010894 ((A000203 (n + 1)).toNat + 21)

end

end A226340.P15716458110649003786

/-! ## A226340.P12962106655505844369

`A277007(A166643(n+1))+A226410(n+1)`
-/

namespace A226340.P12962106655505844369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277007 (A166643 (n + 1)).toNat + A226410 (n + 1)

end

end A226340.P12962106655505844369

/-!
# A226341: Number of nondecreasing -n..n vectors of length 2 whose dot product with some other -n..n vector equals 2.

The programs for A226341, there is no canonical definition to state claims against.
-/

/-! ## A226341.P4400561187428355257

`A226399(n+1)+A036453(n+1)`
-/

namespace A226341.P4400561187428355257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A036453 (n + 1)

end

end A226341.P4400561187428355257

/-! ## A226341.P2102638546487282466

`A226399(n+1)+A057427(n)+1`
-/

namespace A226341.P2102638546487282466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + (A057427 n + 1)

end

end A226341.P2102638546487282466

/-! ## A226341.P1390714033205217936

`A226399(n+1)+A130130(n+1)`
-/

namespace A226341.P1390714033205217936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A130130 (n + 1)

end

end A226341.P1390714033205217936

/-! ## A226341.P14381832191293363380

`A226399(n+1)+1-A057428(n)`
-/

namespace A226341.P14381832191293363380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + (1 - A057428 n)

end

end A226341.P14381832191293363380

/-! ## A226341.P18377190197498732293

`A226399(n+1)+A000032(C(2, n+2))`
-/

namespace A226341.P18377190197498732293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A000032 (Nat.choose 2 (n + 2))

end

end A226341.P18377190197498732293

/-! ## A226341.P1293520733472939397

`A226399(n+1)+A000032(floor(1/(n+1)))`
-/

namespace A226341.P1293520733472939397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A000032 ⌊1 / (n + 1 : ℚ)⌋.toNat

end

end A226341.P1293520733472939397

/-! ## A226341.P7131673179347319689

`A226399(n+1)+(2%A000040(n+1))!`
-/

namespace A226341.P7131673179347319689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + (Nat.factorial (Int.tmod 2 (A000040 (n + 1))).toNat : ℤ)

end

end A226341.P7131673179347319689

/-! ## A226341.P17052468192239555577

`A000045(C(n, C(n, n²)))+A226399(n+1)+1`
-/

namespace A226341.P17052468192239555577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose n (Nat.choose n (n ^ 2))) + (A226399 (n + 1) + 1)

end

end A226341.P17052468192239555577

/-! ## A226341.P4941427321222757857

`A226399(n+1)+A020639(A000118(n))`
-/

namespace A226341.P4941427321222757857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A000118 n).toNat

end

end A226341.P4941427321222757857

/-! ## A226341.P8989039781691422610

`A226399(n+1)+A020639(A000132(n))`
-/

namespace A226341.P8989039781691422610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A000132 n).toNat

end

end A226341.P8989039781691422610

/-! ## A226341.P2712425071218220323

`A226399(n+1)+A020639(A004011(n))`
-/

namespace A226341.P2712425071218220323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A004011 n).toNat

end

end A226341.P2712425071218220323

/-! ## A226341.P11701526399482975654

`A226399(n+1)+A020639(A005893(n))`
-/

namespace A226341.P11701526399482975654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A005893 n).toNat

end

end A226341.P11701526399482975654

/-! ## A226341.P6852762315615746694

`A226399(n+1)+A020639(A008255(n))`
-/

namespace A226341.P6852762315615746694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A008255 n).toNat

end

end A226341.P6852762315615746694

/-! ## A226341.P10403164402326954122

`A226399(n+1)+A020639(A008458(n))`
-/

namespace A226341.P10403164402326954122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A008458 n).toNat

end

end A226341.P10403164402326954122

/-! ## A226341.P4528788881718443296

`A226399(n+1)+A020639(A008574(n))`
-/

namespace A226341.P4528788881718443296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A008574 n).toNat

end

end A226341.P4528788881718443296

/-! ## A226341.P15440240231778241886

`A226399(n+1)+A020639(A000010(n+2))`
-/

namespace A226341.P15440240231778241886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A000010 (n + 2)).toNat

end

end A226341.P15440240231778241886

/-! ## A226341.P16891536386724577060

`A226399(n+1)+A020639(A000040(n+1)-1)`
-/

namespace A226341.P16891536386724577060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (A000040 (n + 1) - 1).toNat

end

end A226341.P16891536386724577060

/-! ## A226341.P3654821092520771090

`A226399(n+1)+A001222(2*A006530(n+1))`
-/

namespace A226341.P3654821092520771090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A001222 (2 * A006530 (n + 1)).toNat

end

end A226341.P3654821092520771090

/-! ## A226341.P8621910654794924880

`A226399(n+1)+A020639(A226399(n+1)/2)`
-/

namespace A226341.P8621910654794924880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (n + 1) + A020639 (SequenceMachineLib.roundAway ((A226399 (n + 1) : ℚ) / 2)).toNat

end

end A226341.P8621910654794924880

/-!
# A226342: Number of nondecreasing -n..n vectors of length 3 whose dot product with some other -n..n vector equals 3.

The programs for A226342, there is no canonical definition to state claims against.
-/

/-! ## A226342.P6215346235369191127

`A226340(∑[n+2]+4)`
-/

namespace A226342.P6215346235369191127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A226342.P6215346235369191127

/-! ## A226342.P9672555171752569020

`or(char[1], A226340(A167614(n+1)))`
-/

namespace A226342.P9672555171752569020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226340 (A167614 (n + 1)).toNat)

end

end A226342.P9672555171752569020

/-! ## A226342.P3164014954971658865

`A226340(A167614(n+1))+A011738(n)`
-/

namespace A226342.P3164014954971658865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167614 (n + 1)).toNat + A011738 n

end

end A226342.P3164014954971658865

/-! ## A226342.P10653121816264696947

`A226340(A167614(n+1))+A025469(n)`
-/

namespace A226342.P10653121816264696947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167614 (n + 1)).toNat + A025469 n

end

end A226342.P10653121816264696947

/-! ## A226342.P18114404676182278929

`A226340(A167614(n+1))+A178798(n)`
-/

namespace A226342.P18114404676182278929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167614 (n + 1)).toNat + A178798 n

end

end A226342.P18114404676182278929

/-!
# A226343: Number of nondecreasing -n..n vectors of length 4 whose dot product with some other -n..n vector equals 4.

The programs for A226343, there is no canonical definition to state claims against.
-/

/-! ## A226343.P6487150246424132837

`A226340(∑[n+3]+7)`
-/

namespace A226343.P6487150246424132837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A226343.P6487150246424132837

/-! ## A226343.P5943559785524533476

`or(A025431(n), A226340(A167614(n+2)+1))`
-/

namespace A226343.P5943559785524533476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025431 n) (A226340 (A167614 (n + 2) + 1).toNat)

end

end A226343.P5943559785524533476

/-!
# A226344: Number of nondecreasing -n..n vectors of length 5 whose dot product with some other -n..n vector equals 5.

The programs for A226344, there is no canonical definition to state claims against.
-/

/-! ## A226344.P12501307541897960233

`A226340(A167499(n+3))`
-/

namespace A226344.P12501307541897960233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167499 (n + 3)).toNat

end

end A226344.P12501307541897960233

/-! ## A226344.P10762476309932152826

`A226340(A155212(n)+13)`
-/

namespace A226344.P10762476309932152826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A155212 n + 13).toNat

end

end A226344.P10762476309932152826

/-! ## A226344.P2904180178003329593

`A226340(A056000(n)+15)`
-/

namespace A226344.P2904180178003329593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A056000 n + 15).toNat

end

end A226344.P2904180178003329593

/-! ## A226344.P15859165728452001995

`A226340(eq[7, A066657(n)])`
-/

namespace A226344.P15859165728452001995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226344.P15859165728452001995

/-! ## A226344.P4881498154834211202

`A226340(A167614(n+3)+2)`
-/

namespace A226344.P4881498154834211202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167614 (n + 3) + 2).toNat

end

end A226344.P4881498154834211202

/-!
# A226345: Number of nondecreasing -n..n vectors of length 6 whose dot product with some other -n..n vector equals 6.

The programs for A226345, there is no canonical definition to state claims against.
-/

/-! ## A226345.P11545133154330563235

`A226340(A166136(n+4))`
-/

namespace A226345.P11545133154330563235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A166136 (n + 4)).toNat

end

end A226345.P11545133154330563235

/-! ## A226345.P18144977076684230017

`A226340(A056115(n)+21)`
-/

namespace A226345.P18144977076684230017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A056115 n + 21).toNat

end

end A226345.P18144977076684230017

/-! ## A226345.P16907022698625296433

`A226340(A167499(n+4)+1)`
-/

namespace A226345.P16907022698625296433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167499 (n + 4) + 1).toNat

end

end A226345.P16907022698625296433

/-! ## A226345.P2274756204975646464

`A226340(A167614(n+4)+3)`
-/

namespace A226345.P2274756204975646464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167614 (n + 4) + 3).toNat

end

end A226345.P2274756204975646464

/-!
# A226346: Number of nondecreasing -n..n vectors of length 7 whose dot product with some other -n..n vector equals 7.

The programs for A226346, there is no canonical definition to state claims against.
-/

/-! ## A226346.P15729454662664439458

`A226340(A167487(n+5))`
-/

namespace A226346.P15729454662664439458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A167487 (n + 5)).toNat

end

end A226346.P15729454662664439458

/-! ## A226346.P1600150694702701048

`A226340(A168105(n)+7)`
-/

namespace A226346.P1600150694702701048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A168105 n + 7).toNat

end

end A226346.P1600150694702701048

/-! ## A226346.P14808772821889157433

`A226340(A056119(n)+28)`
-/

namespace A226346.P14808772821889157433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (A056119 n + 28).toNat

end

end A226346.P14808772821889157433

/-!
# A226348: Number of ways to tile a fixed 3 x n square grid with 1 x 1, 2 x 2, and axially-oriented 1 x 2 tiles.

The programs for A226348, there is no canonical definition to state claims against.
-/

/-! ## A226348.P17985617203767873188

`A153141(A011782(2*(n+1)))-A151890(3*(n+1))`
-/

namespace A226348.P17985617203767873188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153141 (A011782 (2 * (n + 1))).toNat - A151890 (3 * (n + 1))

end

end A226348.P17985617203767873188

/-!
# A226349: Number of functions f:{1,2,...,n} -> {1,2,...,n} such that the 1 and the 2 are in the same component of the functional digraph representation of f.

The programs for A226349, there is no canonical definition to state claims against.
-/

/-! ## A226349.P13263844953939176725

`A002265(A004123(n+1)+A000142(n))`
-/

namespace A226349.P13263844953939176725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004123 (n + 1) + A000142 n).toNat

end

end A226349.P13263844953939176725

/-! ## A226349.P8864686921799527708

`A002265(A060727(n)+A004123(n+1))`
-/

namespace A226349.P8864686921799527708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A060727 n + A004123 (n + 1)).toNat

end

end A226349.P8864686921799527708

/-!
# A226350: Expansion of psi(x) * psi(-x^3) in powers of x where psi() is a Ramanujan theta function.

The programs for A226350, there is no canonical definition to state claims against.
-/

/-! ## A226350.P10402625845301637466

`A204010(n)/A131713(n)`
-/

namespace A226350.P10402625845301637466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (A131713 n : ℚ)

end

end A226350.P10402625845301637466

/-! ## A226350.P2686754199533756635

`A204010(n)/Δ[A117966(n)]`
-/

namespace A226350.P2686754199533756635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A226350.P2686754199533756635

/-! ## A226350.P15906235203270152407

`A204010(n)/(2-A100833(n+1)²)`
-/

namespace A226350.P15906235203270152407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (2 - A100833 (n + 1) ^ 2 : ℚ)

end

end A226350.P15906235203270152407

/-! ## A226350.P14006395842088843885

`A204010(n)/A181983(A100833(n+1))`
-/

namespace A226350.P14006395842088843885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (A181983 (A100833 (n + 1)).toNat : ℚ)

end

end A226350.P14006395842088843885

/-! ## A226350.P12577237950505089263

`A204010(n)/Δ[A130508(n+1)]`
-/

namespace A226350.P12577237950505089263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130508 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A226350.P12577237950505089263

/-! ## A226350.P10148433311211935229

`A204010(n)/A101675(2*n)`
-/

namespace A226350.P10148433311211935229
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204010 n : ℚ) / (A101675 (2 * n) : ℚ)

end

end A226350.P10148433311211935229

/-!
# A226351: Number of ways to tile a fixed 3 X n square grid with 1 X 1, 2 X 2, and 1 X 2 tiles.

The programs for A226351, there is no canonical definition to state claims against.
-/

/-! ## A226351.P6647255748466481902

`A324160(A067534(n+1))`
-/

namespace A226351.P6647255748466481902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324160 (A067534 (n + 1)).toNat

end

end A226351.P6647255748466481902

/-!
# A226352: Number of integers k in base n whose squared digits sum to sqrt(k).

The programs for A226352, there is no canonical definition to state claims against.
-/

/-! ## A226352.P16853793018094120726

`A059126(xor(A000642(n+2), A334111(n)))`
-/

namespace A226352.P16853793018094120726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (Int.xor (A000642 (n + 2)) (A334111 n)).toNat

end

end A226352.P16853793018094120726

/-! ## A226352.P4032501534122292076

`A051903(A239819(n+1)*A325107(n))`
-/

namespace A226352.P4032501534122292076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (A239819 (n + 1) * A325107 n).toNat

end

end A226352.P4032501534122292076

/-! ## A226352.P7761651852760386063

`A010876(A096502(n)^A000720(n+1))`
-/

namespace A226352.P7761651852760386063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010876 (SequenceMachineLib.roundAway ((A096502 n : ℚ) ^ (A000720 (n + 1) : ℤ))).toNat

end

end A226352.P7761651852760386063

/-! ## A226352.P4162950378924274280

`A228525(A140387(n+3)+A103021(n+1))`
-/

namespace A226352.P4162950378924274280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228525 (A140387 (n + 3) + A103021 (n + 1)).toNat

end

end A226352.P4162950378924274280

/-! ## A226352.P2425368891515320678

`A001222(2*n+3)*A036582(A322343(n+1))`
-/

namespace A226352.P2425368891515320678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 3) * A036582 (A322343 (n + 1)).toNat

end

end A226352.P2425368891515320678

/-!
# A226354: Squares that become cubes when their rightmost digit is removed.

The programs for A226354, there is no canonical definition to state claims against.
-/

/-! ## A226354.P12215330377569599775

`record[gcd(n², A119034(n+1))²]`
-/

namespace A226354.P12215330377569599775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A119034 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226354.P12215330377569599775

/-! ## A226354.P8643140364912110901

`record[gcd((A129276(n)+1)², ∑[n+1])²]`
-/

namespace A226354.P8643140364912110901
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((A129276 n + 1) ^ 2) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226354.P8643140364912110901

/-!
# A226355: Number of ordered pairs (i,j) with |i| * |j| <= n.

The programs for A226355, the canonical program `A226355.P11003096191181495319` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226355 has offset 0).

The definition of A226355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226355.P11003096191181495319

`4*(∑[∏{e}[n, #+1]]+n)-3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226355

/-- `4*(∑[∏{e}[n, #+1]]+n)-3` -/
def P11003096191181495319.Spec : Prop :=
  ∀ n, P11003096191181495319.a n = A226355 n

theorem P11003096191181495319.correct : P11003096191181495319.Spec := by
  intro n
  simp only [A226355]

end A226355

/-! ## A226355.P12123469251986621962

`4*A006590(n+1)-3`
-/

namespace A226355.P12123469251986621962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006590 (n + 1) - 3

end

end A226355.P12123469251986621962

namespace A226355

/-- `4*A006590(n+1)-3` -/
def P12123469251986621962.Spec : Prop :=
  ∀ n, P12123469251986621962.a n = A226355 n

end A226355

/-! ## A226355.P8030805390852742687

`4*(A006218(n)+n)+1`
-/

namespace A226355.P8030805390852742687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006218 n + (n : ℤ)) + 1

end

end A226355.P8030805390852742687

namespace A226355

/-- `4*(A006218(n)+n)+1` -/
def P8030805390852742687.Spec : Prop :=
  ∀ n, P8030805390852742687.a n = A226355 n

end A226355

/-! ## A226355.P6612148308950731344

`4*(A054519(n)+n)-3`
-/

namespace A226355.P6612148308950731344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A054519 n + (n : ℤ)) - 3

end

end A226355.P6612148308950731344

namespace A226355

/-- `4*(A054519(n)+n)-3` -/
def P6612148308950731344.Spec : Prop :=
  ∀ n, P6612148308950731344.a n = A226355 n

end A226355

/-! ## A226355.P14959951296927636805

`a(n-1)+A145154(n)+4` with `a(0)=1`
-/

namespace A226355.P14959951296927636805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A145154 n + 4)

end

end A226355.P14959951296927636805

namespace A226355

/-- `a(n-1)+A145154(n)+4` -/
def P14959951296927636805.Spec : Prop :=
  ∀ n, P14959951296927636805.a n = A226355 n

end A226355

/-! ## A226355.P2950065781230198154

`A270544(n)+A270543(n)`
-/

namespace A226355.P2950065781230198154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270544 n + A270543 n

end

end A226355.P2950065781230198154

namespace A226355

/-- `A270544(n)+A270543(n)` -/
def P2950065781230198154.Spec : Prop :=
  ∀ n, P2950065781230198154.a n = A226355 n

theorem P2950065781230198154.correct : P2950065781230198154.Spec := by
  intro n
  simp only [A226355, Nat.add_sub_cancel, A226355.P2950065781230198154.a, A226355.P11003096191181495319.f2, A226355.P11003096191181495319.f1, A226355.P11003096191181495319.a, A270543, A270543.P5734163756768148192.a, A270544, A270544.P6791323703914777716.a, A060831, A060831.P8526254986242244020.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A226355

/-! ## A226355.P8760079770607967556

`A008574(A000005(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A226355.P8760079770607967556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008574 (A000005 n + 1).toNat + a (n - 1)

end

end A226355.P8760079770607967556

namespace A226355

/-- `A008574(A000005(n)+1)+a(n-1)` -/
def P8760079770607967556.Spec : Prop :=
  ∀ n, P8760079770607967556.a n = A226355 n

end A226355

/-! ## A226355.P9427743083960892955

`A008586(A000005(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A226355.P9427743083960892955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008586 (A000005 n + 1).toNat + a (n - 1)

end

end A226355.P9427743083960892955

namespace A226355

/-- `A008586(A000005(n)+1)+a(n-1)` -/
def P9427743083960892955.Spec : Prop :=
  ∀ n, P9427743083960892955.a n = A226355 n

end A226355

/-! ## A226355.P16661276687904839978

`4*(∑[A000005(A028310(n))+1]-2)+1`
-/

namespace A226355.P16661276687904839978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A028310 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j - 2) + 1

end

end A226355.P16661276687904839978

namespace A226355

/-- `4*(∑[A000005(A028310(n))+1]-2)+1` -/
def P16661276687904839978.Spec : Prop :=
  ∀ n, P16661276687904839978.a n = A226355 n

end A226355

/-! ## A226355.P1080759823359804861

`A270543(2*n)-2*n`
-/

namespace A226355.P1080759823359804861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270543 (2 * n) - (2 * n : ℤ)

end

end A226355.P1080759823359804861

namespace A226355

/-- `A270543(2*n)-2*n` -/
def P1080759823359804861.Spec : Prop :=
  ∀ n, P1080759823359804861.a n = A226355 n

end A226355

/-! ## A226355.P17211836704116231469

`A016813(A006218(n))+4*n`
-/

namespace A226355.P17211836704116231469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A006218 n).toNat + (4 * n : ℤ)

end

end A226355.P17211836704116231469

namespace A226355

/-- `A016813(A006218(n))+4*n` -/
def P17211836704116231469.Spec : Prop :=
  ∀ n, P17211836704116231469.a n = A226355 n

end A226355

/-! ## A226355.P5433761106517614716

`A006590(n+1)+A008585(A006218(n))+A008585(n)`
-/

namespace A226355.P5433761106517614716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006590 (n + 1) + (A008585 (A006218 n).toNat + A008585 n)

end

end A226355.P5433761106517614716

namespace A226355

/-- `A006590(n+1)+A008585(A006218(n))+A008585(n)` -/
def P5433761106517614716.Spec : Prop :=
  ∀ n, P5433761106517614716.a n = A226355 n

end A226355

/-! ## A226355.P11255960998233821134

`A016813(A006218(n)+n)`
-/

namespace A226355.P11255960998233821134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A006218 n + (n : ℤ)).toNat

end

end A226355.P11255960998233821134

namespace A226355

/-- `A016813(A006218(n)+n)` -/
def P11255960998233821134.Spec : Prop :=
  ∀ n, P11255960998233821134.a n = A226355 n

end A226355

/-! ## A226355.P459120990521393015

`A016813(A006590(n+1)-1)`
-/

namespace A226355.P459120990521393015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A006590 (n + 1) - 1).toNat

end

end A226355.P459120990521393015

namespace A226355

/-- `A016813(A006590(n+1)-1)` -/
def P459120990521393015.Spec : Prop :=
  ∀ n, P459120990521393015.a n = A226355 n

end A226355

/-! ## A226355.P2845037793326892239

`A004767(A006218(n)+n)-2`
-/

namespace A226355.P2845037793326892239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 (A006218 n + (n : ℤ)).toNat - 2

end

end A226355.P2845037793326892239

namespace A226355

/-- `A004767(A006218(n)+n)-2` -/
def P2845037793326892239.Spec : Prop :=
  ∀ n, P2845037793326892239.a n = A226355 n

end A226355

/-! ## A226355.P17325467864012354715

`A016813(A362059(2*n+1)+n)`
-/

namespace A226355.P17325467864012354715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A362059 (2 * n + 1) + (n : ℤ)).toNat

end

end A226355.P17325467864012354715

namespace A226355

/-- `A016813(A362059(2*n+1)+n)` -/
def P17325467864012354715.Spec : Prop :=
  ∀ n, P17325467864012354715.a n = A226355 n

end A226355

/-! ## A226355.P3409495123248006261

`A008585(A006218(n)+n)+A006590(n+1)`
-/

namespace A226355.P3409495123248006261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A006218 n + (n : ℤ)).toNat + A006590 (n + 1)

end

end A226355.P3409495123248006261

namespace A226355

/-- `A008585(A006218(n)+n)+A006590(n+1)` -/
def P3409495123248006261.Spec : Prop :=
  ∀ n, P3409495123248006261.a n = A226355 n

end A226355

/-! ## A226355.P6992029787303226629

`A008585(A006590(n+1)-1)+A006590(n+1)`
-/

namespace A226355.P6992029787303226629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A006590 (n + 1) - 1).toNat + A006590 (n + 1)

end

end A226355.P6992029787303226629

namespace A226355

/-- `A008585(A006590(n+1)-1)+A006590(n+1)` -/
def P6992029787303226629.Spec : Prop :=
  ∀ n, P6992029787303226629.a n = A226355 n

end A226355

/-! ## A226355.P5675479031836058011

`A005408(2*(A006218(n)+n))`
-/

namespace A226355.P5675479031836058011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (2 * (A006218 n + (n : ℤ))).toNat

end

end A226355.P5675479031836058011

namespace A226355

/-- `A005408(2*(A006218(n)+n))` -/
def P5675479031836058011.Spec : Prop :=
  ∀ n, P5675479031836058011.a n = A226355 n

end A226355

/-!
# A226357: Number of ordered triples (i,j,k) with |i|,|j|,|k|,|i*j*k| <= n and gcd(i,j,k) <= 1.

The programs for A226357, there is no canonical definition to state claims against.
-/

/-! ## A226357.P1999434229512511405

`A001221(∑{digits}[n, 10^#])+∑[24*n]+1`
-/

namespace A226357.P1999434229512511405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 10 ^ x).sum + ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ)

end

end A226357.P1999434229512511405

/-! ## A226357.P13358325675389096105

`Δ[4*n^3-n]%A102878(3*n+1)`
-/

namespace A226357.P13358325675389096105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n ^ 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A102878 (3 * n + 1))

end

end A226357.P13358325675389096105

/-!
# A226363: Oblong numbers (A002378) whose sum of divisors is also an oblong number.

The programs for A226363, there is no canonical definition to state claims against.
-/

/-! ## A226363.P3520812615003890625

`∩[A236387(n+1), n²+n]`
-/

namespace A226363.P3520812615003890625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A226363.P3520812615003890625

/-! ## A226363.P9762436887171094300

`∩[A002378(n), A236387(n+1)]`
-/

namespace A226363.P9762436887171094300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226363.P9762436887171094300

/-! ## A226363.P14015859944375657954

`∩[A087811(n+1), A236387(n+1)]`
-/

namespace A226363.P14015859944375657954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226363.P14015859944375657954

/-! ## A226363.P58142067397696005

`∩[2*A000217(n), A236387(n+1)]`
-/

namespace A226363.P58142067397696005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226363.P58142067397696005

/-! ## A226363.P2197130425022204246

`∩[(n+1)*A065033(2*n), A236387(n+1)]`
-/

namespace A226363.P2197130425022204246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A065033 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226363.P2197130425022204246

/-!
# A226366: Numbers k such that 5*2^k + 1 is a prime factor of a Fermat number 2^(2^m) + 1 for some m.

The programs for A226366, there is no canonical definition to state claims against.
-/

/-! ## A226366.P5170787618871120686

`A268662(record[Δ[A274820(n)]])`
-/

namespace A226366.P5170787618871120686
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274820 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226366.P5170787618871120686

/-! ## A226366.P4031084380757428774

`A268662(comp[∑[A268672(2*n)]])`
-/

namespace A226366.P4031084380757428774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268662 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A226366.P4031084380757428774

/-! ## A226366.P15358807239816010423

`A268662(floor(sqrt(A014190(3*n+4)-1)))`
-/

namespace A226366.P15358807239816010423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268662 (Int.sqrt (A014190 (3 * n + 4) - 1)).toNat

end

end A226366.P15358807239816010423

/-! ## A226366.P6894454200575343828

`A268662(A265404(n)+A228856(n+1))`
-/

namespace A226366.P6894454200575343828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268662 (A265404 n + A228856 (n + 1)).toNat

end

end A226366.P6894454200575343828

/-! ## A226366.P3229259909714869651

`A268662(lt[A305800(n+1), A274513(n+1)])`
-/

namespace A226366.P3229259909714869651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305800 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268662 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226366.P3229259909714869651

/-!
# A226367: Multiplicative order of the (n+1)-st prime modulo the n-th prime.

The programs for A226367, there is no canonical definition to state claims against.
-/

/-! ## A226367.P17520846165963714323

`A323376(2*(n+1)²)`
-/

namespace A226367.P17520846165963714323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (2 * (n + 1) ^ 2)

end

end A226367.P17520846165963714323

/-! ## A226367.P2798155078591948112

`or(char[3], A323376(∑[4*n+2]))`
-/

namespace A226367.P2798155078591948112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A323376 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A226367.P2798155078591948112

/-! ## A226367.P2051398735626730719

`A000027(A323376(∑[4*n+2]))`
-/

namespace A226367.P2051398735626730719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A323376 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A226367.P2051398735626730719

/-! ## A226367.P13739505434940705853

`A323376(∑[4*n+2])%A023488(n)`
-/

namespace A226367.P13739505434940705853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323376 (∑ j ∈ Finset.range (n + 1), f1 j)) (A023488 n)

end

end A226367.P13739505434940705853

/-! ## A226367.P9374615425130673434

`A007318(C(2, n))*A323376(∑[4*n+2])`
-/

namespace A226367.P9374615425130673434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A323376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226367.P9374615425130673434

/-! ## A226367.P12893378390955683954

`A000041(and(1, -n))*A323376(∑[4*n+2])`
-/

namespace A226367.P12893378390955683954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.land 1 (-(n : ℤ))).toNat * A323376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226367.P12893378390955683954

/-! ## A226367.P13195690854835043495

`A323376(∑[4*n+2])^A014963(6*(n+1))`
-/

namespace A226367.P13195690854835043495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323376 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) ^ (A014963 (6 * (n + 1)) : ℤ)

end

end A226367.P13195690854835043495

/-! ## A226367.P1315583726346359884

`A000041(C(2, n+2))*A323376(∑[4*n+2])`
-/

namespace A226367.P1315583726346359884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A323376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226367.P1315583726346359884

/-! ## A226367.P7847148485705574912

`A000108(C(2, n+2))*A323376(∑[4*n+2])`
-/

namespace A226367.P7847148485705574912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A323376 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226367.P7847148485705574912

/-! ## A226367.P13574764138048925989

`A323376(∑[4*n+2])-and(4, A001221(n+1))`
-/

namespace A226367.P13574764138048925989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323376 (∑ j ∈ Finset.range (n + 1), f1 j) - Int.land 4 (A001221 (n + 1))

end

end A226367.P13574764138048925989

/-!
# A226368: Numbers k such that Omega(k) = Omega(2^k + 1), where Omega = A001222 is the number of prime factors counted with multiplicity.

The programs for A226368, there is no canonical definition to state claims against.
-/

/-! ## A226368.P11043551248207421517

`eq[A001222(n+1), A054992(n+1)]+1`
-/

namespace A226368.P11043551248207421517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226368.P11043551248207421517

/-! ## A226368.P14324823617139794060

`eq[A046798(n), A061142(A028310(n))]`
-/

namespace A226368.P14324823617139794060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226368.P14324823617139794060

/-! ## A226368.P11799725564528637416

`A195013(eq[A001222(n+1), A054992(n+1)])`
-/

namespace A226368.P11799725564528637416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195013 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226368.P11799725564528637416

/-! ## A226368.P10498189707205619655

`eq[A057957(n+1)-A046051(n+1), A001222(n+1)]+1`
-/

namespace A226368.P10498189707205619655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057957 (n + 1) - A046051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226368.P10498189707205619655

/-! ## A226368.P8174687781957718097

`eq[A001222(n+1), A277892(2*A000040(n+2))]+1`
-/

namespace A226368.P8174687781957718097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277892 (2 * A000040 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226368.P8174687781957718097

/-!
# A226369: Number of tilings of a 5 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226369, the canonical program `A226369.P645782994730706727` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226369 has offset 0).

The definition of A226369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226369.P645782994730706727

`a(n-5)+2*a(n-6)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226369

/-- `a(n-5)+2*a(n-6)` -/
def P645782994730706727.Spec : Prop :=
  ∀ n, (P645782994730706727.a n : ℤ) = A226369 n

theorem P645782994730706727.correct : P645782994730706727.Spec := by
  intro n
  simp only [A226369]

end A226369

/-! ## A226369.P1796571488119313115

`A226206(A055999(n+3))`
-/

namespace A226369.P1796571488119313115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A055999 (n + 3)).toNat

end

end A226369.P1796571488119313115

namespace A226369

/-- `A226206(A055999(n+3))` -/
def P1796571488119313115.Spec : Prop :=
  ∀ n, P1796571488119313115.a n = A226369 n

end A226369

/-! ## A226369.P2725303767397958130

`A226206(A056119(n)+15)`
-/

namespace A226369.P2725303767397958130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A056119 n + 15).toNat

end

end A226369.P2725303767397958130

namespace A226369

/-- `A226206(A056119(n)+15)` -/
def P2725303767397958130.Spec : Prop :=
  ∀ n, P2725303767397958130.a n = A226369 n

end A226369

/-! ## A226369.P15824374010142185633

`A226206(eq[5, A002262(n)])`
-/

namespace A226369.P15824374010142185633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226369.P15824374010142185633

namespace A226369

/-- `A226206(eq[5, A002262(n)])` -/
def P15824374010142185633.Spec : Prop :=
  ∀ n, P15824374010142185633.a n = A226369 n

end A226369

/-! ## A226369.P10465952324113705390

`A226206(eq[5, A025581(n)])`
-/

namespace A226369.P10465952324113705390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226369.P10465952324113705390

namespace A226369

/-- `A226206(eq[5, A025581(n)])` -/
def P10465952324113705390.Spec : Prop :=
  ∀ n, P10465952324113705390.a n = A226369 n

end A226369

/-!
# A226370: Number of tilings of a 6 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226370, the canonical program `A226370.P2309490145922576087` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226370 has offset 0).

The definition of A226370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226370.P2309490145922576087

`a(n-2)+a(n-3)+2*a(n-4)+a(n-6)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A226370

/-- `a(n-2)+a(n-3)+2*a(n-4)+a(n-6)` -/
def P2309490145922576087.Spec : Prop :=
  ∀ n, (P2309490145922576087.a n : ℤ) = A226370 n

theorem P2309490145922576087.correct : P2309490145922576087.Spec := by
  intro n
  simp only [A226370]

end A226370

/-! ## A226370.P1872682106913346029

`A226206(A056121(n)+21)`
-/

namespace A226370.P1872682106913346029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A056121 n + 21).toNat

end

end A226370.P1872682106913346029

namespace A226370

/-- `A226206(A056121(n)+21)` -/
def P1872682106913346029.Spec : Prop :=
  ∀ n, P1872682106913346029.a n = A226370 n

end A226370

/-! ## A226370.P7815694408825848522

`A226206(eq[6, A002262(n)])`
-/

namespace A226370.P7815694408825848522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226370.P7815694408825848522

namespace A226370

/-- `A226206(eq[6, A002262(n)])` -/
def P7815694408825848522.Spec : Prop :=
  ∀ n, P7815694408825848522.a n = A226370 n

end A226370

/-! ## A226370.P12515399082578357672

`A226206(eq[6, A025581(n)])`
-/

namespace A226370.P12515399082578357672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226370.P12515399082578357672

namespace A226370

/-- `A226206(eq[6, A025581(n)])` -/
def P12515399082578357672.Spec : Prop :=
  ∀ n, P12515399082578357672.a n = A226370 n

end A226370

/-! ## A226370.P15582009705726785960

`A226206(eq[7, A195663(n)])`
-/

namespace A226370.P15582009705726785960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226370.P15582009705726785960

namespace A226370

/-- `A226206(eq[7, A195663(n)])` -/
def P15582009705726785960.Spec : Prop :=
  ∀ n, P15582009705726785960.a n = A226370 n

end A226370

/-!
# A226371: Number of tilings of a 7 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226371, there is no canonical definition to state claims against.
-/

/-! ## A226371.P4293306732925889111

`A226206(A155212(n+4))`
-/

namespace A226371.P4293306732925889111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A155212 (n + 4)).toNat

end

end A226371.P4293306732925889111

/-! ## A226371.P272564136263285761

`A226206(eq[7, A002262(n)])`
-/

namespace A226371.P272564136263285761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226371.P272564136263285761

/-! ## A226371.P6168276438913653325

`A226206(eq[7, A025581(n)])`
-/

namespace A226371.P6168276438913653325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226371.P6168276438913653325

/-! ## A226371.P2894178761240154492

`A226206(eq[8, A195663(n)])`
-/

namespace A226371.P2894178761240154492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226371.P2894178761240154492

/-! ## A226371.P2514662805153637271

`A226206(A374009(n+1)-1)`
-/

namespace A226371.P2514662805153637271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A374009 (n + 1) - 1).toNat

end

end A226371.P2514662805153637271

/-!
# A226372: Number of tilings of an 8 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226372, there is no canonical definition to state claims against.
-/

/-! ## A226372.P3934809389392175970

`A226206(A051936(n+9))`
-/

namespace A226372.P3934809389392175970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A051936 (n + 9)).toNat

end

end A226372.P3934809389392175970

/-! ## A226372.P14097393637074820468

`A226206(A056126(n)+44)`
-/

namespace A226372.P14097393637074820468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A056126 n + 44).toNat

end

end A226372.P14097393637074820468

/-! ## A226372.P8623100294138294130

`A226206(eq[8, A002262(n)])`
-/

namespace A226372.P8623100294138294130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226372.P8623100294138294130

/-! ## A226372.P690844467606335257

`A226206(eq[9, A195663(n)])`
-/

namespace A226372.P690844467606335257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226372.P690844467606335257

/-! ## A226372.P16968533576037670826

`A226206(Δ[A101853(n+4)])`
-/

namespace A226372.P16968533576037670826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (f1 (n + 1) - f1 n).toNat

end

end A226372.P16968533576037670826

/-!
# A226373: Number of tilings of a 9 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226373, there is no canonical definition to state claims against.
-/

/-! ## A226373.P11154758251310001009

`A226206(eq[9, A002262(n)])`
-/

namespace A226373.P11154758251310001009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226373.P11154758251310001009

/-! ## A226373.P14463566405210758352

`A226206(eq[9, A025581(n)])`
-/

namespace A226373.P14463566405210758352
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226373.P14463566405210758352

/-! ## A226373.P14140926877309654337

`A226206(A000096(n+8)+10)`
-/

namespace A226373.P14140926877309654337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A000096 (n + 8) + 10).toNat

end

end A226373.P14140926877309654337

/-! ## A226373.P9365158001907078909

`A226206(A000217(n+10)-10)`
-/

namespace A226373.P9365158001907078909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A000217 (n + 10) - 10).toNat

end

end A226373.P9365158001907078909

/-! ## A226373.P12008522200148962565

`A226206(eq[9, A144328(n+1)])`
-/

namespace A226373.P12008522200148962565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226373.P12008522200148962565

/-!
# A226374: Number of tilings of a 10 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226374, there is no canonical definition to state claims against.
-/

/-! ## A226374.P6253051012039856064

`A226206(eq[10, A002262(n)])`
-/

namespace A226374.P6253051012039856064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226374.P6253051012039856064

/-! ## A226374.P6510267773085358674

`A226206(eq[10, A025581(n)])`
-/

namespace A226374.P6510267773085358674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226374.P6510267773085358674

/-! ## A226374.P6476707445278990470

`A226206(eq[21, A099375(n)])`
-/

namespace A226374.P6476707445278990470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226374.P6476707445278990470

/-! ## A226374.P17574161509121131907

`A226206(eq[10, A144328(n+1)])`
-/

namespace A226374.P17574161509121131907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226374.P17574161509121131907

/-! ## A226374.P7817549700926092742

`A226206(eq[11, A002260(n+1)])`
-/

namespace A226374.P7817549700926092742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226374.P7817549700926092742

/-!
# A226375: Number of tilings of an 11 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226375, there is no canonical definition to state claims against.
-/

/-! ## A226375.P7216488828242524838

`A226206(eq[11, A002262(n)])`
-/

namespace A226375.P7216488828242524838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226375.P7216488828242524838

/-! ## A226375.P18092424487800768992

`A226206(eq[11, A025581(n)])`
-/

namespace A226375.P18092424487800768992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226375.P18092424487800768992

/-! ## A226375.P5643348906648559565

`A226206(eq[12, A195663(n)])`
-/

namespace A226375.P5643348906648559565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226375.P5643348906648559565

/-! ## A226375.P10407598639277202140

`A226206(eq[11, A144328(n+1)])`
-/

namespace A226375.P10407598639277202140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226375.P10407598639277202140

/-! ## A226375.P5751941722554298664

`A226206(eq[12, A002260(n+1)])`
-/

namespace A226375.P5751941722554298664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226375.P5751941722554298664

/-!
# A226376: Number of tilings of a 12 X n rectangle using integer-sided square tiles of area > 1.

The programs for A226376, there is no canonical definition to state claims against.
-/

/-! ## A226376.P10137102119544155856

`A226206(eq[12, A002262(n)])`
-/

namespace A226376.P10137102119544155856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226376.P10137102119544155856

/-! ## A226376.P4551046761758532339

`A226206(eq[12, A025581(n)])`
-/

namespace A226376.P4551046761758532339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226376.P4551046761758532339

/-! ## A226376.P2281831654975625719

`A226206(eq[12, A144328(n+1)])`
-/

namespace A226376.P2281831654975625719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226376.P2281831654975625719

/-! ## A226376.P17898314905707260399

`A226206(eq[13, A002260(n+1)])`
-/

namespace A226376.P17898314905707260399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226376.P17898314905707260399

/-! ## A226376.P7162576020178522580

`A226206(eq[13, A004736(n+1)])`
-/

namespace A226376.P7162576020178522580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226376.P7162576020178522580

/-!
# A226378: Number of distinct sums i+j+k with i,j,k >= 0, i*j*k = n.

The programs for A226378, there is no canonical definition to state claims against.
-/

/-! ## A226378.P7980797156667784374

`A033273(or(n, C(n, n²)))%A046300(n)`
-/

namespace A226378.P7980797156667784374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (Nat.lor n (Nat.choose n (n ^ 2)))) (A046300 n)

end

end A226378.P7980797156667784374

/-! ## A226378.P5584402451667052442

`A033273(round(1/sqrt(A111315(n+1))+n))`
-/

namespace A226378.P5584402451667052442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (SequenceMachineLib.roundAway (1 / Real.sqrt (A111315 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A226378.P5584402451667052442

/-! ## A226378.P15050524778104709756

`A033273(round(acot(n)+n))%A342364(n+1)`
-/

namespace A226378.P15050524778104709756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat) (A342364 (n + 1))

end

end A226378.P15050524778104709756

/-! ## A226378.P2204036967960533183

`A033273(A028310(n))%A107784(n)`
-/

namespace A226378.P2204036967960533183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033273 (A028310 n).toNat) (A107784 n)

end

end A226378.P2204036967960533183

/-! ## A226378.P2654591666299496330

`A347460(floor(1/A379536(2*n+1))²+n)`
-/

namespace A226378.P2654591666299496330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347460 (⌊1 / (A379536 (2 * n + 1) : ℚ)⌋ ^ 2 + (n : ℤ)).toNat

end

end A226378.P2654591666299496330

/-!
# A226380: Smallest of 101 consecutive primes whose sum is prime.

The programs for A226380, there is no canonical definition to state claims against.
-/

/-! ## A226380.P2108315703827439570

`A173972(A299205(n+1)+7)`
-/

namespace A226380.P2108315703827439570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173972 (A299205 (n + 1) + 7).toNat

end

end A226380.P2108315703827439570

/-!
# A226381: Numbers n such that the distance from n to the next prime is the same as the distance from n^2 to the next prime.

The programs for A226381, the canonical program `A226381.P1779935612286312944` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226381 has offset 1).

The definition of A226381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1270 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226381.P14686532702161136568

`eq[A053000(n), A175851(A119257(n+1))]`
-/

namespace A226381.P14686532702161136568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (A119257 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P14686532702161136568

namespace A226381

/-- `eq[A053000(n), A175851(A119257(n+1))]` -/
def P14686532702161136568.Spec : Prop :=
  ∀ n, (P14686532702161136568.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P1779935612286312944

`eq[A053000(n)*A151800(n), A139693(n)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226381

/-- `eq[A053000(n)*A151800(n), A139693(n)]` -/
def P1779935612286312944.Spec : Prop :=
  ∀ n, (P1779935612286312944.a n : ℤ) = A226381 (n + 1)

theorem P1779935612286312944.correct : P1779935612286312944.Spec := by
  intro n
  simp only [A226381, Nat.add_sub_cancel]

end A226381

/-! ## A226381.P10067437004291131954

`eq[A013632(n+1), A053000(n+1)]+1`
-/

namespace A226381.P10067437004291131954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226381.P10067437004291131954

namespace A226381

/-- `eq[A013632(n+1), A053000(n+1)]+1` -/
def P10067437004291131954.Spec : Prop :=
  ∀ n, (P10067437004291131954.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P1589942601295590649

`eq[A013632(n)%A007918(n), A053000(n)]`
-/

namespace A226381.P1589942601295590649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013632 n) (A007918 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P1589942601295590649

namespace A226381

/-- `eq[A013632(n)%A007918(n), A053000(n)]` -/
def P1589942601295590649.Spec : Prop :=
  ∀ n, (P1589942601295590649.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P713880391336936272

`eq[A053000(n)%A151800(n), A013632(n)]`
-/

namespace A226381.P713880391336936272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053000 n) (A151800 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P713880391336936272

namespace A226381

/-- `eq[A053000(n)%A151800(n), A013632(n)]` -/
def P713880391336936272.Spec : Prop :=
  ∀ n, (P713880391336936272.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P15816040078828854651

`eq[A053000(n)+n, A159477(n+1)]`
-/

namespace A226381.P15816040078828854651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P15816040078828854651

namespace A226381

/-- `eq[A053000(n)+n, A159477(n+1)]` -/
def P15816040078828854651.Spec : Prop :=
  ∀ n, (P15816040078828854651.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P164513254858712618

`eq[A013632(A233583(n+1)), A053000(n)]`
-/

namespace A226381.P164513254858712618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P164513254858712618

namespace A226381

/-- `eq[A013632(A233583(n+1)), A053000(n)]` -/
def P164513254858712618.Spec : Prop :=
  ∀ n, (P164513254858712618.a n : ℤ) = A226381 (n + 1)

end A226381

/-! ## A226381.P7032113277123505718

`eq[A051119(A139693(n)), A053000(n)]`
-/

namespace A226381.P7032113277123505718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051119 (A139693 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226381.P7032113277123505718

namespace A226381

/-- `eq[A051119(A139693(n)), A053000(n)]` -/
def P7032113277123505718.Spec : Prop :=
  ∀ n, (P7032113277123505718.a n : ℤ) = A226381 (n + 1)

end A226381

/-!
# A226382: Largest squarefree triangular number < 10^n.

The programs for A226382, there is no canonical definition to state claims against.
-/

/-! ## A226382.P1040678680219815367

`A000217(A095863(n+1)-A138158(2*n+1))`
-/

namespace A226382.P1040678680219815367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A095863 (n + 1) - A138158 (2 * n + 1)).toNat

end

end A226382.P1040678680219815367

/-!
# A226383: Odd numbers >1 for which there is at least one 3-smooth representation that is special of level k, including repeats if there are multiple representations.

The programs for A226383, there is no canonical definition to state claims against.
-/

/-! ## A226383.P15252582576907195411

`A016825(n)+A002325(A017426(n))`
-/

namespace A226383.P15252582576907195411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n + A002325 (A017426 n).toNat

end

end A226383.P15252582576907195411

/-! ## A226383.P9587967167211430659

`or(A001222(A113228(n)), A113194(n+1))`
-/

namespace A226383.P9587967167211430659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A113228 n).toNat) (A113194 (n + 1))

end

end A226383.P9587967167211430659

/-! ## A226383.P3297134510637110500

`or(A001221(A113229(n)), A113194(n+1))`
-/

namespace A226383.P3297134510637110500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001221 (A113229 n).toNat) (A113194 (n + 1))

end

end A226383.P3297134510637110500

/-! ## A226383.P7107007572200007117

`or(A090330(A130878(n+1)), A113194(n+1))`
-/

namespace A226383.P7107007572200007117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A090330 (A130878 (n + 1)).toNat) (A113194 (n + 1))

end

end A226383.P7107007572200007117

/-! ## A226383.P4019975778167499346

`or(A014963(A295155(n+1)), A113194(n+1))`
-/

namespace A226383.P4019975778167499346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014963 (A295155 (n + 1)).toNat) (A113194 (n + 1))

end

end A226383.P4019975778167499346

/-!
# A226384: Numbers k such that rad(phi(k)) = phi(rad(k)).

The programs for A226384, the canonical program `A226384.P3146837539781542249` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226384 has offset 1).

The definition of A226384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4268 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226384.P3146837539781542249

`eq[A003958(n+1), A007947(A000010(n+1))]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A226384

/-- `eq[A003958(n+1), A007947(A000010(n+1))]+1` -/
def P3146837539781542249.Spec : Prop :=
  ∀ n, (P3146837539781542249.a n : ℤ) = A226384 (n + 1)

theorem P3146837539781542249.correct : P3146837539781542249.Spec := by
  intro n
  simp only [A226384, Nat.add_sub_cancel]

end A226384

/-! ## A226384.P10128067500553029855

`eq[A336551(A000010(n+1)), A336551(n+1)]+1`
-/

namespace A226384.P10128067500553029855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P10128067500553029855

namespace A226384

/-- `eq[A336551(A000010(n+1)), A336551(n+1)]+1` -/
def P10128067500553029855.Spec : Prop :=
  ∀ n, (P10128067500553029855.a n : ℤ) = A226384 (n + 1)

end A226384

/-! ## A226384.P1793475719686223980

`eq[A057521(A000010(n+1)), A057521(n+1)]+1`
-/

namespace A226384.P1793475719686223980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P1793475719686223980

namespace A226384

/-- `eq[A057521(A000010(n+1)), A057521(n+1)]+1` -/
def P1793475719686223980.Spec : Prop :=
  ∀ n, (P1793475719686223980.a n : ℤ) = A226384 (n + 1)

end A226384

/-! ## A226384.P9670423842792479223

`eq[A336644(A000010(n+1)), A336644(n+1)]+1`
-/

namespace A226384.P9670423842792479223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336644 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P9670423842792479223

namespace A226384

/-- `eq[A336644(A000010(n+1)), A336644(n+1)]+1` -/
def P9670423842792479223.Spec : Prop :=
  ∀ n, (P9670423842792479223.a n : ℤ) = A226384 (n + 1)

end A226384

/-! ## A226384.P9827812334731009027

`eq[A003557(A000010(n+1)), A003557(n+1)]+1`
-/

namespace A226384.P9827812334731009027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A000010 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A226384.P9827812334731009027

namespace A226384

/-- `eq[A003557(A000010(n+1)), A003557(n+1)]+1` -/
def P9827812334731009027.Spec : Prop :=
  ∀ n, (P9827812334731009027.a n : ℤ) = A226384 (n + 1)

end A226384

/-!
# A226385: Numbers n such that rad(phi(n)) > phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

The programs for A226385, the canonical program `A226385.P8581291142238122846` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226385 has offset 1).

The definition of A226385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2444 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226385.P8581291142238122846

`lt[A336551(A000010(n+1)), A336551(n+1)]+1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226385

/-- `lt[A336551(A000010(n+1)), A336551(n+1)]+1` -/
def P8581291142238122846.Spec : Prop :=
  ∀ n, (P8581291142238122846.a n : ℤ) = A226385 (n + 1)

theorem P8581291142238122846.correct : P8581291142238122846.Spec := by
  intro n
  simp only [A226385, Nat.add_sub_cancel]

end A226385

/-! ## A226385.P4810344903036434900

`lt[A173557(n+1), A080400(n+1)]+1`
-/

namespace A226385.P4810344903036434900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080400 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226385.P4810344903036434900

namespace A226385

/-- `lt[A173557(n+1), A080400(n+1)]+1` -/
def P4810344903036434900.Spec : Prop :=
  ∀ n, (P4810344903036434900.a n : ℤ) = A226385 (n + 1)

end A226385

/-! ## A226385.P977094346663395469

`A070003(n+1)-A185284(2*n+3)`
-/

namespace A226385.P977094346663395469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) - A185284 (2 * n + 3)

end

end A226385.P977094346663395469

namespace A226385

/-- `A070003(n+1)-A185284(2*n+3)` -/
def P977094346663395469.Spec : Prop :=
  ∀ n, P977094346663395469.a n = A226385 (n + 1)

end A226385

/-! ## A226385.P8530031982305853310

`A070003(n+1)+A016389(A013610(n))`
-/

namespace A226385.P8530031982305853310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) + A016389 (A013610 n).toNat

end

end A226385.P8530031982305853310

namespace A226385

/-- `A070003(n+1)+A016389(A013610(n))` -/
def P8530031982305853310.Spec : Prop :=
  ∀ n, P8530031982305853310.a n = A226385 (n + 1)

end A226385

/-! ## A226385.P15426958777753283855

`A070003(n+1)-A082784(A000712(n))`
-/

namespace A226385.P15426958777753283855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1) - A082784 (A000712 n).toNat

end

end A226385.P15426958777753283855

namespace A226385

/-- `A070003(n+1)-A082784(A000712(n))` -/
def P15426958777753283855.Spec : Prop :=
  ∀ n, P15426958777753283855.a n = A226385 (n + 1)

end A226385

/-!
# A226386: Numbers n such that rad(phi(n)) < phi(rad(n)), where rad(n) is the squarefree kernel of n, and phi is Euler's totient function.

The programs for A226386, the canonical program `A226386.P1965072438224400353` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226386 has offset 1).

The definition of A226386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226386.P1965072438224400353

`lt[A080400(n+1), A173557(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A226386

/-- `lt[A080400(n+1), A173557(n+1)]+1` -/
def P1965072438224400353.Spec : Prop :=
  ∀ n, (P1965072438224400353.a n : ℤ) = A226386 (n + 1)

theorem P1965072438224400353.correct : P1965072438224400353.Spec := by
  intro n
  simp only [A226386, Nat.add_sub_cancel]

end A226386

/-! ## A226386.P9551726577095011990

`lt[A336551(n+1), A336551(A000010(n+1))]+1`
-/

namespace A226386.P9551726577095011990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A226386.P9551726577095011990

namespace A226386

/-- `lt[A336551(n+1), A336551(A000010(n+1))]+1` -/
def P9551726577095011990.Spec : Prop :=
  ∀ n, (P9551726577095011990.a n : ℤ) = A226386 (n + 1)

end A226386

/-!
# A226388: Number of n-permutations such that all cycle lengths have a common divisor >= 2.

The programs for A226388, there is no canonical definition to state claims against.
-/

/-! ## A226388.P4416685855344732695

`n!-A079128(A028310(n))`
-/

namespace A226388.P4416685855344732695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A079128 (A028310 n).toNat

end

end A226388.P4416685855344732695

/-! ## A226388.P13326285474948428976

`A000142(n)-A079128(A028310(n))`
-/

namespace A226388.P13326285474948428976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A079128 (A028310 n).toNat

end

end A226388.P13326285474948428976

/-! ## A226388.P13282644479374917619

`A081123(2*n)-A079128(A028310(n))`
-/

namespace A226388.P13282644479374917619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 (2 * n) - A079128 (A028310 n).toNat

end

end A226388.P13282644479374917619

/-! ## A226388.P14981480030053807863

`A152656(A000217(n))-A079128(A028310(n))`
-/

namespace A226388.P14981480030053807863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152656 (A000217 n).toNat - A079128 (A028310 n).toNat

end

end A226388.P14981480030053807863

/-! ## A226388.P4291197688733536736

`A216919(A000124(n))-A079128(A028310(n))`
-/

namespace A226388.P4291197688733536736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216919 (A000124 n).toNat - A079128 (A028310 n).toNat

end

end A226388.P4291197688733536736

/-!
# A226389: Triangular numbers representable as triangular(x)*triangular(y)+1.

The programs for A226389, there is no canonical definition to state claims against.
-/

/-! ## A226389.P12214545767022487607

`∩[A085780(n+1), A000096(n)]+1`
-/

namespace A226389.P12214545767022487607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A226389.P12214545767022487607

/-! ## A226389.P10984957655191156216

`∩[A085780(n+1)+1, A000217(n)]`
-/

namespace A226389.P10984957655191156216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226389.P10984957655191156216

/-! ## A226389.P6808745793190335241

`∩[A085780(n+1), A027468(n)]+1`
-/

namespace A226389.P6808745793190335241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A226389.P6808745793190335241

/-! ## A226389.P14509780806494614602

`∩[A085780(n+1)+1, A334129(n+1)]`
-/

namespace A226389.P14509780806494614602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085780 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226389.P14509780806494614602

/-!
# A226390: First differences of A014011.

The programs for A226390, there is no canonical definition to state claims against.
-/

/-! ## A226390.P4420442719723955487

`A057427(n)+A051742(n+1)`
-/

namespace A226390.P4420442719723955487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A051742 (n + 1)

end

end A226390.P4420442719723955487

/-! ## A226390.P3254868688375826137

`A051742(n+1)-A057428(n)`
-/

namespace A226390.P3254868688375826137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (n + 1) - A057428 n

end

end A226390.P3254868688375826137

/-! ## A226390.P5917369305147193858

`Δ[A014011(n+1)]`
-/

namespace A226390.P5917369305147193858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226390.P5917369305147193858

/-! ## A226390.P2117203942803171033

`A014011(n+2)-A014011(n+1)`
-/

namespace A226390.P2117203942803171033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014011 (n + 2) - A014011 (n + 1)

end

end A226390.P2117203942803171033

/-! ## A226390.P4450230036634451598

`gcd(A014011(n+2)*A046117(n+1), A014011(n+1))`
-/

namespace A226390.P4450230036634451598
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014011 (n + 2) * A046117 (n + 1)) (A014011 (n + 1))

end

end A226390.P4450230036634451598

/-! ## A226390.P14013692954180492596

`A227389(n%2+2+n)/2`
-/

namespace A226390.P14013692954180492596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A227389 (n % 2 + 2 + n) : ℚ) / 2

end

end A226390.P14013692954180492596

/-! ## A226390.P335860959836190529

`A026741(A227389(4-gcd(2, n)+n))`
-/

namespace A226390.P335860959836190529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A227389 (4 - (Nat.gcd 2 n : ℤ) + (n : ℤ)).toNat).toNat

end

end A226390.P335860959836190529

/-! ## A226390.P14710431746506345705

`A051764(A051750(n+1))+A051742(n+1)`
-/

namespace A226390.P14710431746506345705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (A051750 (n + 1)).toNat + A051742 (n + 1)

end

end A226390.P14710431746506345705

/-!
# A226391: a(n) = Sum_{k=0..n} binomial(k*n, k).

The programs for A226391, there is no canonical definition to state claims against.
-/

/-! ## A226391.P3883357066764613459

`A358146(∑[4*n])`
-/

namespace A226391.P3883357066764613459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358146 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226391.P3883357066764613459

/-! ## A226391.P3490012589552659115

`record[A003982(n)*A358146(n)]`
-/

namespace A226391.P3490012589552659115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A358146 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226391.P3490012589552659115

/-! ## A226391.P15350698878909307992

`or(A003982(n), A358146(A046092(n)))`
-/

namespace A226391.P15350698878909307992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003982 n) (A358146 (A046092 n).toNat)

end

end A226391.P15350698878909307992

/-! ## A226391.P17368247875544000236

`A358146(A046092(n))+A000086(3*n+2)`
-/

namespace A226391.P17368247875544000236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358146 (A046092 n).toNat + A000086 (3 * n + 2)

end

end A226391.P17368247875544000236

/-! ## A226391.P7092435044631628169

`A358146(A007590(2*n+1))+A000086(2*(n+1))`
-/

namespace A226391.P7092435044631628169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358146 (A007590 (2 * n + 1)).toNat + A000086 (2 * (n + 1))

end

end A226391.P7092435044631628169

/-!
# A226393: Number of nondecreasing -2..2 vectors of length n whose dot product with some nonincreasing -2..2 vector equals n.

The programs for A226393, there is no canonical definition to state claims against.
-/

/-! ## A226393.P17924777923186322890

`A226398(∑[n+2])`
-/

namespace A226393.P17924777923186322890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226393.P17924777923186322890

/-! ## A226393.P15475571274981530650

`lcm(2, A226398(A000096(n+1)))`
-/

namespace A226393.P15475571274981530650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A226398 (A000096 (n + 1)).toNat)

end

end A226393.P15475571274981530650

/-! ## A226393.P17831963176861665476

`A226398(A000096(n+1))+A185044(n)`
-/

namespace A226393.P17831963176861665476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A000096 (n + 1)).toNat + A185044 n

end

end A226393.P17831963176861665476

/-! ## A226393.P6034231803369796792

`A226398(A000096(n+1))+A217152(n+1)`
-/

namespace A226393.P6034231803369796792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A000096 (n + 1)).toNat + A217152 (n + 1)

end

end A226393.P6034231803369796792

/-! ## A226393.P9913515933369372034

`A226398(A000096(n+1))%A069100(n+2)`
-/

namespace A226393.P9913515933369372034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226398 (A000096 (n + 1)).toNat) (A069100 (n + 2))

end

end A226393.P9913515933369372034

/-!
# A226394: Number of nondecreasing -3..3 vectors of length n whose dot product with some nonincreasing -3..3 vector equals n.

The programs for A226394, there is no canonical definition to state claims against.
-/

/-! ## A226394.P1626132478159426057

`A226398(∑[n+3]+1)`
-/

namespace A226394.P1626132478159426057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A226394.P1626132478159426057

/-! ## A226394.P10459078014753631191

`record[A226398(A347633(n+1))]`
-/

namespace A226394.P10459078014753631191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226394.P10459078014753631191

/-! ## A226394.P16646379374519303799

`record[A226398(abs(A255878(n+1)))]`
-/

namespace A226394.P16646379374519303799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 |A255878 (n + 1)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226394.P16646379374519303799

/-! ## A226394.P14219021329899729293

`record[A226398(Δ[A054974(n+2)])]`
-/

namespace A226394.P14219021329899729293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054974 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226394.P14219021329899729293

/-! ## A226394.P7632398083059197703

`record[A226398(gcd(n, A092921(n+1)))]`
-/

namespace A226394.P7632398083059197703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (Int.gcd (n : ℤ) (A092921 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226394.P7632398083059197703

/-!
# A226395: Number of nondecreasing -4..4 vectors of length n whose dot product with some nonincreasing -4..4 vector equals n.

The programs for A226395, there is no canonical definition to state claims against.
-/

/-! ## A226395.P7133003787605414327

`A226398(Δ[n²]+∑[n+2]+4)`
-/

namespace A226395.P7133003787605414327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℤ)).toNat

end

end A226395.P7133003787605414327

/-! ## A226395.P16299019400254211039

`record[A226398(∑[A299702(n+3)])]`
-/

namespace A226395.P16299019400254211039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299702 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226395.P16299019400254211039

/-! ## A226395.P16337933172919340367

`record[A226398(∑[A000926(n+3)])]`
-/

namespace A226395.P16337933172919340367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000926 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226395.P16337933172919340367

/-!
# A226396: Number of nondecreasing -5..5 vectors of length n whose dot product with some nonincreasing -5..5 vector equals n.

The programs for A226396, there is no canonical definition to state claims against.
-/

/-! ## A226396.P10119060914993498016

`A226398(∑[n+5]+6)`
-/

namespace A226396.P10119060914993498016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A226396.P10119060914993498016

/-!
# A226397: Number of nondecreasing -6..6 vectors of length n whose dot product with some nonincreasing -6..6 vector equals n.

The programs for A226397, there is no canonical definition to state claims against.
-/

/-! ## A226397.P10055600346421041052

`A226398(A052905(n+3))`
-/

namespace A226397.P10055600346421041052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A052905 (n + 3)).toNat

end

end A226397.P10055600346421041052

/-! ## A226397.P1162361628793669918

`A226398(A056119(n)+16)`
-/

namespace A226397.P1162361628793669918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (A056119 n + 16).toNat

end

end A226397.P1162361628793669918

/-! ## A226397.P13808181834849688998

`A226398(eq[3, A219347(n)])`
-/

namespace A226397.P13808181834849688998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226397.P13808181834849688998

/-! ## A226397.P12846271365919039180

`A226398(eq[3, A274661(n)])`
-/

namespace A226397.P12846271365919039180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226398 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226397.P12846271365919039180

/-!
# A226398: T(n,k)=Number of nondecreasing -k..k vectors of length n whose dot product with some nonincreasing -k..k vector equals n.

The programs for A226398, there is no canonical definition to state claims against.
-/

/-! ## A226398.P10772322863595504900

`A001212(A174545(n)*A193592(n))`
-/

namespace A226398.P10772322863595504900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001212 (A174545 n * A193592 n).toNat

end

end A226398.P10772322863595504900

/-! ## A226398.P9597029708026313431

`A327987(A005385(n+1)*A022167(n))`
-/

namespace A226398.P9597029708026313431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 (A005385 (n + 1) * A022167 n).toNat

end

end A226398.P9597029708026313431

/-! ## A226398.P14289704192211730711

`A226399(A193592(n)%A202463(n+1))`
-/

namespace A226398.P14289704192211730711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (Int.tmod (A193592 n) (A202463 (n + 1))).toNat

end

end A226398.P14289704192211730711

/-! ## A226398.P82271167780034508

`A226399(gcd(A193592(n), A202463(n+1)))`
-/

namespace A226398.P82271167780034508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226399 (Int.gcd (A193592 n) (A202463 (n + 1)))

end

end A226398.P82271167780034508

/-! ## A226398.P1096372110317653585

`A327987(lcm(A005385(n+1), A022167(n)))`
-/

namespace A226398.P1096372110317653585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327987 (Int.lcm (A005385 (n + 1)) (A022167 n))

end

end A226398.P1096372110317653585

/-!
# A226399: Number of nondecreasing -n..n vectors of length 2 whose dot product with some nonincreasing -n..n vector equals 2.

The programs for A226399, there is no canonical definition to state claims against.
-/

/-! ## A226399.P1827632036008486636

`lcm(2, 2-A226341(n+1))`
-/

namespace A226399.P1827632036008486636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (2 - A226341 (n + 1))

end

end A226399.P1827632036008486636

/-! ## A226399.P12083940068732450902

`∑[A126246(n+1)]*A040002(n)`
-/

namespace A226399.P12083940068732450902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A040002 n

end

end A226399.P12083940068732450902

/-! ## A226399.P3159323727778877865

`A226341(n+1)-A036453(n+1)`
-/

namespace A226399.P3159323727778877865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A036453 (n + 1)

end

end A226399.P3159323727778877865

/-! ## A226399.P12050514777637490030

`A226341(n+1)-(A057427(n)+1)`
-/

namespace A226399.P12050514777637490030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - (A057427 n + 1)

end

end A226399.P12050514777637490030

/-! ## A226399.P7875843790331014501

`A226341(n+1)+A000007(n)-2`
-/

namespace A226399.P7875843790331014501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) + (A000007 n - 2)

end

end A226399.P7875843790331014501

/-! ## A226399.P988156658408703914

`A226341(n+1)-A000032(C(2, n+2))`
-/

namespace A226399.P988156658408703914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A000032 (Nat.choose 2 (n + 2))

end

end A226399.P988156658408703914

/-! ## A226399.P17632275377652865474

`xor(A020639(a(n-1)), A226341(n+1))` with `a(0)=2`
-/

namespace A226399.P17632275377652865474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.xor (A020639 (a (n - 1)).toNat) (A226341 (n + 1))

end

end A226399.P17632275377652865474

/-! ## A226399.P10341886964901400907

`A226341(n+1)-(A008683(2*(n+1)²)+2)`
-/

namespace A226399.P10341886964901400907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - (A008683 (2 * (n + 1) ^ 2) + 2)

end

end A226399.P10341886964901400907

/-! ## A226399.P16390763963566607232

`A226341(n+1)-A020639(A000118(n))`
-/

namespace A226399.P16390763963566607232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A000118 n).toNat

end

end A226399.P16390763963566607232

/-! ## A226399.P3183459519662910249

`A226341(n+1)-A020639(A005893(n))`
-/

namespace A226399.P3183459519662910249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A005893 n).toNat

end

end A226399.P3183459519662910249

/-! ## A226399.P16954158385033257497

`A226341(n+1)-A020639(A007843(n))`
-/

namespace A226399.P16954158385033257497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A007843 n).toNat

end

end A226399.P16954158385033257497

/-! ## A226399.P7410102048017369552

`A226341(n+1)-A020639(A008458(n))`
-/

namespace A226399.P7410102048017369552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A008458 n).toNat

end

end A226399.P7410102048017369552

/-! ## A226399.P5788307362070226620

`A226341(n+1)-A020639(A008574(n))`
-/

namespace A226399.P5788307362070226620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A008574 n).toNat

end

end A226399.P5788307362070226620

/-! ## A226399.P9675543645396006596

`A226341(n+1)-A000005(A008578(n+1))`
-/

namespace A226399.P9675543645396006596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A000005 (A008578 (n + 1)).toNat

end

end A226399.P9675543645396006596

/-! ## A226399.P7660496391412133951

`A226341(n+1)-A061142(A006530(n+1))`
-/

namespace A226399.P7660496391412133951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A061142 (A006530 (n + 1)).toNat

end

end A226399.P7660496391412133951

/-! ## A226399.P12111388097756866406

`A226341(n+1)-A020639(A000010(n+2))`
-/

namespace A226399.P12111388097756866406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A000010 (n + 2)).toNat

end

end A226399.P12111388097756866406

/-! ## A226399.P1041884148052821755

`A226341(n+1)-A020639(Δ[A000040(n+1)])`
-/

namespace A226399.P1041884148052821755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (f1 (n + 1) - f1 n).toNat

end

end A226399.P1041884148052821755

/-! ## A226399.P6400880181389030481

`A226341(n+1)-A000005(record[A014963(n+1)])`
-/

namespace A226399.P6400880181389030481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226399.P6400880181389030481

/-! ## A226399.P7061850528894240394

`A226341(n+1)-A020639(A000040(n+1)-1)`
-/

namespace A226399.P7061850528894240394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226341 (n + 1) - A020639 (A000040 (n + 1) - 1).toNat

end

end A226399.P7061850528894240394

