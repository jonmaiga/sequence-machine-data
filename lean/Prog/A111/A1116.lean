import SequenceMachineLib
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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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
import Seq.Opaque.C025

/-!
# A111600: Lah numbers: a(n) = n!*binomial(n-1,9)/10!.

The programs for A111600, there is no canonical definition to state claims against.
-/

/-! ## A111600.P3484729927145053050

`∏[n+9]/9*C(n+10, 10)`
-/

namespace A111600.P3484729927145053050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 9

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 9 * (Nat.choose (n + 10) 10 : ℚ)

end

end A111600.P3484729927145053050

/-! ## A111600.P14930638010070864251

`(n+1)!*A134291(n)`
-/

namespace A111600.P14930638010070864251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A134291 n

end

end A111600.P14930638010070864251

/-! ## A111600.P6048873614039249542

`C(n+9, 9)*A051431(n)`
-/

namespace A111600.P6048873614039249542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 9) 9 : ℤ) * A051431 n

end

end A111600.P6048873614039249542

/-! ## A111600.P4384326870424544907

`C(n+10, 10)*A049398(n)`
-/

namespace A111600.P4384326870424544907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 10) 10 : ℤ) * A049398 n

end

end A111600.P4384326870424544907

/-! ## A111600.P16845093054927966839

`A271703(eq[10, A002262(n)])`
-/

namespace A111600.P16845093054927966839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111600.P16845093054927966839

/-! ## A111600.P18331121316510027819

`A105278(eq[11, A131818(n+1)])`
-/

namespace A111600.P18331121316510027819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111600.P18331121316510027819

/-! ## A111600.P2075768648595381818

`A271703(eq[11, A002260(n+1)])`
-/

namespace A111600.P2075768648595381818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111600.P2075768648595381818

/-! ## A111600.P6302300907518194941

`A000142(n)*A132813(A056000(n+6))`
-/

namespace A111600.P6302300907518194941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A132813 (A056000 (n + 6)).toNat

end

end A111600.P6302300907518194941

/-!
# A111601: Exponential (binomial) convolution of A001818 (with interspersed zeros) and A000142 (factorials).

The programs for A111601, there is no canonical definition to state claims against.
-/

/-! ## A111601.P4512900936451794714

`(n+1)*∏[or(1, n)]`
-/

namespace A111601.P4512900936451794714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P4512900936451794714

/-! ## A111601.P13275641865857736667

`(n+1)*∏[and(n, -2)+1]`
-/

namespace A111601.P13275641865857736667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P13275641865857736667

/-! ## A111601.P15969098759856245499

`(n+1)*∏[(n+1)%2+n]`
-/

namespace A111601.P15969098759856245499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P15969098759856245499

/-! ## A111601.P7200484707399864199

`(n+1)*∏[gcd(2, n)+n-1]`
-/

namespace A111601.P7200484707399864199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P7200484707399864199

/-! ## A111601.P4290482198077655792

`(n+1)*∏[n-and(1, n)+1]`
-/

namespace A111601.P4290482198077655792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 1 n : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P4290482198077655792

/-! ## A111601.P9436653434142360978

`(n+1)*∏[a(n-2)+2]` with `a(0)=1, a(1)=1`
-/

namespace A111601.P9436653434142360978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P9436653434142360978

/-! ## A111601.P905288576959847851

`(n+1)*∏[A109613(n)]`
-/

namespace A111601.P905288576959847851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P905288576959847851

/-! ## A111601.P7275656067862002866

`(n+1)*A000246(n+1)`
-/

namespace A111601.P7275656067862002866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000246 (n + 1)

end

end A111601.P7275656067862002866

/-! ## A111601.P2690495723714850570

`(n+1)*A060523(∑[n+1])`
-/

namespace A111601.P2690495723714850570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A060523 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111601.P2690495723714850570

/-! ## A111601.P11267490868586958194

`∏[A004525(2*n+1)]*(n+1)`
-/

namespace A111601.P11267490868586958194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * (n + 1 : ℤ)

end

end A111601.P11267490868586958194

/-!
# A111602: Third column (m=2) of unsigned triangle A111595.

The programs for A111602, there is no canonical definition to state claims against.
-/

/-! ## A111602.P13147771449581706385

`abs(A111595(A133263(n+2)))`
-/

namespace A111602.P13147771449581706385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111595 (A133263 (n + 2)).toNat|

end

end A111602.P13147771449581706385

/-! ## A111602.P13253367416971619860

`abs(A111595(A167614(n+1)-1))`
-/

namespace A111602.P13253367416971619860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A111595 (A167614 (n + 1) - 1).toNat|

end

end A111602.P13253367416971619860

/-! ## A111602.P2313692764588837283

`record[gcd(A048993(n), A111595(n+2))]`
-/

namespace A111602.P2313692764588837283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048993 n) (A111595 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111602.P2313692764588837283

/-! ## A111602.P11018579313552965263

`record[gcd(A111595(n+3), A132393(n+1))]`
-/

namespace A111602.P11018579313552965263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A111595 (n + 3)) (A132393 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111602.P11018579313552965263

/-! ## A111602.P14204300480875684662

`lcm(A000027(n+1), A111595(A133263(n+2)))`
-/

namespace A111602.P14204300480875684662
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A111595 (A133263 (n + 2)).toNat)

end

end A111602.P14204300480875684662

/-!
# A111603: Consider the array T(n, m) where the n-th row is the sequence of integer coefficients of A(x), where 1<=a(n)<=n, such that A(x)^(1/n) consists entirely of integer coefficients and where m is the (m+1)-th coefficient. This is the antidiagonal read from upper right to lower left.

The programs for A111603, there is no canonical definition to state claims against.
-/

/-! ## A111603.P8854955476183391453

`A109626(∑[char[∑[n]]]²-n)`
-/

namespace A111603.P8854955476183391453
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A111603.P8854955476183391453

/-! ## A111603.P6371880172995452175

`A111604(A056023(n+1))`
-/

namespace A111603.P6371880172995452175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111604 (A056023 (n + 1)).toNat

end

end A111603.P6371880172995452175

/-! ## A111603.P11344367079842829944

`A109626(A038722(n+1))%13`
-/

namespace A111603.P11344367079842829944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109626 (A038722 (n + 1)).toNat) 13

end

end A111603.P11344367079842829944

/-! ## A111603.P18319815314990049225

`gcd(A000038(n), A109626(A038722(n+1)))`
-/

namespace A111603.P18319815314990049225
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A109626 (A038722 (n + 1)).toNat)

end

end A111603.P18319815314990049225

/-! ## A111603.P13894676773860188199

`A020985(n)²*A109626(A061579(n)+1)`
-/

namespace A111603.P13894676773860188199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A109626 (A061579 n + 1).toNat

end

end A111603.P13894676773860188199

/-! ## A111603.P8824041642470799560

`A060576(3*n+4)*A109626(A038722(n+1))`
-/

namespace A111603.P8824041642470799560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (3 * n + 4) * A109626 (A038722 (n + 1)).toNat

end

end A111603.P8824041642470799560

/-! ## A111603.P8285713947074441238

`A111604(A092542(n+1)+A057944(n))`
-/

namespace A111603.P8285713947074441238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111604 (A092542 (n + 1) + A057944 n).toNat

end

end A111603.P8285713947074441238

/-!
# A111604: Consider the array T(n, m) where the n-th row is the sequence of integer coefficients of A(x), where 1<=a(n)<=n, such that A(x)^(1/n) consists entirely of integer coefficients and where m is the (m+1)-th coefficient. This is the antidiagonal read zig-zag.

The programs for A111604, there is no canonical definition to state claims against.
-/

/-! ## A111604.P5545589826866558834

`A109626(A056011(n+1))`
-/

namespace A111604.P5545589826866558834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A056011 (n + 1)).toNat

end

end A111604.P5545589826866558834

/-! ## A111604.P1525071505290298711

`A111603(A056023(n+1))`
-/

namespace A111604.P1525071505290298711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (A056023 (n + 1)).toNat

end

end A111604.P1525071505290298711

/-! ## A111604.P2573415992860417365

`A111603(A092542(n+1)+A057944(n))`
-/

namespace A111604.P2573415992860417365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111603 (A092542 (n + 1) + A057944 n).toNat

end

end A111604.P2573415992860417365

/-! ## A111604.P11708443540106062429

`gcd(A133819(n+1), A344090(A250120(n)))`
-/

namespace A111604.P11708443540106062429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133819 (n + 1)) (A344090 (A250120 n).toNat)

end

end A111604.P11708443540106062429

/-! ## A111604.P6693777458671225281

`A118914(A106760(n+1)-A376567(2*(n+2)))`
-/

namespace A111604.P6693777458671225281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118914 (A106760 (n + 1) - A376567 (2 * (n + 2))).toNat

end

end A111604.P6693777458671225281

/-!
# A111605: Determinant of the upper left n X n elements of the array T(n, m) in A109626.

The programs for A111605, there is no canonical definition to state claims against.
-/

/-! ## A111605.P12894624616298011015

`A136663(or(A136617(n+1), A136671(n+1)))`
-/

namespace A111605.P12894624616298011015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136663 (Int.lor (A136617 (n + 1)) (A136671 (n + 1))).toNat

end

end A111605.P12894624616298011015

/-! ## A111605.P4095038691359881134

`A136663(or(A136671(n+1), A143344(n+1)))`
-/

namespace A111605.P4095038691359881134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136663 (Int.lor (A136671 (n + 1)) (A143344 (n + 1))).toNat

end

end A111605.P4095038691359881134

/-!
# A111607: Fourth column of A109626.

The programs for A111607, the canonical program `A111607.P12131155386372481958` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111607 has offset 1).

The definition of A111607 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111607.P12131155386372481958

`(C(∑[n], 2)+n)%(n+1)+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111607

/-- `(C(∑[n], 2)+n)%(n+1)+1` -/
def P12131155386372481958.Spec : Prop :=
  ∀ n, (P12131155386372481958.a n : ℤ) = A111607 (n + 1)

theorem P12131155386372481958.correct : P12131155386372481958.Spec := by
  intro n
  simp only [A111607, Nat.add_sub_cancel]

end A111607

/-! ## A111607.P13349084480300691373

`1-C(n+1, 4)%(n+1)+n`
-/

namespace A111607.P13349084480300691373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.choose (n + 1) 4 % (n + 1) : ℕ) : ℤ) + (n : ℤ)

end

end A111607.P13349084480300691373

namespace A111607

/-- `1-C(n+1, 4)%(n+1)+n` -/
def P13349084480300691373.Spec : Prop :=
  ∀ n, P13349084480300691373.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P2733806464305615148

`-C(n+1, 4)%(n+1)+n+1`
-/

namespace A111607.P2733806464305615148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(Nat.choose (n + 1) 4 : ℤ)) (n + 1 : ℤ) + (n + 1 : ℤ)

end

end A111607.P2733806464305615148

namespace A111607

/-- `-C(n+1, 4)%(n+1)+n+1` -/
def P2733806464305615148.Spec : Prop :=
  ∀ n, P2733806464305615148.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P6207540562673577597

`n+1-∑[∑[∑[n]+n]]%(n+1)`
-/

namespace A111607.P6207540562673577597
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1) : ℕ) : ℤ)

end

end A111607.P6207540562673577597

namespace A111607

/-- `n+1-∑[∑[∑[n]+n]]%(n+1)` -/
def P6207540562673577597.Spec : Prop :=
  ∀ n, P6207540562673577597.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P17050257236127736639

`1-A175677(n+1)+n`
-/

namespace A111607.P17050257236127736639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A175677 (n + 1) + (n : ℤ)

end

end A111607.P17050257236127736639

namespace A111607

/-- `1-A175677(n+1)+n` -/
def P17050257236127736639.Spec : Prop :=
  ∀ n, P17050257236127736639.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P15479049873515691419

`n-A023443(A175677(n+1))`
-/

namespace A111607.P15479049873515691419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A175677 (n + 1)).toNat

end

end A111607.P15479049873515691419

namespace A111607

/-- `n-A023443(A175677(n+1))` -/
def P15479049873515691419.Spec : Prop :=
  ∀ n, P15479049873515691419.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P11537173367849637453

`1-A231642(A145018(n+1))+n`
-/

namespace A111607.P11537173367849637453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A231642 (A145018 (n + 1)).toNat + (n : ℤ)

end

end A111607.P11537173367849637453

namespace A111607

/-- `1-A231642(A145018(n+1))+n` -/
def P11537173367849637453.Spec : Prop :=
  ∀ n, P11537173367849637453.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P8477168890517452003

`1-A231642(A060577(n))+n`
-/

namespace A111607.P8477168890517452003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A231642 (A060577 n).toNat + (n : ℤ)

end

end A111607.P8477168890517452003

namespace A111607

/-- `1-A231642(A060577(n))+n` -/
def P8477168890517452003.Spec : Prop :=
  ∀ n, P8477168890517452003.a n = A111607 (n + 1)

end A111607

/-! ## A111607.P4652963139979469826

`A000096(A000096(n))%(n+1)+1`
-/

namespace A111607.P4652963139979469826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000096 (A000096 n).toNat) (n + 1 : ℤ) + 1

end

end A111607.P4652963139979469826

namespace A111607

/-- `A000096(A000096(n))%(n+1)+1` -/
def P4652963139979469826.Spec : Prop :=
  ∀ n, P4652963139979469826.a n = A111607 (n + 1)

end A111607

/-!
# A111608: Sixth column of A109626.

The programs for A111608, there is no canonical definition to state claims against.
-/

/-! ## A111608.P14522844642881214909

`A109626(A167487(n+5))`
-/

namespace A111608.P14522844642881214909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A167487 (n + 5)).toNat

end

end A111608.P14522844642881214909

/-! ## A111608.P3395431565935247511

`A109626(A000124(n+6)+6)`
-/

namespace A111608.P3395431565935247511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000124 (n + 6) + 6).toNat

end

end A111608.P3395431565935247511

/-! ## A111608.P10356021447816175757

`A109626(A000217(n+6)+7)`
-/

namespace A111608.P10356021447816175757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000217 (n + 6) + 7).toNat

end

end A111608.P10356021447816175757

/-! ## A111608.P6803096781598886467

`A099246(A274845(n)+A000225(n))`
-/

namespace A111608.P6803096781598886467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099246 (A274845 n + A000225 n).toNat

end

end A111608.P6803096781598886467

/-!
# A111609: Eighth column of A109626.

The programs for A111609, there is no canonical definition to state claims against.
-/

/-! ## A111609.P7137886199319177029

`A109626(A000217(n+9)-n)`
-/

namespace A111609.P7137886199319177029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A000217 (n + 9) - (n : ℤ)).toNat

end

end A111609.P7137886199319177029

/-!
# A111610: Ninth column of A109626.

The programs for A111610, there is no canonical definition to state claims against.
-/

/-! ## A111610.P2616251773464399983

`A109626(A034856(n+9)-(n-2))`
-/

namespace A111610.P2616251773464399983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (A034856 (n + 9) - ((n : ℤ) - 2)).toNat

end

end A111610.P2616251773464399983

/-! ## A111610.P3274052272286987137

`and(n+1, A097023(A237984(2*n+5)))`
-/

namespace A111610.P3274052272286987137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A097023 (A237984 (2 * n + 5)).toNat)

end

end A111610.P3274052272286987137

/-!
# A111614: First upper diagonal of array in A109626.

The programs for A111614, there is no canonical definition to state claims against.
-/

/-! ## A111614.P15307023857312085581

`A109626(2*(n+1)²+1)`
-/

namespace A111614.P15307023857312085581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (2 * (n + 1) ^ 2 + 1)

end

end A111614.P15307023857312085581

/-! ## A111614.P18275349810957504055

`A348611(A025610(n+1)+n+1)`
-/

namespace A111614.P18275349810957504055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348611 (A025610 (n + 1) + (n + 1 : ℤ)).toNat

end

end A111614.P18275349810957504055

/-!
# A111615: Third upper diagonal of the array in A109626.

The programs for A111615, there is no canonical definition to state claims against.
-/

/-! ## A111615.P3791595270684666442

`(n+1)/A111616(n+1)`
-/

namespace A111615.P3791595270684666442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A111616 (n + 1) : ℚ)

end

end A111615.P3791595270684666442

/-! ## A111615.P2914099233227834337

`(n+1)/(char[A111617(n+1)-1]+1)`
-/

namespace A111615.P2914099233227834337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111617 (n + 1) - 1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A111615.P2914099233227834337

/-! ## A111615.P16440956107563163235

`A010766(A111616(n+1)+∑[n])`
-/

namespace A111615.P16440956107563163235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A111616 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A111615.P16440956107563163235

/-! ## A111615.P13677415265463947318

`A051537(A111616(n+1)+∑[n])`
-/

namespace A111615.P13677415265463947318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A111616 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A111615.P13677415265463947318

/-! ## A111615.P9000317661855398134

`A234575(A111616(n+1)+∑[n])`
-/

namespace A111615.P9000317661855398134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A111616 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A111615.P9000317661855398134

/-! ## A111615.P16653249497606969679

`A025480(A111616(n+1)+Δ[n²])`
-/

namespace A111615.P16653249497606969679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A111616 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A111615.P16653249497606969679

/-! ## A111615.P16322862145221414420

`(n+1)*A111616(n+1)^A033999(n)`
-/

namespace A111615.P16322862145221414420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A111616 (n + 1) : ℚ) ^ (A033999 n : ℤ)

end

end A111615.P16322862145221414420

/-! ## A111615.P16480210276051941370

`A106466(A111616(n+1)+A004273(n))`
-/

namespace A111615.P16480210276051941370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A111616 (n + 1) + A004273 n).toNat

end

end A111615.P16480210276051941370

/-!
# A111616: n divided by the third upper diagonal of the array in A111615.

The programs for A111616, there is no canonical definition to state claims against.
-/

/-! ## A111616.P8497743410603341343

`char[A111617(n+1)-1]+1`
-/

namespace A111616.P8497743410603341343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111617 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A111616.P8497743410603341343

/-! ## A111616.P7287983629417210477

`(n+1)/A111615(n+1)`
-/

namespace A111616.P7287983629417210477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A111615 (n + 1) : ℚ)

end

end A111616.P7287983629417210477

/-! ## A111616.P1391309240694087481

`A054977(C(A111615(n+1), n))`
-/

namespace A111616.P1391309240694087481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (Nat.choose (A111615 (n + 1)).toNat n)

end

end A111616.P1391309240694087481

/-! ## A111616.P1053312160693099389

`A043529(xor(n, A111615(n+1)))`
-/

namespace A111616.P1053312160693099389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (Int.xor (n : ℤ) (A111615 (n + 1))).toNat

end

end A111616.P1053312160693099389

/-! ## A111616.P3417562429867067967

`A036453(abs(A111615(n+1)-n))`
-/

namespace A111616.P3417562429867067967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 |A111615 (n + 1) - (n : ℤ)|.toNat

end

end A111616.P3417562429867067967

/-! ## A111616.P2528285023273933805

`A036453((A111615(n+1)-n)²)`
-/

namespace A111616.P2528285023273933805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036453 ((A111615 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A111616.P2528285023273933805

/-! ## A111616.P1779322311524935625

`A043529((A111615(n+1)-n)²)`
-/

namespace A111616.P1779322311524935625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 ((A111615 (n + 1) - (n : ℤ)) ^ 2).toNat

end

end A111616.P1779322311524935625

/-! ## A111616.P4874891530338184166

`floor(root(A057048(n), A111615(n+1)))`
-/

namespace A111616.P4874891530338184166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A057048 n : ℝ) ^ (1 / (A111615 (n + 1) : ℝ))⌋

end

end A111616.P4874891530338184166

/-! ## A111616.P8412624473528142276

`round(root(A000041(n), A111615(n+1)))`
-/

namespace A111616.P8412624473528142276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000041 n : ℝ) ^ (1 / (A111615 (n + 1) : ℝ)))

end

end A111616.P8412624473528142276

/-! ## A111616.P15606246020364628871

`gcd(2, A000010((A111615(n+1)-n)²))`
-/

namespace A111616.P15606246020364628871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A000010 ((A111615 (n + 1) - (n : ℤ)) ^ 2).toNat)

end

end A111616.P15606246020364628871

/-!
# A111617: Where A111616(n)=2.

The programs for A111617, there is no canonical definition to state claims against.
-/

/-! ## A111617.P16592283031280297209

`lt[1, A111616(n+1)]+1`
-/

namespace A111617.P16592283031280297209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A111617.P16592283031280297209

/-! ## A111617.P13209676246849266222

`eq[2, A111616(C(2, n)+n)]`
-/

namespace A111617.P13209676246849266222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (Nat.choose 2 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111617.P13209676246849266222

/-! ## A111617.P17694305385229438721

`lt[1, A111616(n^floor(atan(n)))]`
-/

namespace A111617.P17694305385229438721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111617.P17694305385229438721

/-! ## A111617.P16163478095423935741

`lt[1, A111616(A028310(n))]`
-/

namespace A111617.P16163478095423935741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A111617.P16163478095423935741

/-! ## A111617.P11779752801448898416

`A014681(lt[1, A111616(n+1)])`
-/

namespace A111617.P11779752801448898416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A111617.P11779752801448898416

/-!
# A111618: First lower diagonal of A109626.

The programs for A111618, there is no canonical definition to state claims against.
-/

/-! ## A111618.P8878254584638758662

`(n+2)/A111621(n+2)`
-/

namespace A111618.P8878254584638758662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A111621 (n + 2) : ℚ)

end

end A111618.P8878254584638758662

/-! ## A111618.P956136172088543359

`(n+2)/(char[A004442(A111622(n+1))]+1)`
-/

namespace A111618.P956136172088543359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A111622 (n + 1)).toNat

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1 : ℕ) : ℚ)

end

end A111618.P956136172088543359

/-! ## A111618.P13942891734963298100

`A106466(A111621(n+2)+A005408(n))`
-/

namespace A111618.P13942891734963298100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A111621 (n + 2) + A005408 n).toNat

end

end A111618.P13942891734963298100

/-! ## A111618.P15034104552416550986

`A117910(n+2+A111621(n+2)+A005408(n))`
-/

namespace A111618.P15034104552416550986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 ((n + 2 : ℤ) + (A111621 (n + 2) + A005408 n)).toNat

end

end A111618.P15034104552416550986

/-! ## A111618.P17375124931579594171

`A026741((n+2)*A111620(A026741(n+2)))`
-/

namespace A111618.P17375124931579594171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 ((n + 2 : ℤ) * A111620 (A026741 (n + 2)).toNat).toNat

end

end A111618.P17375124931579594171

/-! ## A111618.P9436373101191441429

`A141524(∑[A112283(n+1)+2])`
-/

namespace A111618.P9436373101191441429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112283 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141524 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111618.P9436373101191441429

/-!
# A111619: Even-indexed bisection of the first lower diagonal (A111618).

The programs for A111619, there is no canonical definition to state claims against.
-/

/-! ## A111619.P4308974342280626559

`A111618(2*(n+1))`
-/

namespace A111619.P4308974342280626559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111618 (2 * (n + 1))

end

end A111619.P4308974342280626559

/-! ## A111619.P473268092179789744

`(n+1)*A111620(n+1)`
-/

namespace A111619.P473268092179789744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A111620 (n + 1)

end

end A111619.P473268092179789744

/-! ## A111619.P2871645369912147015

`A075362(A111620(n+1)+∑[n])`
-/

namespace A111619.P2871645369912147015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075362 (A111620 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A111619.P2871645369912147015

/-! ## A111619.P4378837243430452614

`A029578(A111620(n+1)+Δ[n²])`
-/

namespace A111619.P4378837243430452614
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A111620 (n + 1) + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A111619.P4378837243430452614

/-! ## A111619.P8092727162519354023

`A029578(A111620(n+1)+n+1+n)`
-/

namespace A111619.P8092727162519354023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A111620 (n + 1) + (n + 1 : ℤ) + (n : ℤ)).toNat

end

end A111619.P8092727162519354023

/-! ## A111619.P6886153269260000439

`(n+1)*(2-char[A004526(A111622(n+1))])`
-/

namespace A111619.P6886153269260000439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A111622 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A111619.P6886153269260000439

/-! ## A111619.P12334873219461858906

`A003602(A111620(n+1)+A016813(n))`
-/

namespace A111619.P12334873219461858906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A111620 (n + 1) + A016813 n).toNat

end

end A111619.P12334873219461858906

/-! ## A111619.P9559493281607070153

`A008619(lcm(A005408(n), A111620(n+1)))`
-/

namespace A111619.P9559493281607070153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lcm (A005408 n) (A111620 (n + 1)))

end

end A111619.P9559493281607070153

/-! ## A111619.P13430350576561990763

`(n+1)*(3-A111621(2*(n+1)))`
-/

namespace A111619.P13430350576561990763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (3 - A111621 (2 * (n + 1)))

end

end A111619.P13430350576561990763

/-!
# A111620: a(n) = A111619(n)/n.

The programs for A111620, there is no canonical definition to state claims against.
-/

/-! ## A111620.P3367748036634062340

`2-char[A004526(A111622(n+1))]`
-/

namespace A111620.P3367748036634062340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A111622 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111620.P3367748036634062340

/-! ## A111620.P10659732177801253089

`A111619(n+1)/(n+1)`
-/

namespace A111620.P10659732177801253089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111619 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A111620.P10659732177801253089

/-! ## A111620.P11039586020360379101

`A130130(A111619(n+1)-n)`
-/

namespace A111620.P11039586020360379101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 (A111619 (n + 1) - (n : ℤ)).toNat

end

end A111620.P11039586020360379101

/-! ## A111620.P2849882466644824098

`A000010(A111619(n+1)²%(n+2))`
-/

namespace A111620.P2849882466644824098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (A111619 (n + 1) ^ 2) (n + 2 : ℤ)).toNat

end

end A111620.P2849882466644824098

/-! ## A111620.P12545082004658088084

`A002730(C(n+1, A111619(n+1))+1)`
-/

namespace A111620.P12545082004658088084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002730 (Nat.choose (n + 1) (A111619 (n + 1)).toNat + 1)

end

end A111620.P12545082004658088084

/-! ## A111620.P828992493556321031

`A000032((A111619(n+1)-n)%(n+2))`
-/

namespace A111620.P828992493556321031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Int.tmod (A111619 (n + 1) - (n : ℤ)) (n + 2 : ℤ)).toNat

end

end A111620.P828992493556321031

/-! ## A111620.P4956875643289418769

`A000108((n+4)%(A111619(n+1)-n))`
-/

namespace A111620.P4956875643289418769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Int.tmod (n + 4 : ℤ) (A111619 (n + 1) - (n : ℤ))).toNat

end

end A111620.P4956875643289418769

/-! ## A111620.P12816650878284774609

`ceil(root(A111619(n+1)-n, A000069(n+1)))`
-/

namespace A111620.P12816650878284774609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111619 (n + 1) - (n : ℤ) : ℝ) ^ (1 / (A000069 (n + 1) : ℝ))⌉

end

end A111620.P12816650878284774609

/-! ## A111620.P17450646291915748556

`ceil(root(A111619(n+1)-n, A000096(n+2)))`
-/

namespace A111620.P17450646291915748556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A111619 (n + 1) - (n : ℤ) : ℝ) ^ (1 / (A000096 (n + 2) : ℝ))⌉

end

end A111620.P17450646291915748556

/-!
# A111621: n divided by the first lower diagonal of the array in A111618.

The programs for A111621, there is no canonical definition to state claims against.
-/

/-! ## A111621.P3405487535538614264

`char[A111622(n+1)-1]+1`
-/

namespace A111621.P3405487535538614264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111622 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A111621.P3405487535538614264

/-! ## A111621.P14351501367233433880

`gcd(n, 3-A111620(A008619(n)))`
-/

namespace A111621.P14351501367233433880
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (3 - A111620 (A008619 n).toNat)

end

end A111621.P14351501367233433880

/-! ## A111621.P7493332246663651178

`char[A004442(A111622(n+1))]+1`
-/

namespace A111621.P7493332246663651178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A111622 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A111621.P7493332246663651178

/-! ## A111621.P7431606983714482845

`char[A134824(n+2)+A111622(n+1)]+1`
-/

namespace A111621.P7431606983714482845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A111622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 1

end

end A111621.P7431606983714482845

/-! ## A111621.P10444676116975911564

`A000034(∑[A111620(A008619(n))])`
-/

namespace A111621.P10444676116975911564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111621.P10444676116975911564

/-! ## A111621.P2754353718100277517

`(3-A111620(A008619(n))-A000035(n))!`
-/

namespace A111621.P2754353718100277517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (3 - A111620 (A008619 n).toNat - A000035 n).toNat

end

end A111621.P2754353718100277517

/-! ## A111621.P13455590966031380971

`(3-A111620(A008619(n)))^Δ[A110654(n)]`
-/

namespace A111621.P13455590966031380971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 - A111620 (A008619 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A111621.P13455590966031380971

/-! ## A111621.P5812987595761876019

`A001355(a(n-1))-A111620(A008619(n))` with `a(0)=2`
-/

namespace A111621.P5812987595761876019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A001355 (a (n - 1)).toNat - A111620 (A008619 n).toNat

end

end A111621.P5812987595761876019

/-! ## A111621.P2393420737865513519

`A171018(a(n-1))-A111620(A008619(n))` with `a(0)=2`
-/

namespace A111621.P2393420737865513519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A171018 (a (n - 1)).toNat - A111620 (A008619 n).toNat

end

end A111621.P2393420737865513519

/-! ## A111621.P6673982029264095308

`A061579(a(n-1))/A111620(A008619(n))` with `a(0)=2`
-/

namespace A111621.P6673982029264095308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A061579 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / (A111620 (A008619 n).toNat : ℚ)

end

end A111621.P6673982029264095308

/-! ## A111621.P8896931967980902393

`gcd(n+2, A111620(A008619(n))+A005408(n))`
-/

namespace A111621.P8896931967980902393
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A111620 (A008619 n).toNat + A005408 n)

end

end A111621.P8896931967980902393

/-! ## A111621.P2819407008037449481

`A014963(a(n-1)+2)-A111620(A008619(n))` with `a(0)=2`
-/

namespace A111621.P2819407008037449481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014963 (a (n - 1) + 2).toNat - A111620 (A008619 n).toNat

end

end A111621.P2819407008037449481

/-!
# A111622: Where A111621(n)=2.

The programs for A111622, there is no canonical definition to state claims against.
-/

/-! ## A111622.P5153598208833071492

`2*eq[1, A111620(n+1)]+1`
-/

namespace A111622.P5153598208833071492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A111622.P5153598208833071492

/-! ## A111622.P9554922547781128557

`eq[gcd(2, n)², A111620(floor(n/2)+1)]`
-/

namespace A111622.P9554922547781128557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (⌊(n : ℚ) / 2⌋ + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111622.P9554922547781128557

/-! ## A111622.P10197414531666938541

`A005408(eq[1, A111620(n+1)])`
-/

namespace A111622.P10197414531666938541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A111622.P10197414531666938541

/-! ## A111622.P5869604611544538606

`A005408(lt[A111620(n+1), 2])`
-/

namespace A111622.P5869604611544538606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A111622.P5869604611544538606

/-! ## A111622.P15287532800507327668

`eq[n%2, A111620(A008619(n))]`
-/

namespace A111622.P15287532800507327668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111620 (A008619 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111622.P15287532800507327668

/-!
# A111624: Second lower diagonal of A109626.

The programs for A111624, there is no canonical definition to state claims against.
-/

/-! ## A111624.P8421632993269193431

`A109626(∑[4*(n+1)])`
-/

namespace A111624.P8421632993269193431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111624.P8421632993269193431

/-! ## A111624.P10170891754848194678

`A236378(n)+A145064(A187829(n+1))`
-/

namespace A111624.P10170891754848194678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236378 n + A145064 (A187829 (n + 1)).toNat

end

end A111624.P10170891754848194678

/-! ## A111624.P12022259902737793065

`A145064(A187829(n+1))*A337473(A008574(n))`
-/

namespace A111624.P12022259902737793065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A187829 (n + 1)).toNat * A337473 (A008574 n).toNat

end

end A111624.P12022259902737793065

/-! ## A111624.P8683062403122908996

`A145064(A187829(n+1))*A337473(A145064(n)²)`
-/

namespace A111624.P8683062403122908996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A187829 (n + 1)).toNat * A337473 (A145064 n ^ 2).toNat

end

end A111624.P8683062403122908996

/-! ## A111624.P4812175519934517821

`A145064(n+1)*A348041(A263383(n+1))`
-/

namespace A111624.P4812175519934517821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (n + 1) * A348041 (A263383 (n + 1)).toNat

end

end A111624.P4812175519934517821

/-!
# A111625: n divided by the second lower diagonal of A109626 & 3/2 -> 2.

The programs for A111625, there is no canonical definition to state claims against.
-/

/-! ## A111625.P10340267528476572885

`ceil((n+3)/A111624(n+3))`
-/

namespace A111625.P10340267528476572885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 3 : ℚ) / (A111624 (n + 3) : ℚ)⌉

end

end A111625.P10340267528476572885

/-! ## A111625.P12950920127509202511

`floor((n+2)/A111624(2*n-n+3))+1`
-/

namespace A111625.P12950920127509202511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / (A111624 ((2 * n : ℤ) - (n : ℤ) + 3).toNat : ℚ)⌋ + 1

end

end A111625.P12950920127509202511

/-! ## A111625.P7972387200528527471

`A242560(2*(n+3)/A111624(n+3))`
-/

namespace A111625.P7972387200528527471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242560 (SequenceMachineLib.roundAway ((2 * (n + 3) : ℚ) / (A111624 (n + 3) : ℚ))).toNat

end

end A111625.P7972387200528527471

/-! ## A111625.P1132686755534390438

`A006530(floor((n+2)/A111624(n+3))+1)`
-/

namespace A111625.P1132686755534390438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (⌊(n + 2 : ℚ) / (A111624 (n + 3) : ℚ)⌋ + 1).toNat

end

end A111625.P1132686755534390438

/-! ## A111625.P13268102290154827654

`A127484(floor((n+2)/A111624(n+3))+1)`
-/

namespace A111625.P13268102290154827654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127484 (⌊(n + 2 : ℚ) / (A111624 (n + 3) : ℚ)⌋ + 1).toNat

end

end A111625.P13268102290154827654

/-! ## A111625.P13821376434896156423

`A331728(floor((n+2)/A111624(n+3))+1)`
-/

namespace A111625.P13821376434896156423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331728 (⌊(n + 2 : ℚ) / (A111624 (n + 3) : ℚ)⌋ + 1).toNat

end

end A111625.P13821376434896156423

/-! ## A111625.P15396687535703508438

`A063949(floor((n+2)/A111624(n+3))+2)`
-/

namespace A111625.P15396687535703508438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063949 (⌊(n + 2 : ℚ) / (A111624 (n + 3) : ℚ)⌋ + 2).toNat

end

end A111625.P15396687535703508438

/-! ## A111625.P5037492017108962519

`round((A166719(n+1)+2)/A111624(n+3))`
-/

namespace A111625.P5037492017108962519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166719 (n + 1) + 2 : ℚ) / (A111624 (n + 3) : ℚ))

end

end A111625.P5037492017108962519

/-!
# A111626: T(2n, n)/n of A109626.

The programs for A111626, there is no canonical definition to state claims against.
-/

/-! ## A111626.P4828613723481887785

`A130658(A000034(n)*A006562(n+1))`
-/

namespace A111626.P4828613723481887785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A000034 n * A006562 (n + 1)).toNat

end

end A111626.P4828613723481887785

/-! ## A111626.P7392143488088729792

`A130658(lcm(A000034(n), A006562(n+1)))`
-/

namespace A111626.P7392143488088729792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (Int.lcm (A000034 n) (A006562 (n + 1)))

end

end A111626.P7392143488088729792

/-! ## A111626.P16935571556610115581

`A130658(A006562(n+1)*A130658(2*n))`
-/

namespace A111626.P16935571556610115581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130658 (A006562 (n + 1) * A130658 (2 * n)).toNat

end

end A111626.P16935571556610115581

/-! ## A111626.P9711161488094755058

`A010059(A287632(n))+1`
-/

namespace A111626.P9711161488094755058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A287632 n).toNat + 1

end

end A111626.P9711161488094755058

/-!
# A111627: T(2n, n+2)/n of A109626.

The programs for A111627, there is no canonical definition to state claims against.
-/

/-! ## A111627.P5489813726866733017

`A178474(gcd(A178523(2*(n+1)), A178532(2*(n+1))))`
-/

namespace A111627.P5489813726866733017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178474 (Int.gcd (A178523 (2 * (n + 1))) (A178532 (2 * (n + 1))))

end

end A111627.P5489813726866733017

/-! ## A111627.P13121670180528544637

`lcm(A000034(n), A006345(A187201(3*n+1)))`
-/

namespace A111627.P13121670180528544637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A006345 (A187201 (3 * n + 1)).toNat)

end

end A111627.P13121670180528544637

/-! ## A111627.P16393289671614480435

`A000034(A114800(n)%A349294(n+1))`
-/

namespace A111627.P16393289671614480435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (Int.tmod (A114800 n) (A349294 (n + 1))).toNat

end

end A111627.P16393289671614480435

/-! ## A111627.P4107442162499611808

`gcd(A020639(A327535(2*(n+2))), A327577(n+4))`
-/

namespace A111627.P4107442162499611808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A020639 (A327535 (2 * (n + 2))).toNat) (A327577 (n + 4))

end

end A111627.P4107442162499611808

/-! ## A111627.P15333841024081679434

`A056832(A200454(n+1))`
-/

namespace A111627.P15333841024081679434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056832 (A200454 (n + 1)).toNat

end

end A111627.P15333841024081679434

/-!
# A111629: a(n) = A109626(3n, n)/n.

The programs for A111629, there is no canonical definition to state claims against.
-/

/-! ## A111629.P4290627493292852591

`and(A075020(3*n+2), A214676(A075020(n+1)))`
-/

namespace A111629.P4290627493292852591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A075020 (3 * n + 2)) (A214676 (A075020 (n + 1)).toNat)

end

end A111629.P4290627493292852591

/-! ## A111629.P15951955048670813612

`A083953(n*A333656(3*n+4))`
-/

namespace A111629.P15951955048670813612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 ((n : ℤ) * A333656 (3 * n + 4)).toNat

end

end A111629.P15951955048670813612

/-! ## A111629.P2150029624784518321

`A083953(A106213(A083951(n+1))-(n+3))`
-/

namespace A111629.P2150029624784518321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (A106213 (A083951 (n + 1)).toNat - (n + 3 : ℤ)).toNat

end

end A111629.P2150029624784518321

/-! ## A111629.P6015116712934821697

`A321091(A028347(n+3)*A329329(n+2))`
-/

namespace A111629.P6015116712934821697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321091 (A028347 (n + 3) * A329329 (n + 2)).toNat

end

end A111629.P6015116712934821697

/-! ## A111629.P15221470153986274804

`A083953(eq[A161069(n+1), A161085(n+1)])`
-/

namespace A111629.P15221470153986274804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083953 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A111629.P15221470153986274804

/-!
# A111630: T(3n, 3n-2)/n of A109626.

The programs for A111630, there is no canonical definition to state claims against.
-/

/-! ## A111630.P7709200246239729802

`4-A111625(3*n+1)`
-/

namespace A111630.P7709200246239729802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A111625 (3 * n + 1)

end

end A111630.P7709200246239729802

/-! ## A111630.P5717916548156875434

`abs(4-A111625(A016777(n)))`
-/

namespace A111630.P5717916548156875434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - A111625 (A016777 n).toNat|

end

end A111630.P5717916548156875434

/-! ## A111630.P4165102036687596641

`(4-A111625(A016777(n)))*A007318(∑[n])`
-/

namespace A111630.P4165102036687596641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A111625 (A016777 n).toNat) * A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111630.P4165102036687596641

/-! ## A111630.P8149245808489303730

`(4-A111625(A016777(n)))*(A000041(n)%2)!`
-/

namespace A111630.P8149245808489303730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - A111625 (A016777 n).toNat) * (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ)

end

end A111630.P8149245808489303730

/-! ## A111630.P9491303306973180098

`(4-A111625(A016777(n)))/A007318(∑[n+1])`
-/

namespace A111630.P9491303306973180098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 - A111625 (A016777 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A111630.P9491303306973180098

/-!
# A111632: Increasingly larger values in A110412.

The programs for A111632, there is no canonical definition to state claims against.
-/

/-! ## A111632.P9165973936526239208

`record[A111631(n)]`
-/

namespace A111632.P9165973936526239208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111631 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111632.P9165973936526239208

/-!
# A111635: Smallest prime of the form x^(2^n) + y^(2^n) where x,y are distinct integers.

The programs for A111635, there is no canonical definition to state claims against.
-/

/-! ## A111635.P16003453903187645436

`p?[4^n+1]`
-/

namespace A111635.P16003453903187645436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A111635.P16003453903187645436

/-!
# A111636: Triangle read by rows: T(n,k) (0<=k<=n) is the number of labeled graphs having k blue nodes and n-k green ones and only nodes of different colors can be joined by an edge.

The programs for A111636, the canonical program `A111636.P15708262210770499790` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111636 has offset 0).

The definition of A111636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 646 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111636.P15708262210770499790

`A007318(n)*A117401(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111636

/-- `A007318(n)*A117401(n)` -/
def P15708262210770499790.Spec : Prop :=
  ∀ n, P15708262210770499790.a n = A111636 n

theorem P15708262210770499790.correct : P15708262210770499790.Spec := by
  intro n
  simp only [A111636]

end A111636

/-! ## A111636.P6972079323787653924

`sqrt(A008459(n))*A117401(n)`
-/

namespace A111636.P6972079323787653924
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A117401 n : ℝ)

end

end A111636.P6972079323787653924

namespace A111636

/-- `sqrt(A008459(n))*A117401(n)` -/
def P6972079323787653924.Spec : Prop :=
  ∀ n, P6972079323787653924.a n = (A111636 n : ℝ)

end A111636

/-! ## A111636.P15289257556957159339

`(A014473(n)+1)*A117401(n)`
-/

namespace A111636.P15289257556957159339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A117401 n

end

end A111636.P15289257556957159339

namespace A111636

/-- `(A014473(n)+1)*A117401(n)` -/
def P15289257556957159339.Spec : Prop :=
  ∀ n, P15289257556957159339.a n = A111636 n

end A111636

/-! ## A111636.P1356723217979819294

`2^A004247(n)*A007318(n)`
-/

namespace A111636.P1356723217979819294
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A004247 n : ℤ) * (A007318 n : ℚ)

end

end A111636.P1356723217979819294

namespace A111636

/-- `2^A004247(n)*A007318(n)` -/
def P1356723217979819294.Spec : Prop :=
  ∀ n, P1356723217979819294.a n = (A111636 n : ℚ)

end A111636

/-! ## A111636.P17975223698913855358

`A028326(n)/2*2^A004247(n)`
-/

namespace A111636.P17975223698913855358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (2 : ℚ) ^ (A004247 n : ℤ)

end

end A111636.P17975223698913855358

namespace A111636

/-- `A028326(n)/2*2^A004247(n)` -/
def P17975223698913855358.Spec : Prop :=
  ∀ n, P17975223698913855358.a n = (A111636 n : ℚ)

end A111636

/-! ## A111636.P14039860322206461866

`A000079(A004247(n))*A007318(n)`
-/

namespace A111636.P14039860322206461866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A004247 n).toNat * A007318 n

end

end A111636.P14039860322206461866

namespace A111636

/-- `A000079(A004247(n))*A007318(n)` -/
def P14039860322206461866.Spec : Prop :=
  ∀ n, P14039860322206461866.a n = A111636 n

end A111636

/-! ## A111636.P7242017267631471670

`A007318(n)*A011782(A077028(n))`
-/

namespace A111636.P7242017267631471670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A011782 (A077028 n).toNat

end

end A111636.P7242017267631471670

namespace A111636

/-- `A007318(n)*A011782(A077028(n))` -/
def P7242017267631471670.Spec : Prop :=
  ∀ n, P7242017267631471670.a n = A111636 n

end A111636

/-! ## A111636.P2169452954765221852

`A007318(n)*A000079(A077028(n)-1)`
-/

namespace A111636.P2169452954765221852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A000079 (A077028 n - 1).toNat

end

end A111636.P2169452954765221852

namespace A111636

/-- `A007318(n)*A000079(A077028(n)-1)` -/
def P2169452954765221852.Spec : Prop :=
  ∀ n, P2169452954765221852.a n = A111636 n

end A111636

/-! ## A111636.P3599762144261905590

`sqrt(A118185(n))*A007318(n)`
-/

namespace A111636.P3599762144261905590
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A118185 n : ℝ) * (A007318 n : ℝ)

end

end A111636.P3599762144261905590

namespace A111636

/-- `sqrt(A118185(n))*A007318(n)` -/
def P3599762144261905590.Spec : Prop :=
  ∀ n, P3599762144261905590.a n = (A111636 n : ℝ)

end A111636

/-! ## A111636.P11420885529121847351

`A007318(n)/A118190(n)*A158117(n)`
-/

namespace A111636.P11420885529121847351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 n : ℚ) / (A118190 n : ℚ) * (A158117 n : ℚ)

end

end A111636.P11420885529121847351

namespace A111636

/-- `A007318(n)/A118190(n)*A158117(n)` -/
def P11420885529121847351.Spec : Prop :=
  ∀ n, P11420885529121847351.a n = (A111636 n : ℚ)

end A111636

/-!
# A111637: Number of labeled graphs having n blue nodes and n green ones, where edges join only nodes of different colors.

The programs for A111637, the canonical program `A111637.P4077454426385861453` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111637 has offset 0).

The definition of A111637 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111637.P4077454426385861453

`A000984(n)*A002416(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111637

/-- `A000984(n)*A002416(n)` -/
def P4077454426385861453.Spec : Prop :=
  ∀ n, P4077454426385861453.a n = A111637 n

theorem P4077454426385861453.correct : P4077454426385861453.Spec := by
  intro n
  simp only [A111637]

end A111637

/-! ## A111637.P11348223112262966915

`2^n²*C(2*n, n)`
-/

namespace A111637.P11348223112262966915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n ^ 2 * Nat.choose (2 * n) n

end

end A111637.P11348223112262966915

namespace A111637

/-- `2^n²*C(2*n, n)` -/
def P11348223112262966915.Spec : Prop :=
  ∀ n, (P11348223112262966915.a n : ℤ) = A111637 n

end A111637

/-! ## A111637.P3276017706021272081

`(2*n-1)*a(n-1)/gcd(n, a(n-1))*4^n` with `a(0)=1`
-/

namespace A111637.P3276017706021272081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ)) * (4 ^ n : ℚ)

end

end A111637.P3276017706021272081

namespace A111637

/-- `(2*n-1)*a(n-1)/gcd(n, a(n-1))*4^n` -/
def P3276017706021272081.Spec : Prop :=
  ∀ n, P3276017706021272081.a n = (A111637 n : ℚ)

end A111637

/-! ## A111637.P3464250182919806260

`A111636(∑[4*n])`
-/

namespace A111637.P3464250182919806260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111637.P3464250182919806260

namespace A111637

/-- `A111636(∑[4*n])` -/
def P3464250182919806260.Spec : Prop :=
  ∀ n, P3464250182919806260.a n = A111637 n

end A111637

/-! ## A111637.P16293366039117559053

`2^n²*A056040(2*n)`
-/

namespace A111637.P16293366039117559053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n ^ 2 : ℤ) * A056040 (2 * n)

end

end A111637.P16293366039117559053

namespace A111637

/-- `2^n²*A056040(2*n)` -/
def P16293366039117559053.Spec : Prop :=
  ∀ n, P16293366039117559053.a n = A111637 n

end A111637

/-!
# A111638: Numbers having a unique partition into three positive triangular numbers.

The programs for A111638, there is no canonical definition to state claims against.
-/

/-! ## A111638.P13578138974346615219

`eq[1, A063993(n)]`
-/

namespace A111638.P13578138974346615219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063993 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111638.P13578138974346615219

/-! ## A111638.P15331116313955406147

`eq[1, A319797(A152950(n+1))]`
-/

namespace A111638.P15331116313955406147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A152950 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111638.P15331116313955406147

/-! ## A111638.P655874992524202647

`eq[1, A319797(A000124(n)+2)]`
-/

namespace A111638.P655874992524202647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000124 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111638.P655874992524202647

/-! ## A111638.P15379663787938104881

`eq[1, A319797(A000217(n)+3)]`
-/

namespace A111638.P15379663787938104881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319797 (A000217 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A111638.P15379663787938104881

/-! ## A111638.P11849250544116107916

`eq[A052343(n)+1, A002636(n)]`
-/

namespace A111638.P11849250544116107916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052343 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A111638.P11849250544116107916

/-!
# A111639: Expansion of (3+8*x-3*x^2-2*x^3)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111639, there is no canonical definition to state claims against.
-/

/-! ## A111639.P6388535003761280586

`A111641(n+1)+A111644(n)+A111640(n)`
-/

namespace A111639.P6388535003761280586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111641 (n + 1) + (A111644 n + A111640 n)

end

end A111639.P6388535003761280586

/-!
# A111640: Expansion of (-1+3*x+x^2-x^3)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111640, there is no canonical definition to state claims against.
-/

/-! ## A111640.P9676280956513724933

`A111641(n)+A111643(n)+A111642(n)`
-/

namespace A111640.P9676280956513724933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111641 n + (A111643 n + A111642 n)

end

end A111640.P9676280956513724933

/-! ## A111640.P5188976410691466003

`A111639(n)-(A111644(n)+A111641(n+1))`
-/

namespace A111640.P5188976410691466003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111639 n - (A111644 n + A111641 (n + 1))

end

end A111640.P5188976410691466003

/-!
# A111641: Expansion of -(1+x+3*x^2+x^3)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111641, there is no canonical definition to state claims against.
-/

/-! ## A111641.P17911955107759856851

`A111640(n)-(A111643(n)+A111642(n))`
-/

namespace A111641.P17911955107759856851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111640 n - (A111643 n + A111642 n)

end

end A111641.P17911955107759856851

/-! ## A111641.P713976419512057052

`A111645(n+1)+A077985(n)-A111643(n+1)`
-/

namespace A111641.P713976419512057052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111645 (n + 1) + (A077985 n - A111643 (n + 1))

end

end A111641.P713976419512057052

/-!
# A111642: Expansion of 2*(x-1)*(x+1)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111642, the canonical program `A111642.P14055578616394844448` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111642 has offset 0).

The definition of A111642 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111642.P14055578616394844448

`Δ[A077985(n)-A125905(n)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111642

/-- `Δ[A077985(n)-A125905(n)]` -/
def P14055578616394844448.Spec : Prop :=
  ∀ n, P14055578616394844448.a n = A111642 n

theorem P14055578616394844448.correct : P14055578616394844448.Spec := by
  intro n
  simp only [A111642]

end A111642

/-! ## A111642.P7937732998950884306

`A111640(n)-(A111643(n)+A111641(n))`
-/

namespace A111642.P7937732998950884306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111640 n - (A111643 n + A111641 n)

end

end A111642.P7937732998950884306

namespace A111642

/-- `A111640(n)-(A111643(n)+A111641(n))` -/
def P7937732998950884306.Spec : Prop :=
  ∀ n, P7937732998950884306.a n = A111642 n

end A111642

/-! ## A111642.P6787284239702107503

`A111641(n+1)-(A111645(n)+A111644(n+1))`
-/

namespace A111642.P6787284239702107503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111641 (n + 1) - (A111645 n + A111644 (n + 1))

end

end A111642.P6787284239702107503

namespace A111642

/-- `A111641(n+1)-(A111645(n)+A111644(n+1))` -/
def P6787284239702107503.Spec : Prop :=
  ∀ n, P6787284239702107503.a n = A111642 n

end A111642

/-!
# A111643: Expansion of 2*(x+1)^2/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111643, the canonical program `A111643.P2244943092013135216` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111643 has offset 0).

The definition of A111643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111643.P6386263332803863913

`-(A111644(n)+A077985(n))`
-/

namespace A111643.P6386263332803863913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A111644 n + A077985 n)

end

end A111643.P6386263332803863913

namespace A111643

/-- `-(A111644(n)+A077985(n))` -/
def P6386263332803863913.Spec : Prop :=
  ∀ n, P6386263332803863913.a n = A111643 n

end A111643

/-! ## A111643.P2244943092013135216

`A111642(n)-∑[2*A111642(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111643

/-- `A111642(n)-∑[2*A111642(n)]` -/
def P2244943092013135216.Spec : Prop :=
  ∀ n, P2244943092013135216.a n = A111643 n

theorem P2244943092013135216.correct : P2244943092013135216.Spec := by
  intro n
  simp only [A111643]

end A111643

/-! ## A111643.P11189195462014723303

`A111640(n)-(A111642(n)+A111641(n))`
-/

namespace A111643.P11189195462014723303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111640 n - (A111642 n + A111641 n)

end

end A111643.P11189195462014723303

namespace A111643

/-- `A111640(n)-(A111642(n)+A111641(n))` -/
def P11189195462014723303.Spec : Prop :=
  ∀ n, P11189195462014723303.a n = A111643 n

end A111643

/-! ## A111643.P16018839436814852458

`A000007(n+1)-(A111644(n)+A077985(n))`
-/

namespace A111643.P16018839436814852458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A111644 n + A077985 n)

end

end A111643.P16018839436814852458

namespace A111643

/-- `A000007(n+1)-(A111644(n)+A077985(n))` -/
def P16018839436814852458.Spec : Prop :=
  ∀ n, P16018839436814852458.a n = A111643 n

end A111643

/-! ## A111643.P3731866542003535371

`A000038(n+1)-(A111644(n)+A077985(n))`
-/

namespace A111643.P3731866542003535371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - (A111644 n + A077985 n)

end

end A111643.P3731866542003535371

namespace A111643

/-- `A000038(n+1)-(A111644(n)+A077985(n))` -/
def P3731866542003535371.Spec : Prop :=
  ∀ n, P3731866542003535371.a n = A111643 n

end A111643

/-! ## A111643.P18287395357116411102

`char[A023686(n+1)]-(A111644(n)+A077985(n))`
-/

namespace A111643.P18287395357116411102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023686 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A111644 n + A077985 n)

end

end A111643.P18287395357116411102

namespace A111643

/-- `char[A023686(n+1)]-(A111644(n)+A077985(n))` -/
def P18287395357116411102.Spec : Prop :=
  ∀ n, P18287395357116411102.a n = A111643 n

end A111643

/-! ## A111643.P9234766453396831981

`char[A023691(n+1)]-(A111644(n)+A077985(n))`
-/

namespace A111643.P9234766453396831981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023691 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A111644 n + A077985 n)

end

end A111643.P9234766453396831981

namespace A111643

/-- `char[A023691(n+1)]-(A111644(n)+A077985(n))` -/
def P9234766453396831981.Spec : Prop :=
  ∀ n, P9234766453396831981.a n = A111643 n

end A111643

/-! ## A111643.P14631633426806323158

`2*(A111644(n+1)-A111641(n+1))`
-/

namespace A111643.P14631633426806323158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A111644 (n + 1) - A111641 (n + 1))

end

end A111643.P14631633426806323158

namespace A111643

/-- `2*(A111644(n+1)-A111641(n+1))` -/
def P14631633426806323158.Spec : Prop :=
  ∀ n, P14631633426806323158.a n = A111643 n

end A111643

/-! ## A111643.P9743778703633936706

`A111640(n+1)-(A111645(n)+A111644(n+1))`
-/

namespace A111643.P9743778703633936706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111640 (n + 1) - (A111645 n + A111644 (n + 1))

end

end A111643.P9743778703633936706

namespace A111643

/-- `A111640(n+1)-(A111645(n)+A111644(n+1))` -/
def P9743778703633936706.Spec : Prop :=
  ∀ n, P9743778703633936706.a n = A111643 n

end A111643

/-!
# A111644: Expansion of -(1+x^2)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111644, the canonical program `A111644.P6153960727860651132` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111644 has offset 0).

The definition of A111644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 174 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111644.P6153960727860651132

`-(A111643(n)+A077985(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111644

/-- `-(A111643(n)+A077985(n))` -/
def P6153960727860651132.Spec : Prop :=
  ∀ n, P6153960727860651132.a n = A111644 n

theorem P6153960727860651132.correct : P6153960727860651132.Spec := by
  intro n
  simp only [A111644]

end A111644

/-! ## A111644.P16153397971334135475

`∑[A111642(n)]-A125905(n)`
-/

namespace A111644.P16153397971334135475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A125905 n

end

end A111644.P16153397971334135475

namespace A111644

/-- `∑[A111642(n)]-A125905(n)` -/
def P16153397971334135475.Spec : Prop :=
  ∀ n, P16153397971334135475.a n = A111644 n

end A111644

/-! ## A111644.P2240047508391017145

`∑[A123335(n+1)]-A111643(n)`
-/

namespace A111644.P2240047508391017145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123335 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A111643 n

end

end A111644.P2240047508391017145

namespace A111644

/-- `∑[A123335(n+1)]-A111643(n)` -/
def P2240047508391017145.Spec : Prop :=
  ∀ n, P2240047508391017145.a n = A111644 n

end A111644

/-! ## A111644.P17381070476076749934

`A000007(n+1)-(A111643(n)+A077985(n))`
-/

namespace A111644.P17381070476076749934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - (A111643 n + A077985 n)

end

end A111644.P17381070476076749934

namespace A111644

/-- `A000007(n+1)-(A111643(n)+A077985(n))` -/
def P17381070476076749934.Spec : Prop :=
  ∀ n, P17381070476076749934.a n = A111644 n

end A111644

/-! ## A111644.P1719086277599359803

`A111639(n)-(A111641(n+1)+A111640(n))`
-/

namespace A111644.P1719086277599359803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111639 n - (A111641 (n + 1) + A111640 n)

end

end A111644.P1719086277599359803

namespace A111644

/-- `A111639(n)-(A111641(n+1)+A111640(n))` -/
def P1719086277599359803.Spec : Prop :=
  ∀ n, P1719086277599359803.a n = A111644 n

end A111644

/-! ## A111644.P14611903342150014822

`A010057(A000040(n+1))-(A111643(n)+A077985(n))`
-/

namespace A111644.P14611903342150014822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A000040 (n + 1)).toNat - (A111643 n + A077985 n)

end

end A111644.P14611903342150014822

namespace A111644

/-- `A010057(A000040(n+1))-(A111643(n)+A077985(n))` -/
def P14611903342150014822.Spec : Prop :=
  ∀ n, P14611903342150014822.a n = A111644 n

end A111644

/-!
# A111645: Expansion of (x+1)*(1-3*x)/((x^2+4*x+1)*(x^2-2*x-1)).

The programs for A111645, there is no canonical definition to state claims against.
-/

/-! ## A111645.P7864337472835149159

`A111640(n+1)-(A111644(n+1)+A111643(n))`
-/

namespace A111645.P7864337472835149159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111640 (n + 1) - (A111644 (n + 1) + A111643 n)

end

end A111645.P7864337472835149159

/-! ## A111645.P4638519395481836702

`A111641(n+1)-(A111644(n+1)+A111642(n))`
-/

namespace A111645.P4638519395481836702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111641 (n + 1) - (A111644 (n + 1) + A111642 n)

end

end A111645.P4638519395481836702

/-!
# A111646: Subtracted divisor in admirable numbers.

The programs for A111646, there is no canonical definition to state claims against.
-/

/-! ## A111646.P15603065277296345424

`A111667(n+1)/2`
-/

namespace A111646.P15603065277296345424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111667 (n + 1) : ℚ) / 2

end

end A111646.P15603065277296345424

/-! ## A111646.P16010341270223657893

`A014682(A111667(n+1))`
-/

namespace A111646.P16010341270223657893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A111667 (n + 1)).toNat

end

end A111646.P16010341270223657893

/-! ## A111646.P18308146641042233815

`abs(A033879(A111592(n+1))/2)`
-/

namespace A111646.P18308146641042233815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A033879 (A111592 (n + 1)).toNat : ℚ) / 2|

end

end A111646.P18308146641042233815

/-! ## A111646.P12983426096310038952

`A000463(A111667(n+1)-1)`
-/

namespace A111646.P12983426096310038952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A111667 (n + 1) - 1).toNat

end

end A111646.P12983426096310038952

/-! ## A111646.P11704869142869490849

`A003602(A111667(n+1)-1)`
-/

namespace A111646.P11704869142869490849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A111667 (n + 1) - 1).toNat

end

end A111646.P11704869142869490849

/-! ## A111646.P5863348671133703710

`A008619(A111667(n+1)-1)`
-/

namespace A111646.P5863348671133703710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A111667 (n + 1) - 1).toNat

end

end A111646.P5863348671133703710

/-! ## A111646.P8410253499559955490

`A001281(A111667(n+1)+2)-1`
-/

namespace A111646.P8410253499559955490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A111667 (n + 1) + 2).toNat - 1

end

end A111646.P8410253499559955490

/-! ## A111646.P7842448126821817588

`A004525(A111667(n+1)+2)-1`
-/

namespace A111646.P7842448126821817588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A111667 (n + 1) + 2).toNat - 1

end

end A111646.P7842448126821817588

/-! ## A111646.P3063727689317890327

`A032742(A111667(n+1)+2)-1`
-/

namespace A111646.P3063727689317890327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A111667 (n + 1) + 2).toNat - 1

end

end A111646.P3063727689317890327

/-! ## A111646.P7066197524922268941

`A032742(A111667(n+1))%A001539(n)`
-/

namespace A111646.P7066197524922268941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (A111667 (n + 1)).toNat) (A001539 n)

end

end A111646.P7066197524922268941

/-! ## A111646.P12728762448822263295

`A033880(A111592(n+1))/2`
-/

namespace A111646.P12728762448822263295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033880 (A111592 (n + 1)).toNat : ℚ) / 2

end

end A111646.P12728762448822263295

/-! ## A111646.P10783624009420415624

`A032742(A111667(n+1)%A202421(n+1))`
-/

namespace A111646.P10783624009420415624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.tmod (A111667 (n + 1)) (A202421 (n + 1))).toNat

end

end A111646.P10783624009420415624

/-!
# A111647: a(n) = A001541(n)*A001653(n+1)*A002315(n).

The programs for A111647, the canonical program `A111647.P7618949794261441761` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111647 has offset 0).

The definition of A111647 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111647.P7618949794261441761

`A001541(n)*A001653(n+1)*A002315(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111647

/-- `A001541(n)*A001653(n+1)*A002315(n)` -/
def P7618949794261441761.Spec : Prop :=
  ∀ n, P7618949794261441761.a n = A111647 n

theorem P7618949794261441761.correct : P7618949794261441761.Spec := by
  intro n
  simp only [A111647]

end A111647

/-! ## A111647.P7969360862444022618

`record[(floor((sqrt(2)+1)^(2*n+1))+2)/4*A077985(n)]`
-/

namespace A111647.P7969360862444022618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(Real.sqrt (2 : ℝ) + 1) ^ (2 * n + 1)⌋ + 2 : ℚ) / 4 * (A077985 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111647.P7969360862444022618

namespace A111647

/-- `record[(floor((sqrt(2)+1)^(2*n+1))+2)/4*A077985(n)]` -/
def P7969360862444022618.Spec : Prop :=
  ∀ n, P7969360862444022618.a n = (A111647 n : ℚ)

end A111647

/-! ## A111647.P5737231267361576971

`Δ[A001110(n)]*A001541(n)`
-/

namespace A111647.P5737231267361576971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001541 n

end

end A111647.P5737231267361576971

namespace A111647

/-- `Δ[A001110(n)]*A001541(n)` -/
def P5737231267361576971.Spec : Prop :=
  ∀ n, P5737231267361576971.a n = A111647 n

end A111647

/-! ## A111647.P11145540759734541552

`A001541(n)*A046176(n+1)`
-/

namespace A111647.P11145540759734541552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001541 n * A046176 (n + 1)

end

end A111647.P11145540759734541552

namespace A111647

/-- `A001541(n)*A046176(n+1)` -/
def P11145540759734541552.Spec : Prop :=
  ∀ n, P11145540759734541552.a n = A111647 n

end A111647

/-! ## A111647.P5823779794776134109

`A002315(n)*A011900(2*n)`
-/

namespace A111647.P5823779794776134109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002315 n * A011900 (2 * n)

end

end A111647.P5823779794776134109

namespace A111647

/-- `A002315(n)*A011900(2*n)` -/
def P5823779794776134109.Spec : Prop :=
  ∀ n, P5823779794776134109.a n = A111647 n

end A111647

/-!
# A111648: a(n) = A001541(n)^2 + A001653(n+1)^2 + A002315(n)^2.

The programs for A111648, the canonical program `A111648.P260090981944269229` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111648 has offset 0).

The definition of A111648 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111648.P260090981944269229

`A038761(n)²+2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111648

/-- `A038761(n)²+2` -/
def P260090981944269229.Spec : Prop :=
  ∀ n, P260090981944269229.a n = A111648 n

theorem P260090981944269229.correct : P260090981944269229.Spec := by
  intro n
  simp only [A111648]

end A111648

/-! ## A111648.P1375541400902344689

`Δ[A038725(n)]²+2`
-/

namespace A111648.P1375541400902344689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A111648.P1375541400902344689

namespace A111648

/-- `Δ[A038725(n)]²+2` -/
def P1375541400902344689.Spec : Prop :=
  ∀ n, P1375541400902344689.a n = A111648 n

end A111648

/-! ## A111648.P6042632974709623871

`Δ[A108261(n)]²+2`
-/

namespace A111648.P6042632974709623871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108261 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 + 2

end

end A111648.P6042632974709623871

namespace A111648

/-- `Δ[A108261(n)]²+2` -/
def P6042632974709623871.Spec : Prop :=
  ∀ n, P6042632974709623871.a n = A111648 n

end A111648

/-! ## A111648.P3257019362685083719

`A048654(2*n)²+2`
-/

namespace A111648.P3257019362685083719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048654 (2 * n) ^ 2 + 2

end

end A111648.P3257019362685083719

namespace A111648

/-- `A048654(2*n)²+2` -/
def P3257019362685083719.Spec : Prop :=
  ∀ n, P3257019362685083719.a n = A111648 n

end A111648

/-! ## A111648.P2985912810653847643

`A077442(2*n)²+2`
-/

namespace A111648.P2985912810653847643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 (2 * n) ^ 2 + 2

end

end A111648.P2985912810653847643

namespace A111648

/-- `A077442(2*n)²+2` -/
def P2985912810653847643.Spec : Prop :=
  ∀ n, P2985912810653847643.a n = A111648 n

end A111648

/-! ## A111648.P13741720345890846557

`A075870(2*n+1)+A008844(n)`
-/

namespace A111648.P13741720345890846557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (2 * n + 1) + A008844 n

end

end A111648.P13741720345890846557

namespace A111648

/-- `A075870(2*n+1)+A008844(n)` -/
def P13741720345890846557.Spec : Prop :=
  ∀ n, P13741720345890846557.a n = A111648 n

end A111648

/-! ## A111648.P6989432816614973045

`A075870(2*n+1)+A000129(2*n+1)²`
-/

namespace A111648.P6989432816614973045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075870 (2 * n + 1) + A000129 (2 * n + 1) ^ 2

end

end A111648.P6989432816614973045

namespace A111648

/-- `A075870(2*n+1)+A000129(2*n+1)²` -/
def P6989432816614973045.Spec : Prop :=
  ∀ n, P6989432816614973045.a n = A111648 n

end A111648

/-!
# A111649: a(n) = A001541(n)*A001653(n+1) + A001541(n)*A002315(n) + A001653(n+1)*A002315(n).

The programs for A111649, the canonical program `A111649.P4548152678062560372` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111649 has offset 0).

The definition of A111649 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111649.P4548152678062560372

`2*A046176(n+1)+1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111649

/-- `2*A046176(n+1)+1` -/
def P4548152678062560372.Spec : Prop :=
  ∀ n, P4548152678062560372.a n = A111649 n

theorem P4548152678062560372.correct : P4548152678062560372.Spec := by
  intro n
  simp only [A111649]

end A111649

/-! ## A111649.P4213281639400566201

`A182189(Δ[n²])`
-/

namespace A111649.P4213281639400566201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182189 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A111649.P4213281639400566201

namespace A111649

/-- `A182189(Δ[n²])` -/
def P4213281639400566201.Spec : Prop :=
  ∀ n, P4213281639400566201.a n = A111649 n

end A111649

/-! ## A111649.P4527101596171489367

`A105058(2*n)+2`
-/

namespace A111649.P4527101596171489367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105058 (2 * n) + 2

end

end A111649.P4527101596171489367

namespace A111649

/-- `A105058(2*n)+2` -/
def P4527101596171489367.Spec : Prop :=
  ∀ n, P4527101596171489367.a n = A111649 n

end A111649

/-! ## A111649.P4944409033149246735

`A111954(4*n+2)`
-/

namespace A111649.P4944409033149246735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111954 (4 * n + 2)

end

end A111649.P4944409033149246735

namespace A111649

/-- `A111954(4*n+2)` -/
def P4944409033149246735.Spec : Prop :=
  ∀ n, P4944409033149246735.a n = A111649 n

end A111649

/-! ## A111649.P10804942961235497530

`A174191(4*n+2)`
-/

namespace A111649.P10804942961235497530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (4 * n + 2)

end

end A111649.P10804942961235497530

namespace A111649

/-- `A174191(4*n+2)` -/
def P10804942961235497530.Spec : Prop :=
  ∀ n, P10804942961235497530.a n = A111649 n

end A111649

/-! ## A111649.P5600307293920615537

`A001542(2*n+1)+1`
-/

namespace A111649.P5600307293920615537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001542 (2 * n + 1) + 1

end

end A111649.P5600307293920615537

namespace A111649

/-- `A001542(2*n+1)+1` -/
def P5600307293920615537.Spec : Prop :=
  ∀ n, P5600307293920615537.a n = A111649 n

end A111649

/-! ## A111649.P11594771827906354089

`2-A182188(2*n+1)`
-/

namespace A111649.P11594771827906354089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A182188 (2 * n + 1)

end

end A111649.P11594771827906354089

namespace A111649

/-- `2-A182188(2*n+1)` -/
def P11594771827906354089.Spec : Prop :=
  ∀ n, P11594771827906354089.a n = A111649 n

end A111649

/-! ## A111649.P5898880625382428765

`2*A251924(n+1)+3`
-/

namespace A111649.P5898880625382428765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A251924 (n + 1) + 3

end

end A111649.P5898880625382428765

namespace A111649

/-- `2*A251924(n+1)+3` -/
def P5898880625382428765.Spec : Prop :=
  ∀ n, P5898880625382428765.a n = A111649 n

end A111649

/-! ## A111649.P3048027867201390214

`4*A253826(n+1)-1`
-/

namespace A111649.P3048027867201390214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A253826 (n + 1) - 1

end

end A111649.P3048027867201390214

namespace A111649

/-- `4*A253826(n+1)-1` -/
def P3048027867201390214.Spec : Prop :=
  ∀ n, P3048027867201390214.a n = A111649 n

end A111649

/-! ## A111649.P15362058132945201557

`A052937(3*n+n+1)`
-/

namespace A111649.P15362058132945201557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (3 * n + (n + 1))

end

end A111649.P15362058132945201557

namespace A111649

/-- `A052937(3*n+n+1)` -/
def P15362058132945201557.Spec : Prop :=
  ∀ n, P15362058132945201557.a n = A111649 n

end A111649

/-!
# A111650: 2n appears n times (n>0).

The programs for A111650, the canonical program `A111650.P12812755283030262400` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111650 has offset 1).

The definition of A111650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111650.P12812755283030262400

`2*A002024(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111650

/-- `2*A002024(n+1)` -/
def P12812755283030262400.Spec : Prop :=
  ∀ n, P12812755283030262400.a n = A111650 (n + 1)

theorem P12812755283030262400.correct : P12812755283030262400.Spec := by
  intro n
  simp only [A111650, Nat.add_sub_cancel]

end A111650

/-! ## A111650.P1209660103737650250

`∑[2*char[∑[n]]]`
-/

namespace A111650.P1209660103737650250
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111650.P1209660103737650250

namespace A111650

/-- `∑[2*char[∑[n]]]` -/
def P1209660103737650250.Spec : Prop :=
  ∀ n, (P1209660103737650250.a n : ℤ) = A111650 (n + 1)

end A111650

/-! ## A111650.P7269951041650476342

`2*round(sqrt(comp[lcm(2, n)]))`
-/

namespace A111650.P7269951041650476342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A111650.P7269951041650476342

namespace A111650

/-- `2*round(sqrt(comp[lcm(2, n)]))` -/
def P7269951041650476342.Spec : Prop :=
  ∀ n, P7269951041650476342.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P7971799841686028279

`2*round(record[sqrt(xor(1, n))])`
-/

namespace A111650.P7971799841686028279
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111650.P7971799841686028279

namespace A111650

/-- `2*round(record[sqrt(xor(1, n))])` -/
def P7971799841686028279.Spec : Prop :=
  ∀ n, P7971799841686028279.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P9592100586154945180

`2*round(record[sqrt(or(2, n))])`
-/

namespace A111650.P9592100586154945180
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111650.P9592100586154945180

namespace A111650

/-- `2*round(record[sqrt(or(2, n))])` -/
def P9592100586154945180.Spec : Prop :=
  ∀ n, P9592100586154945180.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P561499733990411230

`2*round(sqrt(comp[and(n, -2)]))`
-/

namespace A111650.P561499733990411230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A111650.P561499733990411230

namespace A111650

/-- `2*round(sqrt(comp[and(n, -2)]))` -/
def P561499733990411230.Spec : Prop :=
  ∀ n, P561499733990411230.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P707133903617938984

`2*round(sqrt(or(1, 2*n)))`
-/

namespace A111650.P707133903617938984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (2 * n) : ℝ))

end

end A111650.P707133903617938984

namespace A111650

/-- `2*round(sqrt(or(1, 2*n)))` -/
def P707133903617938984.Spec : Prop :=
  ∀ n, P707133903617938984.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P10555350763846179069

`2*round(sqrt(xor(1, 2*n)))`
-/

namespace A111650.P10555350763846179069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (2 * n) : ℝ))

end

end A111650.P10555350763846179069

namespace A111650

/-- `2*round(sqrt(xor(1, 2*n)))` -/
def P10555350763846179069.Spec : Prop :=
  ∀ n, P10555350763846179069.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P6942910026536936437

`2*(comp[C(n, 2)]-(n+1))`
-/

namespace A111650.P6942910026536936437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A111650.P6942910026536936437

namespace A111650

/-- `2*(comp[C(n, 2)]-(n+1))` -/
def P6942910026536936437.Spec : Prop :=
  ∀ n, P6942910026536936437.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P2406108330300358255

`2*(comp[C(n, 2)-1]-n)`
-/

namespace A111650.P2406108330300358255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A111650.P2406108330300358255

namespace A111650

/-- `2*(comp[C(n, 2)-1]-n)` -/
def P2406108330300358255.Spec : Prop :=
  ∀ n, P2406108330300358255.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P10799715683675730170

`a(n-round(sqrt(2*n)))+2` with `a(0)=2`
-/

namespace A111650.P10799715683675730170
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat + 2

end

end A111650.P10799715683675730170

namespace A111650

/-- `a(n-round(sqrt(2*n)))+2` -/
def P10799715683675730170.Spec : Prop :=
  ∀ n, (P10799715683675730170.a n : ℤ) = A111650 (n + 1)

end A111650

/-! ## A111650.P8904862056957827999

`2*∑[Δ[round(sqrt(2*n))]%5]`
-/

namespace A111650.P8904862056957827999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111650.P8904862056957827999

namespace A111650

/-- `2*∑[Δ[round(sqrt(2*n))]%5]` -/
def P8904862056957827999.Spec : Prop :=
  ∀ n, P8904862056957827999.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P9821396441260974483

`2*round(sqrt(2*n+1))%(n+2)`
-/

namespace A111650.P9821396441260974483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) (n + 2 : ℤ)

end

end A111650.P9821396441260974483

namespace A111650

/-- `2*round(sqrt(2*n+1))%(n+2)` -/
def P9821396441260974483.Spec : Prop :=
  ∀ n, P9821396441260974483.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P9462526401446557455

`2*round(sqrt(∑[4-a(n-4)]))` with `a(0)=1, a(1)=3, a(2)=2, a(3)=1`
-/

namespace A111650.P9462526401446557455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 2, 1] fun n f1 =>
  4 - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A111650.P9462526401446557455

namespace A111650

/-- `2*round(sqrt(∑[4-a(n-4)]))` -/
def P9462526401446557455.Spec : Prop :=
  ∀ n, P9462526401446557455.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P11059132906649425212

`A131507(n)+1`
-/

namespace A111650.P11059132906649425212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131507 n + 1

end

end A111650.P11059132906649425212

namespace A111650

/-- `A131507(n)+1` -/
def P11059132906649425212.Spec : Prop :=
  ∀ n, P11059132906649425212.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P14648396108229091715

`A279891(n)+2`
-/

namespace A111650.P14648396108229091715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 n + 2

end

end A111650.P14648396108229091715

namespace A111650

/-- `A279891(n)+2` -/
def P14648396108229091715.Spec : Prop :=
  ∀ n, P14648396108229091715.a n = A111650 (n + 1)

end A111650

/-! ## A111650.P4137235737882247512

`log2(A140513(n)²)`
-/

namespace A111650.P4137235737882247512
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A140513 n ^ 2 : ℝ)

end

end A111650.P4137235737882247512

namespace A111650

/-- `log2(A140513(n)²)` -/
def P4137235737882247512.Spec : Prop :=
  ∀ n, P4137235737882247512.a n = (A111650 (n + 1) : ℝ)

end A111650

/-! ## A111650.P837861799471475598

`2*∑[A010054(n)]`
-/

namespace A111650.P837861799471475598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111650.P837861799471475598

namespace A111650

/-- `2*∑[A010054(n)]` -/
def P837861799471475598.Spec : Prop :=
  ∀ n, P837861799471475598.a n = A111650 (n + 1)

end A111650

/-!
# A111651: n appears 3n times.

The programs for A111651, the canonical program `A111651.P8177668560331271572` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111651 has offset 1).

The definition of A111651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111651.P16898408821238430872

`∑[char[∑[3*n]]]`
-/

namespace A111651.P16898408821238430872
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111651.P16898408821238430872

namespace A111651

/-- `∑[char[∑[3*n]]]` -/
def P16898408821238430872.Spec : Prop :=
  ∀ n, (P16898408821238430872.a n : ℤ) = A111651 (n + 1)

end A111651

/-! ## A111651.P2057116072213954161

`round(sqrt(∑[gcd(3, n)-1]))`
-/

namespace A111651.P2057116072213954161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 3 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A111651.P2057116072213954161

namespace A111651

/-- `round(sqrt(∑[gcd(3, n)-1]))` -/
def P2057116072213954161.Spec : Prop :=
  ∀ n, P2057116072213954161.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P11817478694916929255

`round(sqrt(comp[lcm(2, n)]/3))`
-/

namespace A111651.P11817478694916929255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) / 3 : ℝ))

end

end A111651.P11817478694916929255

namespace A111651

/-- `round(sqrt(comp[lcm(2, n)]/3))` -/
def P11817478694916929255.Spec : Prop :=
  ∀ n, P11817478694916929255.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P17307715743014411486

`round(sqrt(record[xor(1, n)/3]))`
-/

namespace A111651.P17307715743014411486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n : ℚ) / 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))

end

end A111651.P17307715743014411486

namespace A111651

/-- `round(sqrt(record[xor(1, n)/3]))` -/
def P17307715743014411486.Spec : Prop :=
  ∀ n, P17307715743014411486.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P5766985128491742035

`round(record[sqrt(or(2, n)/3)])`
-/

namespace A111651.P5766985128491742035
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((Nat.lor 2 n : ℚ) / 3 : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111651.P5766985128491742035

namespace A111651

/-- `round(record[sqrt(or(2, n)/3)])` -/
def P5766985128491742035.Spec : Prop :=
  ∀ n, P5766985128491742035.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P10920693925211491750

`round(sqrt(or(1, 2*n)/3))`
-/

namespace A111651.P10920693925211491750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.lor 1 (2 * n) : ℚ) / 3 : ℝ))

end

end A111651.P10920693925211491750

namespace A111651

/-- `round(sqrt(or(1, 2*n)/3))` -/
def P10920693925211491750.Spec : Prop :=
  ∀ n, P10920693925211491750.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P11967513354632443621

`round(sqrt(xor(1, 2*n)/3))`
-/

namespace A111651.P11967513354632443621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((Nat.xor 1 (2 * n) : ℚ) / 3 : ℝ))

end

end A111651.P11967513354632443621

namespace A111651

/-- `round(sqrt(xor(1, 2*n)/3))` -/
def P11967513354632443621.Spec : Prop :=
  ∀ n, P11967513354632443621.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P16328169090460708121

`round(sqrt(∑[(n+1)²%3]))`
-/

namespace A111651.P16328169090460708121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A111651.P16328169090460708121

namespace A111651

/-- `round(sqrt(∑[(n+1)²%3]))` -/
def P16328169090460708121.Spec : Prop :=
  ∀ n, P16328169090460708121.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P1612634706932699112

`round(sqrt(∑[(1-n%3)²]))`
-/

namespace A111651.P1612634706932699112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((n % 3 : ℕ) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A111651.P1612634706932699112

namespace A111651

/-- `round(sqrt(∑[(1-n%3)²]))` -/
def P1612634706932699112.Spec : Prop :=
  ∀ n, P1612634706932699112.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P14019269682102421638

`round(sqrt((comp[or(1, n)]+1)/3))`
-/

namespace A111651.P14019269682102421638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℚ) / 3 : ℝ))

end

end A111651.P14019269682102421638

namespace A111651

/-- `round(sqrt((comp[or(1, n)]+1)/3))` -/
def P14019269682102421638.Spec : Prop :=
  ∀ n, P14019269682102421638.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P7413784073796173697

`round(sqrt(comp[n-and(3, n)]/2))`
-/

namespace A111651.P7413784073796173697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 3 n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℚ) / 2 : ℝ))

end

end A111651.P7413784073796173697

namespace A111651

/-- `round(sqrt(comp[n-and(3, n)]/2))` -/
def P7413784073796173697.Spec : Prop :=
  ∀ n, P7413784073796173697.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P5853345758635466520

`∑[char[∑[a(n-1)+3]]]+1` with `a(0)=3`
-/

namespace A111651.P5853345758635466520
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A111651.P5853345758635466520

namespace A111651

/-- `∑[char[∑[a(n-1)+3]]]+1` -/
def P5853345758635466520.Spec : Prop :=
  ∀ n, (P5853345758635466520.a n : ℤ) = A111651 (n + 1)

end A111651

/-! ## A111651.P14338662133470322894

`comp[3*C(n, 2)+n-1]-n`
-/

namespace A111651.P14338662133470322894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose n 2 : ℤ) + ((n : ℤ) - 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A111651.P14338662133470322894

namespace A111651

/-- `comp[3*C(n, 2)+n-1]-n` -/
def P14338662133470322894.Spec : Prop :=
  ∀ n, P14338662133470322894.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P13896674621641909908

`round(sqrt(A133310(n)))`
-/

namespace A111651.P13896674621641909908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A133310 n : ℝ))

end

end A111651.P13896674621641909908

namespace A111651

/-- `round(sqrt(A133310(n)))` -/
def P13896674621641909908.Spec : Prop :=
  ∀ n, P13896674621641909908.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P8177668560331271572

`A183295(n+1)-n`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A111651

/-- `A183295(n+1)-n` -/
def P8177668560331271572.Spec : Prop :=
  ∀ n, P8177668560331271572.a n = A111651 (n + 1)

theorem P8177668560331271572.correct : P8177668560331271572.Spec := by
  intro n
  simp only [A111651, Nat.add_sub_cancel]

end A111651

/-! ## A111651.P14805346250962576148

`round(sqrt(A004396(n+1)))`
-/

namespace A111651.P14805346250962576148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A004396 (n + 1) : ℝ))

end

end A111651.P14805346250962576148

namespace A111651

/-- `round(sqrt(A004396(n+1)))` -/
def P14805346250962576148.Spec : Prop :=
  ∀ n, P14805346250962576148.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P5726538975160686206

`round(sqrt(A130823(n+1)))`
-/

namespace A111651.P5726538975160686206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A130823 (n + 1) : ℝ))

end

end A111651.P5726538975160686206

namespace A111651

/-- `round(sqrt(A130823(n+1)))` -/
def P5726538975160686206.Spec : Prop :=
  ∀ n, P5726538975160686206.a n = A111651 (n + 1)

end A111651

/-! ## A111651.P9654615807134697139

`round(sqrt(A302404(n+1)))`
-/

namespace A111651.P9654615807134697139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A302404 (n + 1) : ℝ))

end

end A111651.P9654615807134697139

namespace A111651

/-- `round(sqrt(A302404(n+1)))` -/
def P9654615807134697139.Spec : Prop :=
  ∀ n, P9654615807134697139.a n = A111651 (n + 1)

end A111651

/-!
# A111652: 3n appears n times.

The programs for A111652, the canonical program `A111652.P14375499418196975320` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111652 has offset 1).

The definition of A111652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111652.P14375499418196975320

`3*A002024(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111652

/-- `3*A002024(n+1)` -/
def P14375499418196975320.Spec : Prop :=
  ∀ n, P14375499418196975320.a n = A111652 (n + 1)

theorem P14375499418196975320.correct : P14375499418196975320.Spec := by
  intro n
  simp only [A111652, Nat.add_sub_cancel]

end A111652

/-! ## A111652.P10286166004230113185

`A111650(n+1)*3/2`
-/

namespace A111652.P10286166004230113185
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111650 (n + 1) : ℚ) * ((3 : ℚ) / 2)

end

end A111652.P10286166004230113185

namespace A111652

/-- `A111650(n+1)*3/2` -/
def P10286166004230113185.Spec : Prop :=
  ∀ n, P10286166004230113185.a n = (A111652 (n + 1) : ℚ)

end A111652

/-! ## A111652.P167054502475686184

`∑[3*char[∑[n]]]`
-/

namespace A111652.P167054502475686184
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111652.P167054502475686184

namespace A111652

/-- `∑[3*char[∑[n]]]` -/
def P167054502475686184.Spec : Prop :=
  ∀ n, (P167054502475686184.a n : ℤ) = A111652 (n + 1)

end A111652

/-! ## A111652.P17305396407973311205

`3*round(sqrt(comp[lcm(2, n)]))`
-/

namespace A111652.P17305396407973311205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A111652.P17305396407973311205

namespace A111652

/-- `3*round(sqrt(comp[lcm(2, n)]))` -/
def P17305396407973311205.Spec : Prop :=
  ∀ n, P17305396407973311205.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P9619803584020697902

`3*round(record[sqrt(xor(1, n))])`
-/

namespace A111652.P9619803584020697902
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.xor 1 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111652.P9619803584020697902

namespace A111652

/-- `3*round(record[sqrt(xor(1, n))])` -/
def P9619803584020697902.Spec : Prop :=
  ∀ n, P9619803584020697902.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P3877902630413749718

`3*round(record[sqrt(or(2, n))])`
-/

namespace A111652.P3877902630413749718
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Nat.lor 2 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A111652.P3877902630413749718

namespace A111652

/-- `3*round(record[sqrt(or(2, n))])` -/
def P3877902630413749718.Spec : Prop :=
  ∀ n, P3877902630413749718.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P6351266880112013528

`3*round(sqrt(or(1, 2*n)))`
-/

namespace A111652.P6351266880112013528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.sqrt (Nat.lor 1 (2 * n) : ℝ))

end

end A111652.P6351266880112013528

namespace A111652

/-- `3*round(sqrt(or(1, 2*n)))` -/
def P6351266880112013528.Spec : Prop :=
  ∀ n, P6351266880112013528.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P3633961065185414581

`3*round(sqrt(xor(1, 2*n)))`
-/

namespace A111652.P3633961065185414581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (2 * n) : ℝ))

end

end A111652.P3633961065185414581

namespace A111652

/-- `3*round(sqrt(xor(1, 2*n)))` -/
def P3633961065185414581.Spec : Prop :=
  ∀ n, P3633961065185414581.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P4240839381597690421

`3*round(sqrt(comp[and(n, -2)]))`
-/

namespace A111652.P4240839381597690421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * SequenceMachineLib.roundAway (Real.sqrt (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℝ))

end

end A111652.P4240839381597690421

namespace A111652

/-- `3*round(sqrt(comp[and(n, -2)]))` -/
def P4240839381597690421.Spec : Prop :=
  ∀ n, P4240839381597690421.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P12136110386620742041

`3*(comp[C(n, 2)]-(n+1))`
-/

namespace A111652.P12136110386620742041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n + 1 : ℤ))

end

end A111652.P12136110386620742041

namespace A111652

/-- `3*(comp[C(n, 2)]-(n+1))` -/
def P12136110386620742041.Spec : Prop :=
  ∀ n, P12136110386620742041.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P3576029065037180058

`a(n-a(n-1)/3)+3` with `a(0)=3`
-/

namespace A111652.P3576029065037180058
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℚ) - (a (n - 1) : ℚ) / 3)).toNat + 3

end

end A111652.P3576029065037180058

namespace A111652

/-- `a(n-a(n-1)/3)+3` -/
def P3576029065037180058.Spec : Prop :=
  ∀ n, (P3576029065037180058.a n : ℤ) = A111652 (n + 1)

end A111652

/-! ## A111652.P6333612880579990381

`3*round(sqrt(2*n+1))%(n+2)`
-/

namespace A111652.P6333612880579990381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))) (n + 2 : ℤ)

end

end A111652.P6333612880579990381

namespace A111652

/-- `3*round(sqrt(2*n+1))%(n+2)` -/
def P6333612880579990381.Spec : Prop :=
  ∀ n, P6333612880579990381.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P16248720603804001106

`3*(A003056(n)+1)`
-/

namespace A111652.P16248720603804001106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003056 n + 1)

end

end A111652.P16248720603804001106

namespace A111652

/-- `3*(A003056(n)+1)` -/
def P16248720603804001106.Spec : Prop :=
  ∀ n, P16248720603804001106.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P4378231373135466043

`3*(A003057(n+2)-1)`
-/

namespace A111652.P4378231373135466043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A003057 (n + 2) - 1)

end

end A111652.P4378231373135466043

namespace A111652

/-- `3*(A003057(n+2)-1)` -/
def P4378231373135466043.Spec : Prop :=
  ∀ n, P4378231373135466043.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P10861401365420205791

`3*(A133196(n+1)-2)`
-/

namespace A111652.P10861401365420205791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A133196 (n + 1) - 2)

end

end A111652.P10861401365420205791

namespace A111652

/-- `3*(A133196(n+1)-2)` -/
def P10861401365420205791.Spec : Prop :=
  ∀ n, P10861401365420205791.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P7161588224812151897

`3*(A350361(n+1)-3)`
-/

namespace A111652.P7161588224812151897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A350361 (n + 1) - 3)

end

end A111652.P7161588224812151897

namespace A111652

/-- `3*(A350361(n+1)-3)` -/
def P7161588224812151897.Spec : Prop :=
  ∀ n, P7161588224812151897.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P3984420449006229325

`A008486(round(sqrt(2*n+1)))`
-/

namespace A111652.P3984420449006229325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A111652.P3984420449006229325

namespace A111652

/-- `A008486(round(sqrt(2*n+1)))` -/
def P3984420449006229325.Spec : Prop :=
  ∀ n, P3984420449006229325.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P17265254082052551568

`A008585(round(sqrt(2*n+1)))`
-/

namespace A111652.P17265254082052551568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A111652.P17265254082052551568

namespace A111652

/-- `A008585(round(sqrt(2*n+1)))` -/
def P17265254082052551568.Spec : Prop :=
  ∀ n, P17265254082052551568.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P8469609663579853120

`A031193(round(sqrt(2*n+1)))`
-/

namespace A111652.P8469609663579853120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031193 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))).toNat

end

end A111652.P8469609663579853120

namespace A111652

/-- `A031193(round(sqrt(2*n+1)))` -/
def P8469609663579853120.Spec : Prop :=
  ∀ n, P8469609663579853120.a n = A111652 (n + 1)

end A111652

/-! ## A111652.P11147530376102793430

`A055562(A131507(n))`
-/

namespace A111652.P11147530376102793430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055562 (A131507 n).toNat

end

end A111652.P11147530376102793430

namespace A111652

/-- `A055562(A131507(n))` -/
def P11147530376102793430.Spec : Prop :=
  ∀ n, P11147530376102793430.a n = A111652 (n + 1)

end A111652

/-!
# A111653: n-th composite number appears n times.

The programs for A111653, the canonical program `A111653.P11815218496113125647` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111653 has offset 1).

The definition of A111653 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111653.P11815218496113125647

`A002808(∑[char[∑[n]]])`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A111653

/-- `A002808(∑[char[∑[n]]])` -/
def P11815218496113125647.Spec : Prop :=
  ∀ n, P11815218496113125647.a n = A111653 (n + 1)

theorem P11815218496113125647.correct : P11815218496113125647.Spec := by
  intro n
  simp only [A111653, Nat.add_sub_cancel]

end A111653

/-! ## A111653.P4774068555574445597

`A018252(comp[∑[n]]-n)`
-/

namespace A111653.P4774068555574445597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - n)

end

end A111653.P4774068555574445597

namespace A111653

/-- `A018252(comp[∑[n]]-n)` -/
def P4774068555574445597.Spec : Prop :=
  ∀ n, P4774068555574445597.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P11055902048412751387

`A129131(A131507(n))`
-/

namespace A111653.P11055902048412751387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A131507 n).toNat

end

end A111653.P11055902048412751387

namespace A111653

/-- `A129131(A131507(n))` -/
def P11055902048412751387.Spec : Prop :=
  ∀ n, P11055902048412751387.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P8496181324931171909

`A026239(A005145(n+1))`
-/

namespace A111653.P8496181324931171909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A005145 (n + 1)).toNat

end

end A111653.P8496181324931171909

namespace A111653

/-- `A026239(A005145(n+1))` -/
def P8496181324931171909.Spec : Prop :=
  ∀ n, P8496181324931171909.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P13514948811863367361

`A067747(A111650(n+1))`
-/

namespace A111653.P13514948811863367361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A111650 (n + 1)).toNat

end

end A111653.P13514948811863367361

namespace A111653

/-- `A067747(A111650(n+1))` -/
def P13514948811863367361.Spec : Prop :=
  ∀ n, P13514948811863367361.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P16013980901342254328

`A067747(A131507(n)+1)`
-/

namespace A111653.P16013980901342254328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (A131507 n + 1).toNat

end

end A111653.P16013980901342254328

namespace A111653

/-- `A067747(A131507(n)+1)` -/
def P16013980901342254328.Spec : Prop :=
  ∀ n, P16013980901342254328.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P8834931616903386378

`A026234(A389809(n+1))`
-/

namespace A111653.P8834931616903386378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026234 (A389809 (n + 1)).toNat

end

end A111653.P8834931616903386378

namespace A111653

/-- `A026234(A389809(n+1))` -/
def P8834931616903386378.Spec : Prop :=
  ∀ n, P8834931616903386378.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P499693618112785905

`A073846(A111650(n+1)+1)`
-/

namespace A111653.P499693618112785905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A111650 (n + 1) + 1).toNat

end

end A111653.P499693618112785905

namespace A111653

/-- `A073846(A111650(n+1)+1)` -/
def P499693618112785905.Spec : Prop :=
  ∀ n, P499693618112785905.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P12169720006880148092

`A136527(A127739(n+1))`
-/

namespace A111653.P12169720006880148092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136527 (A127739 (n + 1)).toNat

end

end A111653.P12169720006880148092

namespace A111653

/-- `A136527(A127739(n+1))` -/
def P12169720006880148092.Spec : Prop :=
  ∀ n, P12169720006880148092.a n = A111653 (n + 1)

end A111653

/-! ## A111653.P9068069836589965411

`A377033(A057944(n))`
-/

namespace A111653.P9068069836589965411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377033 (A057944 n).toNat

end

end A111653.P9068069836589965411

namespace A111653

/-- `A377033(A057944(n))` -/
def P9068069836589965411.Spec : Prop :=
  ∀ n, P9068069836589965411.a n = A111653 (n + 1)

end A111653

/-!
# A111654: n appears n-th composite number times.

The programs for A111654, the canonical program `A111654.P16123590351689709113` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111654 has offset 1).

The definition of A111654 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111654.P16123590351689709113

`∑[char[∑[n%∏{d}[n, #]]]]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111654

/-- `∑[char[∑[n%∏{d}[n, #]]]]` -/
def P16123590351689709113.Spec : Prop :=
  ∀ n, (P16123590351689709113.a n : ℤ) = A111654 (n + 1)

theorem P16123590351689709113.correct : P16123590351689709113.Spec := by
  intro n
  simp only [A111654, Nat.add_sub_cancel]

end A111654

/-! ## A111654.P14807150404765826028

`comp[∑[(n+2)%∑{d}[n+1, #]]]-n`
-/

namespace A111654.P14807150404765826028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % (∑ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A111654.P14807150404765826028

namespace A111654

/-- `comp[∑[(n+2)%∑{d}[n+1, #]]]-n` -/
def P14807150404765826028.Spec : Prop :=
  ∀ n, P14807150404765826028.a n = A111654 (n + 1)

end A111654

/-! ## A111654.P7928011376051632675

`∑[char[∑[(n+1)%((n+1)^∑{e}[n+1, #])]]]`
-/

namespace A111654.P7928011376051632675
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (n + 1) ^ (∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P7928011376051632675

namespace A111654

/-- `∑[char[∑[(n+1)%((n+1)^∑{e}[n+1, #])]]]` -/
def P7928011376051632675.Spec : Prop :=
  ∀ n, (P7928011376051632675.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P8502417549828902659

`∑[char[A053767(n)]]`
-/

namespace A111654.P8502417549828902659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P8502417549828902659

namespace A111654

/-- `∑[char[A053767(n)]]` -/
def P8502417549828902659.Spec : Prop :=
  ∀ n, (P8502417549828902659.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P6234788710187255721

`∑[char[A101256(n+1)]]`
-/

namespace A111654.P6234788710187255721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101256 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P6234788710187255721

namespace A111654

/-- `∑[char[A101256(n+1)]]` -/
def P6234788710187255721.Spec : Prop :=
  ∀ n, (P6234788710187255721.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P16524006431907187506

`∑[char[A051349(n)-1]]`
-/

namespace A111654.P16524006431907187506
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P16524006431907187506

namespace A111654

/-- `∑[char[A051349(n)-1]]` -/
def P16524006431907187506.Spec : Prop :=
  ∀ n, (P16524006431907187506.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P14945829855008145080

`∑[char[A101203(n)-1]]`
-/

namespace A111654.P14945829855008145080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P14945829855008145080

namespace A111654

/-- `∑[char[A101203(n)-1]]` -/
def P14945829855008145080.Spec : Prop :=
  ∀ n, (P14945829855008145080.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P1758461550390750082

`∑[char[A175967(n+1)-2]]`
-/

namespace A111654.P1758461550390750082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P1758461550390750082

namespace A111654

/-- `∑[char[A175967(n+1)-2]]` -/
def P1758461550390750082.Spec : Prop :=
  ∀ n, (P1758461550390750082.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P7950283108920275284

`∑[char[∑[comp[A006530(n+1)]]]]`
-/

namespace A111654.P7950283108920275284
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ (x : ℤ)) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111654.P7950283108920275284

namespace A111654

/-- `∑[char[∑[comp[A006530(n+1)]]]]` -/
def P7950283108920275284.Spec : Prop :=
  ∀ n, (P7950283108920275284.a n : ℤ) = A111654 (n + 1)

end A111654

/-! ## A111654.P4594447207700169232

`A026238(A111655(n+1))`
-/

namespace A111654.P4594447207700169232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (A111655 (n + 1)).toNat

end

end A111654.P4594447207700169232

namespace A111654

/-- `A026238(A111655(n+1))` -/
def P4594447207700169232.Spec : Prop :=
  ∀ n, P4594447207700169232.a n = A111654 (n + 1)

end A111654

/-! ## A111654.P10122550796854087409

`A168255(n+2)-1`
-/

namespace A111654.P10122550796854087409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168255 (n + 2) - 1

end

end A111654.P10122550796854087409

namespace A111654

/-- `A168255(n+2)-1` -/
def P10122550796854087409.Spec : Prop :=
  ∀ n, P10122550796854087409.a n = A111654 (n + 1)

end A111654

/-!
# A111655: n-th composite number appears n-th composite number times.

The programs for A111655, the canonical program `A111655.P15410137681632435708` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111655 has offset 1).

The definition of A111655 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111655.P4530995034540574371

`comp[∑[(n+1)%∏{d}[n, #]]]+1-n`
-/

namespace A111655.P4530995034540574371
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % (∏ d ∈ Nat.divisors (f3 n), d)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) - (n : ℤ)

end

end A111655.P4530995034540574371

namespace A111655

/-- `comp[∑[(n+1)%∏{d}[n, #]]]+1-n` -/
def P4530995034540574371.Spec : Prop :=
  ∀ n, P4530995034540574371.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P6885195743127674109

`A018252(∑[char[∑[n%∏{d}[n, #]]]]+1)`
-/

namespace A111655.P6885195743127674109
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ d ∈ Nat.divisors (f4 n), d)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111655.P6885195743127674109

namespace A111655

/-- `A018252(∑[char[∑[n%∏{d}[n, #]]]]+1)` -/
def P6885195743127674109.Spec : Prop :=
  ∀ n, P6885195743127674109.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P15410137681632435708

`A002808(A111654(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111655

/-- `A002808(A111654(n+1))` -/
def P15410137681632435708.Spec : Prop :=
  ∀ n, P15410137681632435708.a n = A111655 (n + 1)

theorem P15410137681632435708.correct : P15410137681632435708.Spec := by
  intro n
  simp only [A111655, Nat.add_sub_cancel]

end A111655

/-! ## A111655.P1323944640463767349

`A026239(A111656(n+1))`
-/

namespace A111655.P1323944640463767349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111656 (n + 1)).toNat

end

end A111655.P1323944640463767349

namespace A111655

/-- `A026239(A111656(n+1))` -/
def P1323944640463767349.Spec : Prop :=
  ∀ n, P1323944640463767349.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P14177034659201772438

`A018252(A111654(n+1)+1)`
-/

namespace A111655.P14177034659201772438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A111654 (n + 1) + 1).toNat

end

end A111655.P14177034659201772438

namespace A111655

/-- `A018252(A111654(n+1)+1)` -/
def P14177034659201772438.Spec : Prop :=
  ∀ n, P14177034659201772438.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P2094109959035116839

`A141468(A111654(n+1)+2)`
-/

namespace A111655.P2094109959035116839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A111654 (n + 1) + 2).toNat

end

end A111655.P2094109959035116839

namespace A111655

/-- `A141468(A111654(n+1)+2)` -/
def P2094109959035116839.Spec : Prop :=
  ∀ n, P2094109959035116839.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P6871353913056013918

`A018252(∑[char[A053767(n)]]+1)`
-/

namespace A111655.P6871353913056013918
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111655.P6871353913056013918

namespace A111655

/-- `A018252(∑[char[A053767(n)]]+1)` -/
def P6871353913056013918.Spec : Prop :=
  ∀ n, P6871353913056013918.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P1310882608587301266

`A018252(∑[char[A051349(n)-1]]+1)`
-/

namespace A111655.P1310882608587301266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111655.P1310882608587301266

namespace A111655

/-- `A018252(∑[char[A051349(n)-1]]+1)` -/
def P1310882608587301266.Spec : Prop :=
  ∀ n, P1310882608587301266.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P4222588305941125067

`A018252(∑[char[A101203(n)-1]]+1)`
-/

namespace A111655.P4222588305941125067
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111655.P4222588305941125067

namespace A111655

/-- `A018252(∑[char[A101203(n)-1]]+1)` -/
def P4222588305941125067.Spec : Prop :=
  ∀ n, P4222588305941125067.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P509558587304629260

`A018252(∑[char[∑[A018252(n+1)]-1]]+1)`
-/

namespace A111655.P509558587304629260
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111655.P509558587304629260

namespace A111655

/-- `A018252(∑[char[∑[A018252(n+1)]-1]]+1)` -/
def P509558587304629260.Spec : Prop :=
  ∀ n, P509558587304629260.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P13601631316539468111

`A018252(comp[∑[(n+2)%A000203(n+1)]]-n+1)`
-/

namespace A111655.P13601631316539468111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A000203 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ) + 1).toNat

end

end A111655.P13601631316539468111

namespace A111655

/-- `A018252(comp[∑[(n+2)%A000203(n+1)]]-n+1)` -/
def P13601631316539468111.Spec : Prop :=
  ∀ n, P13601631316539468111.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P4987233442911710361

`A018252(A168255(n+2))`
-/

namespace A111655.P4987233442911710361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A168255 (n + 2)).toNat

end

end A111655.P4987233442911710361

namespace A111655

/-- `A018252(A168255(n+2))` -/
def P4987233442911710361.Spec : Prop :=
  ∀ n, P4987233442911710361.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P4159310704316360709

`filter[A002024(n+1), A066247(#)]`
-/

namespace A111655.P4159310704316360709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A111655.P4159310704316360709

namespace A111655

/-- `filter[A002024(n+1), A066247(#)]` -/
def P4159310704316360709.Spec : Prop :=
  ∀ n, P4159310704316360709.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P16652906642169206692

`filter[A002024(n+2), A005171(#)]`
-/

namespace A111655.P16652906642169206692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A111655.P16652906642169206692

namespace A111655

/-- `filter[A002024(n+2), A005171(#)]` -/
def P16652906642169206692.Spec : Prop :=
  ∀ n, P16652906642169206692.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P2676603936624662502

`filter[A123578(n+1), A066247(#)]`
-/

namespace A111655.P2676603936624662502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A111655.P2676603936624662502

namespace A111655

/-- `filter[A123578(n+1), A066247(#)]` -/
def P2676603936624662502.Spec : Prop :=
  ∀ n, P2676603936624662502.a n = A111655 (n + 1)

end A111655

/-! ## A111655.P4660059955122337645

`filter[A123578(n+2), A005171(#)]`
-/

namespace A111655.P4660059955122337645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A111655.P4660059955122337645

namespace A111655

/-- `filter[A123578(n+2), A005171(#)]` -/
def P4660059955122337645.Spec : Prop :=
  ∀ n, P4660059955122337645.a n = A111655 (n + 1)

end A111655

/-!
# A111656: n-th prime appears n-th composite number times.

The programs for A111656, the canonical program `A111656.P15593076391265150402` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111656 has offset 1).

The definition of A111656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111656.P16412196778729050489

`A000040(∑[char[∑[n%∏{d}[n, #]]]])`
-/

namespace A111656.P16412196778729050489
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % (∏ d ∈ Nat.divisors (f4 n), d)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111656.P16412196778729050489

namespace A111656

/-- `A000040(∑[char[∑[n%∏{d}[n, #]]]])` -/
def P16412196778729050489.Spec : Prop :=
  ∀ n, P16412196778729050489.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P15593076391265150402

`A000040(A111654(n+1))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A111656

/-- `A000040(A111654(n+1))` -/
def P15593076391265150402.Spec : Prop :=
  ∀ n, P15593076391265150402.a n = A111656 (n + 1)

theorem P15593076391265150402.correct : P15593076391265150402.Spec := by
  intro n
  simp only [A111656, Nat.add_sub_cancel]

end A111656

/-! ## A111656.P1567995077660572168

`A026239(A111655(n+1))`
-/

namespace A111656.P1567995077660572168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A111655 (n + 1)).toNat

end

end A111656.P1567995077660572168

namespace A111656

/-- `A026239(A111655(n+1))` -/
def P1567995077660572168.Spec : Prop :=
  ∀ n, P1567995077660572168.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P8208140154841028135

`A000040(∑[char[A053767(n)]])`
-/

namespace A111656.P8208140154841028135
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111656.P8208140154841028135

namespace A111656

/-- `A000040(∑[char[A053767(n)]])` -/
def P8208140154841028135.Spec : Prop :=
  ∀ n, P8208140154841028135.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P12545056257218449976

`A000040(∑[char[∑[A018252(n+1)]-1]])`
-/

namespace A111656.P12545056257218449976
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111656.P12545056257218449976

namespace A111656

/-- `A000040(∑[char[∑[A018252(n+1)]-1]])` -/
def P12545056257218449976.Spec : Prop :=
  ∀ n, P12545056257218449976.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P7165477618825163855

`A000040(∑[char[A002808(n+1)+a(n-1)]]+1)` with `a(0)=4`
-/

namespace A111656.P7165477618825163855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A002808 (n + 1) + f2 (n - 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111656.P7165477618825163855

namespace A111656

/-- `A000040(∑[char[A002808(n+1)+a(n-1)]]+1)` -/
def P7165477618825163855.Spec : Prop :=
  ∀ n, P7165477618825163855.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P9243882388220574621

`A008578(A168255(n+2))`
-/

namespace A111656.P9243882388220574621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A168255 (n + 2)).toNat

end

end A111656.P9243882388220574621

namespace A111656

/-- `A008578(A168255(n+2))` -/
def P9243882388220574621.Spec : Prop :=
  ∀ n, P9243882388220574621.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P8625288269205501447

`A000040(A168255(n+2)-1)`
-/

namespace A111656.P8625288269205501447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A168255 (n + 2) - 1).toNat

end

end A111656.P8625288269205501447

namespace A111656

/-- `A000040(A168255(n+2)-1)` -/
def P8625288269205501447.Spec : Prop :=
  ∀ n, P8625288269205501447.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P8815992126116244888

`p?[A026239(A000196(A063657(n+1)))]`
-/

namespace A111656.P8815992126116244888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A000196 (A063657 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111656.P8815992126116244888

namespace A111656

/-- `p?[A026239(A000196(A063657(n+1)))]` -/
def P8815992126116244888.Spec : Prop :=
  ∀ n, P8815992126116244888.a n = A111656 (n + 1)

end A111656

/-! ## A111656.P4037665194306890621

`A026239(A175961(n+2))`
-/

namespace A111656.P4037665194306890621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A175961 (n + 2)).toNat

end

end A111656.P4037665194306890621

namespace A111656

/-- `A026239(A175961(n+2))` -/
def P4037665194306890621.Spec : Prop :=
  ∀ n, P4037665194306890621.a n = A111656 (n + 1)

end A111656

/-!
# A111657: n-th composite number appears n-th prime times.

The programs for A111657, the canonical program `A111657.P14274310389912407619` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111657 has offset 1).

The definition of A111657 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111657.P10265763550342938828

`A026239(p?[round(sqrt(2*n))])`
-/

namespace A111657.P10265763550342938828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111657.P10265763550342938828

namespace A111657

/-- `A026239(p?[round(sqrt(2*n))])` -/
def P10265763550342938828.Spec : Prop :=
  ∀ n, P10265763550342938828.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P1458868458098495323

`A066260(p?[round(sqrt(2*n+1))])`
-/

namespace A111657.P1458868458098495323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066260 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111657.P1458868458098495323

namespace A111657

/-- `A066260(p?[round(sqrt(2*n+1))])` -/
def P1458868458098495323.Spec : Prop :=
  ∀ n, P1458868458098495323.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P14274310389912407619

`A002808(A083375(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111657

/-- `A002808(A083375(n+1))` -/
def P14274310389912407619.Spec : Prop :=
  ∀ n, P14274310389912407619.a n = A111657 (n + 1)

theorem P14274310389912407619.correct : P14274310389912407619.Spec := by
  intro n
  simp only [A111657, Nat.add_sub_cancel]

end A111657

/-! ## A111657.P18150301955728375547

`A026239(A063905(n+1))`
-/

namespace A111657.P18150301955728375547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A063905 (n + 1)).toNat

end

end A111657.P18150301955728375547

namespace A111657

/-- `A026239(A063905(n+1))` -/
def P18150301955728375547.Spec : Prop :=
  ∀ n, P18150301955728375547.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P15852904757131949439

`A002808(∑[char[A007504(n)]])`
-/

namespace A111657.P15852904757131949439
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111657.P15852904757131949439

namespace A111657

/-- `A002808(∑[char[A007504(n)]])` -/
def P15852904757131949439.Spec : Prop :=
  ∀ n, P15852904757131949439.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P13617963356040272786

`A018252(∑[char[A007504(n)]]+1)`
-/

namespace A111657.P13617963356040272786
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111657.P13617963356040272786

namespace A111657

/-- `A018252(∑[char[A007504(n)]]+1)` -/
def P13617963356040272786.Spec : Prop :=
  ∀ n, P13617963356040272786.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P1343790588939184379

`A018252(∑[char[A034387(n+1)]]+1)`
-/

namespace A111657.P1343790588939184379
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034387 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111657.P1343790588939184379

namespace A111657

/-- `A018252(∑[char[A034387(n+1)]]+1)` -/
def P1343790588939184379.Spec : Prop :=
  ∀ n, P1343790588939184379.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P10004764788719234164

`A018252(∑[char[A063960(n+1)]]+1)`
-/

namespace A111657.P10004764788719234164
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063960 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111657.P10004764788719234164

namespace A111657

/-- `A018252(∑[char[A063960(n+1)]]+1)` -/
def P10004764788719234164.Spec : Prop :=
  ∀ n, P10004764788719234164.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P18231156770827710591

`A018252(2*n+3-A193732(n+1))`
-/

namespace A111657.P18231156770827710591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((2 * n + 3 : ℤ) - A193732 (n + 1)).toNat

end

end A111657.P18231156770827710591

namespace A111657

/-- `A018252(2*n+3-A193732(n+1))` -/
def P18231156770827710591.Spec : Prop :=
  ∀ n, P18231156770827710591.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P3237001580799523953

`A018252(eq[1, A093521(n+2)]-(n-1))`
-/

namespace A111657.P3237001580799523953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093521 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - ((n : ℤ) - 1)).toNat

end

end A111657.P3237001580799523953

namespace A111657

/-- `A018252(eq[1, A093521(n+2)]-(n-1))` -/
def P3237001580799523953.Spec : Prop :=
  ∀ n, P3237001580799523953.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P6370747303666680915

`A026239(A175944(n+2))`
-/

namespace A111657.P6370747303666680915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A175944 (n + 2)).toNat

end

end A111657.P6370747303666680915

namespace A111657

/-- `A026239(A175944(n+2))` -/
def P6370747303666680915.Spec : Prop :=
  ∀ n, P6370747303666680915.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P10297587097574866856

`A206798(A158611(A162988(n+2)))`
-/

namespace A111657.P10297587097574866856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206798 (A158611 (A162988 (n + 2)).toNat).toNat

end

end A111657.P10297587097574866856

namespace A111657

/-- `A206798(A158611(A162988(n+2)))` -/
def P10297587097574866856.Spec : Prop :=
  ∀ n, P10297587097574866856.a n = A111657 (n + 1)

end A111657

/-! ## A111657.P12453311278906760273

`A236675(p?[round(sqrt(2*n))])`
-/

namespace A111657.P12453311278906760273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236675 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A111657.P12453311278906760273

namespace A111657

/-- `A236675(p?[round(sqrt(2*n))])` -/
def P12453311278906760273.Spec : Prop :=
  ∀ n, P12453311278906760273.a n = A111657 (n + 1)

end A111657

/-!
# A111660: a(n) = greatest integer p for which n^p + (n+1)^p > (n+2)^p.

The programs for A111660, there is no canonical definition to state claims against.
-/

/-! ## A111660.P293052788380704714

`floor((n+1)*(atan(n)-1)*sin(1))+1`
-/

namespace A111660.P293052788380704714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * ((Real.arctan (n : ℝ) - 1) * Real.sin (1 : ℝ))⌋ + 1

end

end A111660.P293052788380704714

/-! ## A111660.P13151219116092735524

`floor(n/(log(3)+(n+1)/(log(n+1)+n+1)))`
-/

namespace A111660.P13151219116092735524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / (Real.log (3 : ℝ) + (n + 1 : ℝ) / (Real.log (n + 1 : ℝ) + (n + 1 : ℝ)))⌋

end

end A111660.P13151219116092735524

/-! ## A111660.P7892997408339048370

`ceil(log2(sqrt(A128761(n))))`
-/

namespace A111660.P7892997408339048370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Real.sqrt (A128761 n : ℝ))⌉

end

end A111660.P7892997408339048370

/-! ## A111660.P8762746253763192203

`round(log(A279890(n+1)))`
-/

namespace A111660.P8762746253763192203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A279890 (n + 1) : ℝ))

end

end A111660.P8762746253763192203

/-! ## A111660.P649142284893054505

`ceil(log(A097133(n)/2))`
-/

namespace A111660.P649142284893054505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((A097133 n : ℚ) / 2 : ℝ)⌉

end

end A111660.P649142284893054505

/-! ## A111660.P6742033245200000026

`round(acot(11)*A172334(n))`
-/

namespace A111660.P6742033245200000026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (11 : ℝ) * (A172334 n : ℝ))

end

end A111660.P6742033245200000026

/-! ## A111660.P5022644593753530806

`round(log(sqrt(A116847(n+1))))`
-/

namespace A111660.P5022644593753530806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A116847 (n + 1) : ℝ)))

end

end A111660.P5022644593753530806

/-! ## A111660.P2245010714820431673

`round(log(sqrt(A079289(2*n))))`
-/

namespace A111660.P2245010714820431673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (Real.sqrt (A079289 (2 * n) : ℝ)))

end

end A111660.P2245010714820431673

/-! ## A111660.P11183547654364646592

`ceil(log(∑[A000032(n)/4]))`
-/

namespace A111660.P11183547654364646592
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)⌉

end

end A111660.P11183547654364646592

/-! ## A111660.P11633295850537380477

`ceil(log(A000045(n+1)/3))+1`
-/

namespace A111660.P11633295850537380477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log ((A000045 (n + 1) : ℚ) / 3 : ℝ)⌉ + 1

end

end A111660.P11633295850537380477

/-!
# A111661: Expansion of eta(q)^4 * eta(q^2) * eta(q^6)^5 / eta(q^3)^4 in powers of q.

The programs for A111661, the canonical program `A111661.P12974684241340383549` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111661 has offset 1).

The definition of A111661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111661.P12974684241340383549

`∑{d}[n+1, A103440(#)*A154955((n+1)/#)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A111661

/-- `∑{d}[n+1, A103440(#)*A154955((n+1)/#)]` -/
def P12974684241340383549.Spec : Prop :=
  ∀ n, P12974684241340383549.a n = A111661 (n + 1)

theorem P12974684241340383549.correct : P12974684241340383549.Spec := by
  intro n
  simp only [A111661, Nat.add_sub_cancel]

end A111661

/-! ## A111661.P4553541386254109148

`A122373(A038502(n+1))*A343785(n+1)`
-/

namespace A111661.P4553541386254109148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122373 (A038502 (n + 1)).toNat * A343785 (n + 1)

end

end A111661.P4553541386254109148

namespace A111661

/-- `A122373(A038502(n+1))*A343785(n+1)` -/
def P4553541386254109148.Spec : Prop :=
  ∀ n, P4553541386254109148.a n = A111661 (n + 1)

end A111661

/-! ## A111661.P2330307859255217599

`A122373(A038502(C(n+1, n)))/A343785(n+1)`
-/

namespace A111661.P2330307859255217599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122373 (A038502 (Nat.choose (n + 1) n)).toNat : ℚ) / (A343785 (n + 1) : ℚ)

end

end A111661.P2330307859255217599

namespace A111661

/-- `A122373(A038502(C(n+1, n)))/A343785(n+1)` -/
def P2330307859255217599.Spec : Prop :=
  ∀ n, P2330307859255217599.a n = (A111661 (n + 1) : ℚ)

end A111661

/-! ## A111661.P175169846286616408

`A113261(n+1)*A122373(n+1)/A288143(n+1)`
-/

namespace A111661.P175169846286616408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113261 (n + 1) * A122373 (n + 1) : ℚ) / (A288143 (n + 1) : ℚ)

end

end A111661.P175169846286616408

namespace A111661

/-- `A113261(n+1)*A122373(n+1)/A288143(n+1)` -/
def P175169846286616408.Spec : Prop :=
  ∀ n, P175169846286616408.a n = (A111661 (n + 1) : ℚ)

end A111661

/-! ## A111661.P3773278693518598611

`(A132001(2*(n+1))-A132001(n+1))/4`
-/

namespace A111661.P3773278693518598611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132001 (2 * (n + 1)) - A132001 (n + 1) : ℚ) / 4

end

end A111661.P3773278693518598611

namespace A111661

/-- `(A132001(2*(n+1))-A132001(n+1))/4` -/
def P3773278693518598611.Spec : Prop :=
  ∀ n, P3773278693518598611.a n = (A111661 (n + 1) : ℚ)

end A111661

/-!
# A111662: Expansion of x^2*(1-x)*(x^2+x+1)*(x^6+x^3+1)/((2*x-1)*(2*x^9-x^6+x^3-1)).

The programs for A111662, there is no canonical definition to state claims against.
-/

/-! ## A111662.P3402453236371681965

`or(2*a(n-1), A259287((6*n+11)²))` with `a(0)=0`
-/

namespace A111662.P3402453236371681965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (2 * a (n - 1)) (A259287 ((6 * n + 11) ^ 2))

end

end A111662.P3402453236371681965

/-! ## A111662.P3746073333536938076

`floor(A263941(2^n)/16)`
-/

namespace A111662.P3746073333536938076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A263941 (2 ^ n) : ℚ) / 16⌋

end

end A111662.P3746073333536938076

/-! ## A111662.P12770698136178764837

`A002265(round(9*2^(n-3)))`
-/

namespace A111662.P12770698136178764837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (SequenceMachineLib.roundAway (9 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ))).toNat

end

end A111662.P12770698136178764837

/-! ## A111662.P8872850420807235248

`A057360(∑[ceil(3*2^(n-3))])`
-/

namespace A111662.P8872850420807235248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111662.P8872850420807235248

/-! ## A111662.P15481018247998785743

`Δ[A226107(ceil(3*2^(n-3)))]`
-/

namespace A111662.P15481018247998785743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226107 ⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111662.P15481018247998785743

/-!
# A111663: Expansion of (-1+x^3+x^6+x^9)/((1-x)*(2*x-1)*(x^2+1)*(x^2+x+1)*(x^4-x^2+1)).

The programs for A111663, there is no canonical definition to state claims against.
-/

/-! ## A111663.P9234592161006137470

`2*a(n-1)-A307432(A252228(n+1))` with `a(0)=1`
-/

namespace A111663.P9234592161006137470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - A307432 (A252228 (n + 1)).toNat

end

end A111663.P9234592161006137470

/-! ## A111663.P13624425652759304616

`2*A216345(A156253(a(n-1)))` with `a(0)=1`
-/

namespace A111663.P13624425652759304616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A216345 (A156253 (a (n - 1)).toNat).toNat

end

end A111663.P13624425652759304616

/-! ## A111663.P5169104871593904016

`A005843(a(n-1)-A277145(n))` with `a(0)=1`
-/

namespace A111663.P5169104871593904016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005843 (a (n - 1) - A277145 n).toNat

end

end A111663.P5169104871593904016

/-! ## A111663.P17840592834972016253

`2*(a(n-1)-A047999(A181262(n+1)))` with `a(0)=1`
-/

namespace A111663.P17840592834972016253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * (a (n - 1) - A047999 (A181262 (n + 1)).toNat)

end

end A111663.P17840592834972016253

/-! ## A111663.P3487592786464405784

`2*A127379(A127379(a(n-1)))` with `a(0)=1`
-/

namespace A111663.P3487592786464405784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A127379 (A127379 (a (n - 1)).toNat).toNat

end

end A111663.P3487592786464405784

/-!
# A111665: Expansion of (-1+x+2*x^2+5*x^4+3*x^3) / ((x-1)*(x+1)*(x^2-3*x+1)*(1+x^2)).

The programs for A111665, the canonical program `A111665.P10377472237506046142` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111665 has offset 0).

The definition of A111665 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111665.P10377472237506046142

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=10`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111665

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P10377472237506046142.Spec : Prop :=
  ∀ n, P10377472237506046142.a n = A111665 n

theorem P10377472237506046142.correct : P10377472237506046142.Spec := by
  intro n
  simp only [A111665]

end A111665

/-! ## A111665.P4306219229231531267

`a(n-1)-or(3, a(n-2)+1-2*a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A111665.P4306219229231531267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.lor 3 (a (n - 2) + (1 - 2 * a (n - 1)))

end

end A111665.P4306219229231531267

namespace A111665

/-- `a(n-1)-or(3, a(n-2)+1-2*a(n-1))` -/
def P4306219229231531267.Spec : Prop :=
  ∀ n, P4306219229231531267.a n = A111665 n

end A111665

/-! ## A111665.P17565076830660226292

`a(n-1)-or(3, 1-(2*a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A111665.P17565076830660226292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.lor 3 (1 - (2 * a (n - 1) - a (n - 2)))

end

end A111665.P17565076830660226292

namespace A111665

/-- `a(n-1)-or(3, 1-(2*a(n-1)-a(n-2)))` -/
def P17565076830660226292.Spec : Prop :=
  ∀ n, P17565076830660226292.a n = A111665 n

end A111665

/-! ## A111665.P8231674070722009608

`a(n-1)-or(3, 1-(a(n-1)+a(n-1)-a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A111665.P8231674070722009608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) - Int.lor 3 (1 - (a (n - 1) + (a (n - 1) - a (n - 2))))

end

end A111665.P8231674070722009608

namespace A111665

/-- `a(n-1)-or(3, 1-(a(n-1)+a(n-1)-a(n-2)))` -/
def P8231674070722009608.Spec : Prop :=
  ∀ n, P8231674070722009608.a n = A111665 n

end A111665

/-! ## A111665.P6076578917150093983

`∑[A109786(n)]`
-/

namespace A111665.P6076578917150093983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109786 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111665.P6076578917150093983

namespace A111665

/-- `∑[A109786(n)]` -/
def P6076578917150093983.Spec : Prop :=
  ∀ n, P6076578917150093983.a n = A111665 n

end A111665

/-!
# A111666: Expansion of (-2+3*x+3*x^2+4*x^3+3*x^4-5*x^5)/((x-1)*(x+1)*(1+x^2)*(x^2-3*x+1)).

The programs for A111666, the canonical program `A111666.P5647743579181278928` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111666 has offset 0).

The definition of A111666 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A111666.P5647743579181278928

`3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` with `a(0)=2, a(1)=3, a(2)=4, a(3)=5, a(4)=10, a(5)=27`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111666

/-- `3*a(n-1)-a(n-2)+a(n-4)-3*a(n-5)+a(n-6)` -/
def P5647743579181278928.Spec : Prop :=
  ∀ n, P5647743579181278928.a n = A111666 n

theorem P5647743579181278928.correct : P5647743579181278928.Spec := by
  intro n
  simp only [A111666]

end A111666

/-! ## A111666.P9205706064956223614

`A109786(n)+∑[A109786(n+1)]`
-/

namespace A111666.P9205706064956223614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109786 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109786 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111666.P9205706064956223614

namespace A111666

/-- `A109786(n)+∑[A109786(n+1)]` -/
def P9205706064956223614.Spec : Prop :=
  ∀ n, P9205706064956223614.a n = A111666 n

end A111666

/-! ## A111666.P8859374504265836643

`A046530(A357964(n))+n+1`
-/

namespace A111666.P8859374504265836643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (A357964 n).toNat + (n + 1 : ℤ)

end

end A111666.P8859374504265836643

namespace A111666

/-- `A046530(A357964(n))+n+1` -/
def P8859374504265836643.Spec : Prop :=
  ∀ n, P8859374504265836643.a n = A111666 n

end A111666

/-!
# A111667: Abundance of admirable numbers.

The programs for A111667, there is no canonical definition to state claims against.
-/

/-! ## A111667.P11858983887400771351

`2*A111646(n+1)`
-/

namespace A111667.P11858983887400771351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111646 (n + 1)

end

end A111667.P11858983887400771351

/-! ## A111667.P15065507858841191851

`A111646(A000027(n+1))+A111646(n+1)`
-/

namespace A111667.P15065507858841191851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111646 (A000027 (n + 1)).toNat + A111646 (n + 1)

end

end A111667.P15065507858841191851

/-! ## A111667.P10824661477955502130

`A004277(A111646(n+1))`
-/

namespace A111667.P10824661477955502130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A111646 (n + 1)).toNat

end

end A111667.P10824661477955502130

/-! ## A111667.P3756340835460590969

`abs(A033879(A111592(n+1)))`
-/

namespace A111667.P3756340835460590969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033879 (A111592 (n + 1)).toNat|

end

end A111667.P3756340835460590969

/-! ## A111667.P14457852334218208519

`A146076(2*n+3)-A033879(A111592(n+1))`
-/

namespace A111667.P14457852334218208519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146076 (2 * n + 3) - A033879 (A111592 (n + 1)).toNat

end

end A111667.P14457852334218208519

/-! ## A111667.P13652562500916812220

`A001065(gcd(n, n+1))-A033879(A111592(n+1))`
-/

namespace A111667.P13652562500916812220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (Nat.gcd n (n + 1)) - A033879 (A111592 (n + 1)).toNat

end

end A111667.P13652562500916812220

/-! ## A111667.P11313332496361595153

`A033880(A111592(n+1))`
-/

namespace A111667.P11313332496361595153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (A111592 (n + 1)).toNat

end

end A111667.P11313332496361595153

/-! ## A111667.P777058904050783244

`A274611(A111646(n+1)²)/A111646(n+1)`
-/

namespace A111667.P777058904050783244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A274611 (A111646 (n + 1) ^ 2).toNat : ℚ) / (A111646 (n + 1) : ℚ)

end

end A111667.P777058904050783244

/-!
# A111668: Primes p such that p-1 has a prime factor > sqrt(p-1).

The programs for A111668, there is no canonical definition to state claims against.
-/

/-! ## A111668.P14573357024810874890

`p?[A064052(n+1)+1]`
-/

namespace A111668.P14573357024810874890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111668.P14573357024810874890

/-! ## A111668.P13657387625358142573

`record[A166333(A064052(n+1))]`
-/

namespace A111668.P13657387625358142573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166333 (A064052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111668.P13657387625358142573

/-! ## A111668.P9038577265079523970

`record[A006530(A064052(n+1)+1)]`
-/

namespace A111668.P9038577265079523970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A064052 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111668.P9038577265079523970

/-! ## A111668.P9606115051283886451

`record[A014963(A064052(n+1)+1)]`
-/

namespace A111668.P9606115051283886451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A064052 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111668.P9606115051283886451

/-! ## A111668.P14212649675475348599

`record[A020639(A064052(n+1)+1)]`
-/

namespace A111668.P14212649675475348599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A064052 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111668.P14212649675475348599

/-! ## A111668.P4548111292856160548

`∪[A074268(n+1), A259560(n+1)]`
-/

namespace A111668.P4548111292856160548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111668.P4548111292856160548

/-! ## A111668.P16276958458112641640

`∪[A258435(n+1), A259560(n+1)]`
-/

namespace A111668.P16276958458112641640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259560 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A111668.P16276958458112641640

/-! ## A111668.P16418537929643924071

`∩[A000040(n+1), A064052(n+1)+1]`
-/

namespace A111668.P16418537929643924071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111668.P16418537929643924071

/-! ## A111668.P10765496941064983289

`p?[(n+2)*(A008683(A354933(n+1))+2)]`
-/

namespace A111668.P10765496941064983289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A008683 (A354933 (n + 1)).toNat + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111668.P10765496941064983289

/-! ## A111668.P14703364313684954523

`p?[record[(n+1)%A006530(A000010(n+1))²]]`
-/

namespace A111668.P14703364313684954523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A006530 (A000010 (n + 1)).toNat ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A111668.P14703364313684954523

/-!
# A111669: Triangle read by rows, based on a simple Fibonacci recursion rule.

The programs for A111669, there is no canonical definition to state claims against.
-/

/-! ## A111669.P13497952866614232656

`A137596(n)+A089311(A094544(n))`
-/

namespace A111669.P13497952866614232656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137596 n + A089311 (A094544 n).toNat

end

end A111669.P13497952866614232656

/-! ## A111669.P6844271959782681770

`A137596(n)+A025469(A163661(n))`
-/

namespace A111669.P6844271959782681770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137596 n + A025469 (A163661 n).toNat

end

end A111669.P6844271959782681770

/-! ## A111669.P10210926500442353494

`A151795(A060475(n))+A137596(n)`
-/

namespace A111669.P10210926500442353494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A060475 n).toNat + A137596 n

end

end A111669.P10210926500442353494

/-! ## A111669.P8422069332564439352

`A151795(A086350(n))+A137596(n)`
-/

namespace A111669.P8422069332564439352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151795 (A086350 n).toNat + A137596 n

end

end A111669.P8422069332564439352

/-! ## A111669.P7187763778861639003

`A090106(A137596(n))`
-/

namespace A111669.P7187763778861639003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090106 (A137596 n).toNat

end

end A111669.P7187763778861639003

/-!
# A111670: Array T(n,k) read by antidiagonals: the k-th column contains the first column of the k-th power of A039755.

The programs for A111670, there is no canonical definition to state claims against.
-/

/-! ## A111670.P18076841616405410344

`A142589(A061579(A080953(n)+n))`
-/

namespace A111670.P18076841616405410344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A061579 (A080953 n + (n : ℤ)).toNat).toNat

end

end A111670.P18076841616405410344

/-! ## A111670.P11101104524928468765

`A142589(or(A061579(n), A080953(n)))`
-/

namespace A111670.P11101104524928468765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (Int.lor (A061579 n) (A080953 n)).toNat

end

end A111670.P11101104524928468765

/-! ## A111670.P4859508657394195267

`A142589(A061579(n))^Δ[A024661(n)]`
-/

namespace A111670.P4859508657394195267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024661 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142589 (A061579 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A111670.P4859508657394195267

/-! ## A111670.P1026351266005116550

`A174480(n+1)+A163351(A102480(n))`
-/

namespace A111670.P1026351266005116550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174480 (n + 1) + A163351 (A102480 n).toNat

end

end A111670.P1026351266005116550

/-! ## A111670.P14808744967609047232

`A113006(A174480(n+1))`
-/

namespace A111670.P14808744967609047232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113006 (A174480 (n + 1)).toNat

end

end A111670.P14808744967609047232

/-!
# A111671: Smallest prime p > 3 such that p-1 has a prime factor > (p-1)^(n/(n+1)).

The programs for A111671, there is no canonical definition to state claims against.
-/

/-! ## A111671.P2321149601296258318

`A350696(n+2)+2*A198633(n)`
-/

namespace A111671.P2321149601296258318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350696 (n + 2) + 2 * A198633 n

end

end A111671.P2321149601296258318

/-! ## A111671.P10002469014952028926

`A005385(∑[A211395(n)]+1)`
-/

namespace A111671.P10002469014952028926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211395 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A111671.P10002469014952028926

/-! ## A111671.P9142957297295489940

`A005385(ceil(A211397(n+1)+acot(n)))`
-/

namespace A111671.P9142957297295489940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 ⌈(A211397 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A111671.P9142957297295489940

/-! ## A111671.P4226862387064995244

`A005385(A211397(n+1)+A054977(n))`
-/

namespace A111671.P4226862387064995244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005385 (A211397 (n + 1) + A054977 n).toNat

end

end A111671.P4226862387064995244

/-! ## A111671.P12700776972263159130

`A027844(A367966(n+1))`
-/

namespace A111671.P12700776972263159130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027844 (A367966 (n + 1)).toNat

end

end A111671.P12700776972263159130

/-!
# A111672: Array T(n,k) = A153277(n-1,k) = A144150(n,k-1) read by downwards antidiagonals.

The programs for A111672, there is no canonical definition to state claims against.
-/

/-! ## A111672.P5019450115742543241

`A144150(comp[∑[n]])`
-/

namespace A111672.P5019450115742543241
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A111672.P5019450115742543241

/-! ## A111672.P10904266664396511487

`A079978(3*n)*A144150(A007401(n+2))`
-/

namespace A111672.P10904266664396511487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (3 * n) * A144150 (A007401 (n + 2)).toNat

end

end A111672.P10904266664396511487

/-! ## A111672.P17215136452032719226

`A144150(A007401(n+2))+char[A291600(n+1)]`
-/

namespace A111672.P17215136452032719226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291600 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 (A007401 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A111672.P17215136452032719226

/-! ## A111672.P6683294653419006853

`A144150(A007401(n+2))^A001221(A104843(n+1))`
-/

namespace A111672.P6683294653419006853
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A007401 (n + 2)).toNat : ℚ) ^ (A001221 (A104843 (n + 1)).toNat : ℤ)

end

end A111672.P6683294653419006853

/-! ## A111672.P17988794315406308832

`A185303(A014963(2*(n+1)))+A144150(A007401(n+2))`
-/

namespace A111672.P17988794315406308832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185303 (A014963 (2 * (n + 1))).toNat + A144150 (A007401 (n + 2)).toNat

end

end A111672.P17988794315406308832

/-! ## A111672.P3636669426472063191

`A144150(A007401(n+2))^A004525(A014963(2*(n+1))+1)`
-/

namespace A111672.P3636669426472063191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A007401 (n + 2)).toNat : ℚ) ^ (A004525 (A014963 (2 * (n + 1)) + 1).toNat : ℤ)

end

end A111672.P3636669426472063191

/-! ## A111672.P5285054541850345273

`A144150(A007401(n+2))^A014963(A136799(n+1))`
-/

namespace A111672.P5285054541850345273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A144150 (A007401 (n + 2)).toNat : ℚ) ^ (A014963 (A136799 (n + 1)).toNat : ℤ)

end

end A111672.P5285054541850345273

/-! ## A111672.P4885950437871902164

`A144150(A007401(n+2))%A120134(n+1)`
-/

namespace A111672.P4885950437871902164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144150 (A007401 (n + 2)).toNat) (A120134 (n + 1))

end

end A111672.P4885950437871902164

/-! ## A111672.P17626361244879404548

`A153277(n+1-∑[char[∑[n+1]]])`
-/

namespace A111672.P17626361244879404548
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153277 (n + 1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111672.P17626361244879404548

/-!
# A111673: Triangle, generated from A111579.

The programs for A111673, there is no canonical definition to state claims against.
-/

/-! ## A111673.P169893310559136227

`A241579(A083920(n)%A008277(n+1))`
-/

namespace A111673.P169893310559136227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (Int.tmod (A083920 n) (A008277 (n + 1))).toNat

end

end A111673.P169893310559136227

/-! ## A111673.P9555284709190053806

`A241579(A083920(n*Δ[A083920(n)]))`
-/

namespace A111673.P9555284709190053806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (A083920 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A111673.P9555284709190053806

/-! ## A111673.P17162507899497644189

`A241579(n-∑[char[∑[n+1]]])`
-/

namespace A111673.P17162507899497644189
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241579 (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111673.P17162507899497644189

/-! ## A111673.P16141676088006124276

`A241578(A056943(n+1))`
-/

namespace A111673.P16141676088006124276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241578 (A056943 (n + 1)).toNat

end

end A111673.P16141676088006124276

/-! ## A111673.P9113745724270418097

`A095135(A008550(n))`
-/

namespace A111673.P9113745724270418097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095135 (A008550 n).toNat

end

end A111673.P9113745724270418097

/-!
# A111674: a(1) = 1; for n>1, a(n) = least multiple of a(n-1) such that the termwise concatenation of a(n), a(n-1),...a(2), a(1) is prime.

The programs for A111674, there is no canonical definition to state claims against.
-/

/-! ## A111674.P1312481087478766634

`A000265(∏[A127480(n+1)+1])`
-/

namespace A111674.P1312481087478766634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127480 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111674.P1312481087478766634

/-! ## A111674.P17093368353254670540

`A038572(∏[A127480(n+1)+1])`
-/

namespace A111674.P17093368353254670540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127480 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111674.P17093368353254670540

/-! ## A111674.P6602013999209418979

`A000265(A008620(n)*A254232(n+2))`
-/

namespace A111674.P6602013999209418979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A008620 n * A254232 (n + 2)).toNat

end

end A111674.P6602013999209418979

/-!
# A111680: Leading diagonal of array in A111679.

The programs for A111680, there is no canonical definition to state claims against.
-/

/-! ## A111680.P1928364520490062961

`A111679(∑[n+1])`
-/

namespace A111680.P1928364520490062961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111679 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111680.P1928364520490062961

/-! ## A111680.P4719656159404366831

`A111679(A000217(n+1))+A011731(n)`
-/

namespace A111680.P4719656159404366831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111679 (A000217 (n + 1)).toNat + A011731 n

end

end A111680.P4719656159404366831

/-! ## A111680.P5644272859244812125

`A111679(A061791(n+1))+A011731(n)`
-/

namespace A111680.P5644272859244812125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111679 (A061791 (n + 1)).toNat + A011731 n

end

end A111680.P5644272859244812125

/-! ## A111680.P5071813278719519874

`A126696(n)+A111679(A061791(n+1))`
-/

namespace A111680.P5071813278719519874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126696 n + A111679 (A061791 (n + 1)).toNat

end

end A111680.P5071813278719519874

/-! ## A111680.P10951635354964575707

`A256974(n)+A111679(A061791(n+1))`
-/

namespace A111680.P10951635354964575707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A111679 (A061791 (n + 1)).toNat

end

end A111680.P10951635354964575707

/-!
# A111681: First column of array in A111679.

The programs for A111681, there is no canonical definition to state claims against.
-/

/-! ## A111681.P3572625872253522854

`A111679(∑[n]+1)`
-/

namespace A111681.P3572625872253522854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111679 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111681.P3572625872253522854

/-! ## A111681.P6941063304622486843

`A111679(A000124(n))+char[12]`
-/

namespace A111681.P6941063304622486843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111679 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A111681.P6941063304622486843

/-! ## A111681.P17124801479447944112

`A256974(n)+A111679(A000124(n))`
-/

namespace A111681.P17124801479447944112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256974 n + A111679 (A000124 n).toNat

end

end A111681.P17124801479447944112

/-! ## A111681.P347651050744776224

`A111679(A000124(n))%A352848(n)`
-/

namespace A111681.P347651050744776224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111679 (A000124 n).toNat) (A352848 n)

end

end A111681.P347651050744776224

/-! ## A111681.P16656374210837819609

`or(A011731(n), A111679(A000124(n)))`
-/

namespace A111681.P16656374210837819609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011731 n) (A111679 (A000124 n).toNat)

end

end A111681.P16656374210837819609

/-!
# A111683: n^k - n! where n^k > n! >= n^(k-1).

The programs for A111683, there is no canonical definition to state claims against.
-/

/-! ## A111683.P13091720974997319701

`(n+2)*(A074182(n+2)-(n+1)!)`
-/

namespace A111683.P13091720974997319701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * (A074182 (n + 2) - (Nat.factorial (n + 1) : ℤ))

end

end A111683.P13091720974997319701

/-! ## A111683.P6384878635525173336

`(n+2)^A060151(n+2)-A000142(n+2)`
-/

namespace A111683.P6384878635525173336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (A060151 (n + 2) : ℤ) - (A000142 (n + 2) : ℚ)

end

end A111683.P6384878635525173336

/-!
# A111684: Least k such that the product of n consecutive integers beginning with k exceeds n^n.

The programs for A111684, there is no canonical definition to state claims against.
-/

/-! ## A111684.P14320672852806988774

`ceil(13*(n+2)/24)`
-/

namespace A111684.P14320672852806988774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈13 * ((n + 2 : ℚ) / 24)⌉

end

end A111684.P14320672852806988774

/-! ## A111684.P15260420843695297582

`round((n+1)*atan(35)-n)`
-/

namespace A111684.P15260420843695297582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.arctan (35 : ℝ) - (n : ℝ))

end

end A111684.P15260420843695297582

/-! ## A111684.P3274296472585203844

`round((n+1)*acot(acot(35))-n)`
-/

namespace A111684.P3274296472585203844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) * SequenceMachineLib.acot (SequenceMachineLib.acot (35 : ℝ)) - (n : ℝ))

end

end A111684.P3274296472585203844

/-! ## A111684.P7242486544388727621

`floor(log2(A017824(n+8)))`
-/

namespace A111684.P7242486544388727621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A017824 (n + 8)).toNat

end

end A111684.P7242486544388727621

/-! ## A111684.P14133534883349205555

`floor(A312896(n)/8)+2`
-/

namespace A111684.P14133534883349205555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A312896 n : ℚ) / 8⌋ + 2

end

end A111684.P14133534883349205555

/-! ## A111684.P10216167895785754450

`round(lt[1/A020639(n+1), (n+1)%13]/2)+1`
-/

namespace A111684.P10216167895785754450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A020639 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n : ℚ) / 2) + 1

end

end A111684.P10216167895785754450

/-! ## A111684.P16987692994966235138

`floor((A005117(abs((-1)^n))+3)*(n+2)/exp(2))+1`
-/

namespace A111684.P16987692994966235138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A005117 |(-1) ^ n|.toNat + 3) * (n + 2 : ℤ) : ℝ) / Real.exp (2 : ℝ)⌋ + 1

end

end A111684.P16987692994966235138

/-! ## A111684.P3968992219825561169

`A008620(A000202(n+2))`
-/

namespace A111684.P3968992219825561169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A000202 (n + 2)).toNat

end

end A111684.P3968992219825561169

/-! ## A111684.P5442463802119051499

`A008619(A113763(n+2))`
-/

namespace A111684.P5442463802119051499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A113763 (n + 2)).toNat

end

end A111684.P5442463802119051499

/-!
# A111685: n + n(n+1) + n(n+1)(n+2) + ..., with n terms.

The programs for A111685, there is no canonical definition to state claims against.
-/

/-! ## A111685.P4811677602006724889

`∑[abs(Δ[A123680(n)])]`
-/

namespace A111685.P4811677602006724889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111685.P4811677602006724889

/-! ## A111685.P13089610525234646345

`A123680(n+1)-1`
-/

namespace A111685.P13089610525234646345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123680 (n + 1) - 1

end

end A111685.P13089610525234646345

/-! ## A111685.P1989580213567159332

`∑[Δ[A123680(n)]%A203473(n+1)]`
-/

namespace A111685.P1989580213567159332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123680 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f2 (n + 1) - f2 n) (A203473 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111685.P1989580213567159332

/-! ## A111685.P17204009565510272956

`A211370(A001844(n))/A000142(n)`
-/

namespace A111685.P17204009565510272956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211370 (A001844 n).toNat : ℚ) / (A000142 n : ℚ)

end

end A111685.P17204009565510272956

/-! ## A111685.P6620782974591383860

`(A374574(n+1)-A010050(n+1))/A000142(n)`
-/

namespace A111685.P6620782974591383860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374574 (n + 1) - A010050 (n + 1) : ℚ) / (A000142 n : ℚ)

end

end A111685.P6620782974591383860

/-!
# A111686: (n+1) + (n+1)(n+2) + ..., with n terms.

The programs for A111686, there is no canonical definition to state claims against.
-/

/-! ## A111686.P18194292185158059718

`∑[abs(Δ[A109398(n)])]`
-/

namespace A111686.P18194292185158059718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111686.P18194292185158059718

/-! ## A111686.P4462797696021517664

`A109398(n+1)-1`
-/

namespace A111686.P4462797696021517664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109398 (n + 1) - 1

end

end A111686.P4462797696021517664

/-! ## A111686.P2496541278499233418

`record[Δ[A109398(A025581(n))]]`
-/

namespace A111686.P2496541278499233418
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109398 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111686.P2496541278499233418

/-! ## A111686.P2375599766546802352

`record[A109398(A008616(n))-1]`
-/

namespace A111686.P2375599766546802352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109398 (A008616 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A111686.P2375599766546802352

/-! ## A111686.P5405609968225272644

`Δ[A022983(n)+∑[A109398(n)]]`
-/

namespace A111686.P5405609968225272644
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022983 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A111686.P5405609968225272644

/-!
# A111687: Comprimorial(n): the product of the first n primes and the first n composite numbers.

The programs for A111687, there is no canonical definition to state claims against.
-/

/-! ## A111687.P9484137740245122059

`∏[A067563(n+1)]`
-/

namespace A111687.P9484137740245122059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111687.P9484137740245122059

/-! ## A111687.P17513530846495281491

`A093458(2*(n+1))`
-/

namespace A111687.P17513530846495281491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093458 (2 * (n + 1))

end

end A111687.P17513530846495281491

/-! ## A111687.P7076811279514179363

`A002110(n+1)*A036691(n+1)`
-/

namespace A111687.P7076811279514179363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 (n + 1) * A036691 (n + 1)

end

end A111687.P7076811279514179363

/-! ## A111687.P12999938815289215582

`∏[A000040(n+1)*A018252(n+2)]`
-/

namespace A111687.P12999938815289215582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A111687.P12999938815289215582

/-! ## A111687.P5702918835525907569

`∏[A008578(n+2)]*A036691(n+1)`
-/

namespace A111687.P5702918835525907569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A036691 (n + 1)

end

end A111687.P5702918835525907569

/-!
# A111688: Primes and composite numbers alternately in increasing order.

The programs for A111688, the canonical program `A111688.P14076338886946641188` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111688 has offset 1).

The definition of A111688 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111688.P3517421005251612142

`p?[or(1, n)]-floor(cos(2)^n)`
-/

namespace A111688.P3517421005251612142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊Real.cos (2 : ℝ) ^ n⌋

end

end A111688.P3517421005251612142

namespace A111688

/-- `p?[or(1, n)]-floor(cos(2)^n)` -/
def P3517421005251612142.Spec : Prop :=
  ∀ n, P3517421005251612142.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P6256011760487927239

`p?[or(1, n)]-floor(tan(3)^n)`
-/

namespace A111688.P6256011760487927239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊Real.tan (3 : ℝ) ^ n⌋

end

end A111688.P6256011760487927239

namespace A111688

/-- `p?[or(1, n)]-floor(tan(3)^n)` -/
def P6256011760487927239.Spec : Prop :=
  ∀ n, P6256011760487927239.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P11125473617571189360

`p?[or(1, n)]-floor(cot(2)^n)`
-/

namespace A111688.P11125473617571189360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - ⌊Real.cot (2 : ℝ) ^ n⌋

end

end A111688.P11125473617571189360

namespace A111688

/-- `p?[or(1, n)]-floor(cot(2)^n)` -/
def P11125473617571189360.Spec : Prop :=
  ∀ n, P11125473617571189360.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P10030965128302741725

`∑[A211005(n+1)]+1`
-/

namespace A111688.P10030965128302741725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A111688.P10030965128302741725

namespace A111688

/-- `∑[A211005(n+1)]+1` -/
def P10030965128302741725.Spec : Prop :=
  ∀ n, P10030965128302741725.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P14076338886946641188

`A093515(A065475(n+1))`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A111688

/-- `A093515(A065475(n+1))` -/
def P14076338886946641188.Spec : Prop :=
  ∀ n, P14076338886946641188.a n = A111688 (n + 1)

theorem P14076338886946641188.correct : P14076338886946641188.Spec := by
  intro n
  simp only [A111688, Nat.add_sub_cancel]

end A111688

/-! ## A111688.P10193892439899907930

`A093515(n+2)-A010051(2*(n+1))`
-/

namespace A111688.P10193892439899907930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 2) - A010051 (2 * (n + 1))

end

end A111688.P10193892439899907930

namespace A111688

/-- `A093515(n+2)-A010051(2*(n+1))` -/
def P10193892439899907930.Spec : Prop :=
  ∀ n, P10193892439899907930.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P11372444226997612910

`A093515(A181440(n+2))`
-/

namespace A111688.P11372444226997612910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A181440 (n + 2)).toNat

end

end A111688.P11372444226997612910

namespace A111688

/-- `A093515(A181440(n+2))` -/
def P11372444226997612910.Spec : Prop :=
  ∀ n, P11372444226997612910.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P3829033461898940713

`A093515(A184985(n+2))`
-/

namespace A111688.P3829033461898940713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A184985 (n + 2)).toNat

end

end A111688.P3829033461898940713

namespace A111688

/-- `A093515(A184985(n+2))` -/
def P3829033461898940713.Spec : Prop :=
  ∀ n, P3829033461898940713.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P8465503826811878308

`A093515(A114112(2*n+1)-n)`
-/

namespace A111688.P8465503826811878308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (A114112 (2 * n + 1) - (n : ℤ)).toNat

end

end A111688.P8465503826811878308

namespace A111688

/-- `A093515(A114112(2*n+1)-n)` -/
def P8465503826811878308.Spec : Prop :=
  ∀ n, P8465503826811878308.a n = A111688 (n + 1)

end A111688

/-! ## A111688.P3531506101481394782

`∩[A083792(n+1), A093515(n+1)]`
-/

namespace A111688.P3531506101481394782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083792 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111688.P3531506101481394782

namespace A111688

/-- `∩[A083792(n+1), A093515(n+1)]` -/
def P3531506101481394782.Spec : Prop :=
  ∀ n, (P3531506101481394782.a n : ℤ) = A111688 (n + 1)

end A111688

/-! ## A111688.P1903783986143098999

`∩[A047263(n+1), A093515(n+1)]`
-/

namespace A111688.P1903783986143098999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111688.P1903783986143098999

namespace A111688

/-- `∩[A047263(n+1), A093515(n+1)]` -/
def P1903783986143098999.Spec : Prop :=
  ∀ n, (P1903783986143098999.a n : ℤ) = A111688 (n + 1)

end A111688

/-! ## A111688.P13177201719917462179

`∩[A083794(n+1), A093515(n+1)]`
-/

namespace A111688.P13177201719917462179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111688.P13177201719917462179

namespace A111688

/-- `∩[A083794(n+1), A093515(n+1)]` -/
def P13177201719917462179.Spec : Prop :=
  ∀ n, (P13177201719917462179.a n : ℤ) = A111688 (n + 1)

end A111688

/-! ## A111688.P8615227258489754183

`∩[A093515(n+1), A183301(n+1)]`
-/

namespace A111688.P8615227258489754183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111688.P8615227258489754183

namespace A111688

/-- `∩[A093515(n+1), A183301(n+1)]` -/
def P8615227258489754183.Spec : Prop :=
  ∀ n, (P8615227258489754183.a n : ℤ) = A111688 (n + 1)

end A111688

/-! ## A111688.P6164250811159170734

`∩[A093515(n+1), A376919(n)]`
-/

namespace A111688.P6164250811159170734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376919 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A111688.P6164250811159170734

namespace A111688

/-- `∩[A093515(n+1), A376919(n)]` -/
def P6164250811159170734.Spec : Prop :=
  ∀ n, (P6164250811159170734.a n : ℤ) = A111688 (n + 1)

end A111688

/-! ## A111688.P5150086154315910897

`A326178(A173919(n+2))`
-/

namespace A111688.P5150086154315910897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (A173919 (n + 2)).toNat

end

end A111688.P5150086154315910897

namespace A111688

/-- `A326178(A173919(n+2))` -/
def P5150086154315910897.Spec : Prop :=
  ∀ n, P5150086154315910897.a n = A111688 (n + 1)

end A111688

/-!
# A111690: 

The programs for A111690, there is no canonical definition to state claims against.
-/

/-! ## A111690.P885481296940819407

`A095199(∑[ceil(A103379(n+1)/2)])`
-/

namespace A111690.P885481296940819407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A103379 (n + 1) : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095199 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A111690.P885481296940819407

/-! ## A111690.P6068657463444636171

`A095199(n+1)+A002265(A110656(n))`
-/

namespace A111690.P6068657463444636171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095199 (n + 1) + A002265 (A110656 n).toNat

end

end A111690.P6068657463444636171

/-! ## A111690.P2718381642021670053

`A151934(A016789(n))+A095199(n+1)`
-/

namespace A111690.P2718381642021670053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A016789 n).toNat + A095199 (n + 1)

end

end A111690.P2718381642021670053

/-! ## A111690.P16653391493540432176

`A151934(A095181(n+1))+A095199(n+1)`
-/

namespace A111690.P16653391493540432176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 (A095181 (n + 1)).toNat + A095199 (n + 1)

end

end A111690.P16653391493540432176

/-! ## A111690.P10112235859373054854

`A005169(A280454(n+4))*A095199(n+1)`
-/

namespace A111690.P10112235859373054854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005169 (A280454 (n + 4)).toNat * A095199 (n + 1)

end

end A111690.P10112235859373054854

/-!
# A111693: a(n) = nextprime((2*n-1)^2) for n >= 2, a(1) = 3.

The programs for A111693, the canonical program `A111693.P13823889226538534485` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111693 has offset 1).

The definition of A111693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111693.P13823889226538534485

`or(1, A007491(Δ[n²]))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A111693

/-- `or(1, A007491(Δ[n²]))` -/
def P13823889226538534485.Spec : Prop :=
  ∀ n, P13823889226538534485.a n = A111693 (n + 1)

theorem P13823889226538534485.correct : P13823889226538534485.Spec := by
  intro n
  simp only [A111693, Nat.add_sub_cancel]

end A111693

/-! ## A111693.P1329572566045775842

`A007491(2*n+1)+A000007(n)`
-/

namespace A111693.P1329572566045775842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (2 * n + 1) + A000007 n

end

end A111693.P1329572566045775842

namespace A111693

/-- `A007491(2*n+1)+A000007(n)` -/
def P1329572566045775842.Spec : Prop :=
  ∀ n, P1329572566045775842.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P13836095565755913297

`A176723(A037445(n+1))+A007491(2*n+1)`
-/

namespace A111693.P13836095565755913297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176723 (A037445 (n + 1)).toNat + A007491 (2 * n + 1)

end

end A111693.P13836095565755913297

namespace A111693

/-- `A176723(A037445(n+1))+A007491(2*n+1)` -/
def P13836095565755913297.Spec : Prop :=
  ∀ n, P13836095565755913297.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P9323778427002391597

`A007814(A000040(n+1))+A007491(2*n+1)`
-/

namespace A111693.P9323778427002391597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A000040 (n + 1)).toNat + A007491 (2 * n + 1)

end

end A111693.P9323778427002391597

namespace A111693

/-- `A007814(A000040(n+1))+A007491(2*n+1)` -/
def P9323778427002391597.Spec : Prop :=
  ∀ n, P9323778427002391597.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P17355559978790488589

`A214263(A000040(3*n+4))+A007491(2*n+1)`
-/

namespace A111693.P17355559978790488589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A000040 (3 * n + 4)).toNat + A007491 (2 * n + 1)

end

end A111693.P17355559978790488589

namespace A111693

/-- `A214263(A000040(3*n+4))+A007491(2*n+1)` -/
def P17355559978790488589.Spec : Prop :=
  ∀ n, P17355559978790488589.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P4988760175514562612

`A151800(∑[8*n]+2)`
-/

namespace A111693.P4988760175514562612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A111693.P4988760175514562612

namespace A111693

/-- `A151800(∑[8*n]+2)` -/
def P4988760175514562612.Spec : Prop :=
  ∀ n, P4988760175514562612.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P15448874469925164985

`A007814(A007491(n+1))+A007491(2*n+1)`
-/

namespace A111693.P15448874469925164985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A007491 (n + 1)).toNat + A007491 (2 * n + 1)

end

end A111693.P15448874469925164985

namespace A111693

/-- `A007814(A007491(n+1))+A007491(2*n+1)` -/
def P15448874469925164985.Spec : Prop :=
  ∀ n, P15448874469925164985.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P1841764648711163165

`A060264(∑[4*n]+1)`
-/

namespace A111693.P1841764648711163165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060264 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A111693.P1841764648711163165

namespace A111693

/-- `A060264(∑[4*n]+1)` -/
def P1841764648711163165.Spec : Prop :=
  ∀ n, P1841764648711163165.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P3902592238076466225

`A070801(A151800((2*n+1)²))`
-/

namespace A111693.P3902592238076466225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070801 (A151800 ((2 * n + 1) ^ 2)).toNat

end

end A111693.P3902592238076466225

namespace A111693

/-- `A070801(A151800((2*n+1)²))` -/
def P3902592238076466225.Spec : Prop :=
  ∀ n, P3902592238076466225.a n = A111693 (n + 1)

end A111693

/-! ## A111693.P10269511704599198171

`A007918(Δ[n²]²+2)`
-/

namespace A111693.P10269511704599198171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 + 2).toNat

end

end A111693.P10269511704599198171

namespace A111693

/-- `A007918(Δ[n²]²+2)` -/
def P10269511704599198171.Spec : Prop :=
  ∀ n, P10269511704599198171.a n = A111693 (n + 1)

end A111693

/-!
# A111694: a(1) = 1+2-3 = 0, a(2) = 4+5+6-7 = 8, a(3) = 8+9+10+11-12 = 26, a(4) = 13+14+15+16+17-18 = 57, ...

The programs for A111694, the canonical program `A111694.P3807105918273747888` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111694 has offset 1).

The definition of A111694 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111694.P3807105918273747888

`n*(∑[n+3]+1)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111694

/-- `n*(∑[n+3]+1)` -/
def P3807105918273747888.Spec : Prop :=
  ∀ n, (P3807105918273747888.a n : ℤ) = A111694 (n + 1)

theorem P3807105918273747888.correct : P3807105918273747888.Spec := by
  intro n
  simp only [A111694, Nat.add_sub_cancel]

end A111694

/-! ## A111694.P6218640098714680051

`∑[∑[a(n-1)+3]]` with `a(0)=0, a(1)=8, a(2)=10`
-/

namespace A111694.P6218640098714680051
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 8, 10] fun n f2 =>
  f2 (n - 1) + 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111694.P6218640098714680051

namespace A111694

/-- `∑[∑[a(n-1)+3]]` -/
def P6218640098714680051.Spec : Prop :=
  ∀ n, (P6218640098714680051.a n : ℤ) = A111694 (n + 1)

end A111694

/-! ## A111694.P4269531410648567537

`n*C(n+4, 2)-2*n`
-/

namespace A111694.P4269531410648567537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.choose (n + 4) 2 : ℤ) - (2 * n : ℤ)

end

end A111694.P4269531410648567537

namespace A111694

/-- `n*C(n+4, 2)-2*n` -/
def P4269531410648567537.Spec : Prop :=
  ∀ n, P4269531410648567537.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P4380828124176434074

`n*(C(n+3, 2)+n)+n`
-/

namespace A111694.P4380828124176434074
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.choose (n + 3) 2 + n) + n

end

end A111694.P4380828124176434074

namespace A111694

/-- `n*(C(n+3, 2)+n)+n` -/
def P4380828124176434074.Spec : Prop :=
  ∀ n, (P4380828124176434074.a n : ℤ) = A111694 (n + 1)

end A111694

/-! ## A111694.P9289686329657374043

`n-n*∑[a(n-1)-1]` with `a(0)=-3`
-/

namespace A111694.P9289686329657374043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A111694.P9289686329657374043

namespace A111694

/-- `n-n*∑[a(n-1)-1]` -/
def P9289686329657374043.Spec : Prop :=
  ∀ n, P9289686329657374043.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P6594788001987893596

`∑[A059845(n)]+n`
-/

namespace A111694.P6594788001987893596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A111694.P6594788001987893596

namespace A111694

/-- `∑[A059845(n)]+n` -/
def P6594788001987893596.Spec : Prop :=
  ∀ n, P6594788001987893596.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P3515393150604038239

`A393327(n)-2*n`
-/

namespace A111694.P3515393150604038239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393327 n - (2 * n : ℤ)

end

end A111694.P3515393150604038239

namespace A111694

/-- `A393327(n)-2*n` -/
def P3515393150604038239.Spec : Prop :=
  ∀ n, P3515393150604038239.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P6406072451300752054

`∑[A140673(n)]-n²`
-/

namespace A111694.P6406072451300752054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140673 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A111694.P6406072451300752054

namespace A111694

/-- `∑[A140673(n)]-n²` -/
def P6406072451300752054.Spec : Prop :=
  ∀ n, P6406072451300752054.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P16534943682855734949

`3*A006503(n)-n²`
-/

namespace A111694.P16534943682855734949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006503 n - (n ^ 2 : ℤ)

end

end A111694.P16534943682855734949

namespace A111694

/-- `3*A006503(n)-n²` -/
def P16534943682855734949.Spec : Prop :=
  ∀ n, P16534943682855734949.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P7417931169579718644

`A154560(n)+∑[n-1]`
-/

namespace A111694.P7417931169579718644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154560 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111694.P7417931169579718644

namespace A111694

/-- `A154560(n)+∑[n-1]` -/
def P7417931169579718644.Spec : Prop :=
  ∀ n, P7417931169579718644.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P1017174496072322591

`∑[A140091(n)+n]+n`
-/

namespace A111694.P1017174496072322591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140091 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A111694.P1017174496072322591

namespace A111694

/-- `∑[A140091(n)+n]+n` -/
def P1017174496072322591.Spec : Prop :=
  ∀ n, P1017174496072322591.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P15741996508333548819

`∑[n]+A267370(n)+n`
-/

namespace A111694.P15741996508333548819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A267370 n + (n : ℤ))

end

end A111694.P15741996508333548819

namespace A111694

/-- `∑[n]+A267370(n)+n` -/
def P15741996508333548819.Spec : Prop :=
  ∀ n, P15741996508333548819.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P8704643309643833382

`∑[A140672(n)-n]+n`
-/

namespace A111694.P8704643309643833382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140672 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A111694.P8704643309643833382

namespace A111694

/-- `∑[A140672(n)-n]+n` -/
def P8704643309643833382.Spec : Prop :=
  ∀ n, P8704643309643833382.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P5367361131981146789

`∑[n]*A020715(n)+n`
-/

namespace A111694.P5367361131981146789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A020715 n + (n : ℤ)

end

end A111694.P5367361131981146789

namespace A111694

/-- `∑[n]*A020715(n)+n` -/
def P5367361131981146789.Spec : Prop :=
  ∀ n, P5367361131981146789.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P17820395462344817324

`A140676(n)+n*∑[n]`
-/

namespace A111694.P17820395462344817324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140676 n + ((n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ)

end

end A111694.P17820395462344817324

namespace A111694

/-- `A140676(n)+n*∑[n]` -/
def P17820395462344817324.Spec : Prop :=
  ∀ n, P17820395462344817324.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P17071867927548580050

`A162260(n+1)-(n+2)`
-/

namespace A111694.P17071867927548580050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162260 (n + 1) - (n + 2 : ℤ)

end

end A111694.P17071867927548580050

namespace A111694

/-- `A162260(n+1)-(n+2)` -/
def P17071867927548580050.Spec : Prop :=
  ∀ n, P17071867927548580050.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P18220642522930566326

`(n+2)*A055998(n)-n`
-/

namespace A111694.P18220642522930566326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A055998 n - (n : ℤ)

end

end A111694.P18220642522930566326

namespace A111694

/-- `(n+2)*A055998(n)-n` -/
def P18220642522930566326.Spec : Prop :=
  ∀ n, P18220642522930566326.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P8194991880314858744

`∑[A133694(n+1)+n]-1`
-/

namespace A111694.P8194991880314858744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133694 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111694.P8194991880314858744

namespace A111694

/-- `∑[A133694(n+1)+n]-1` -/
def P8194991880314858744.Spec : Prop :=
  ∀ n, P8194991880314858744.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P223083790954129832

`A117560(n+2)+∑[n-2]`
-/

namespace A111694.P223083790954129832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117560 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A111694.P223083790954129832

namespace A111694

/-- `A117560(n+2)+∑[n-2]` -/
def P223083790954129832.Spec : Prop :=
  ∀ n, P223083790954129832.a n = A111694 (n + 1)

end A111694

/-! ## A111694.P2104874358691938463

`∑[∑[A016777(n+1)]-3]-1`
-/

namespace A111694.P2104874358691938463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A111694.P2104874358691938463

namespace A111694

/-- `∑[∑[A016777(n+1)]-3]-1` -/
def P2104874358691938463.Spec : Prop :=
  ∀ n, P2104874358691938463.a n = A111694 (n + 1)

end A111694

/-!
# A111695: a(n) = C(n,a)*C(n,b)*C(n,c)... where n = abc... are the decimal digits of n.

The programs for A111695, the canonical program `A111695.P861836404526729402` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A111695 has offset 1).

The definition of A111695 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5998 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A111695.P861836404526729402

`∏{digits}[n+1, C(n+1, #)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A111695

/-- `∏{digits}[n+1, C(n+1, #)]` -/
def P861836404526729402.Spec : Prop :=
  ∀ n, (P861836404526729402.a n : ℤ) = A111695 (n + 1)

theorem P861836404526729402.correct : P861836404526729402.Spec := by
  intro n
  simp only [A111695, Nat.add_sub_cancel]

end A111695

/-! ## A111695.P2786106575393134619

`(n+1)^and(dr(2*n+1)!, a(n-1))` with `a(0)=1`
-/

namespace A111695.P2786106575393134619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ Nat.land (Nat.factorial (SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ))) (a (n - 1))

end

end A111695.P2786106575393134619

namespace A111695

/-- `(n+1)^and(dr(2*n+1)!, a(n-1))` -/
def P2786106575393134619.Spec : Prop :=
  ∀ n, (P2786106575393134619.a n : ℤ) = A111695 (n + 1)

end A111695

/-! ## A111695.P9355060015213364228

`(n+1)^Δ[A185238(3*n)]`
-/

namespace A111695.P9355060015213364228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (3 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A111695.P9355060015213364228

namespace A111695

/-- `(n+1)^Δ[A185238(3*n)]` -/
def P9355060015213364228.Spec : Prop :=
  ∀ n, P9355060015213364228.a n = (A111695 (n + 1) : ℚ)

end A111695

/-! ## A111695.P7193396288004654285

`C(n, A145540(2*n+5))+1`
-/

namespace A111695.P7193396288004654285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (A145540 (2 * n + 5)).toNat + 1

end

end A111695.P7193396288004654285

namespace A111695

/-- `C(n, A145540(2*n+5))+1` -/
def P7193396288004654285.Spec : Prop :=
  ∀ n, (P7193396288004654285.a n : ℤ) = A111695 (n + 1)

end A111695

/-! ## A111695.P832075412676683996

`(n+1)^∑[A288117(n+1)²]`
-/

namespace A111695.P832075412676683996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288117 (n + 1) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A111695.P832075412676683996

namespace A111695

/-- `(n+1)^∑[A288117(n+1)²]` -/
def P832075412676683996.Spec : Prop :=
  ∀ n, P832075412676683996.a n = (A111695 (n + 1) : ℚ)

end A111695

/-!
# A111696: a(n) = C(n,a)+C(n,b)+C(n,c)... where n = abc... are the decimal digits of n.

The programs for A111696, there is no canonical definition to state claims against.
-/

/-! ## A111696.P13441769989071751976

`∑{digits}[n, C(n, #)]`
-/

namespace A111696.P13441769989071751976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose n x).sum

end

end A111696.P13441769989071751976

/-! ## A111696.P10630080681743456407

`A077462(A283875(n)^A319471(n))`
-/

namespace A111696.P10630080681743456407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (SequenceMachineLib.roundAway ((A283875 n : ℚ) ^ (A319471 n : ℤ))).toNat

end

end A111696.P10630080681743456407

/-! ## A111696.P2531220141751504078

`A240863(A087897(2*n+3)^A259195(n))`
-/

namespace A111696.P2531220141751504078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240863 (SequenceMachineLib.roundAway ((A087897 (2 * n + 3) : ℚ) ^ (A259195 n : ℤ))).toNat

end

end A111696.P2531220141751504078

/-! ## A111696.P14698412832731681896

`C(A068861(n+4), A076142(A026392(n+1)))`
-/

namespace A111696.P14698412832731681896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A068861 (n + 4)).toNat (A076142 (A026392 (n + 1)).toNat).toNat

end

end A111696.P14698412832731681896

