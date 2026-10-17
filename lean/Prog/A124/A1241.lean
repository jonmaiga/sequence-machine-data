import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

/-!
# A124102: a(n) = C(2n,n)*Bell(n).

The programs for A124102, there is no canonical definition to state claims against.
-/

/-! ## A124102.P15208367835901130389

`(n+1)*A064299(n)`
-/

namespace A124102.P15208367835901130389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A064299 n

end

end A124102.P15208367835901130389

/-! ## A124102.P11679557066897834341

`C(2*n, n)*A000110(n)`
-/

namespace A124102.P11679557066897834341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * A000110 n

end

end A124102.P11679557066897834341

/-! ## A124102.P6260842429312982108

`A000110(n)*A000984(n)`
-/

namespace A124102.P6260842429312982108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A000984 n

end

end A124102.P6260842429312982108

/-! ## A124102.P8936188905824260762

`sqrt(A002894(n))*A000110(n)`
-/

namespace A124102.P8936188905824260762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A000110 n : ℝ)

end

end A124102.P8936188905824260762

/-! ## A124102.P2190929471009183106

`A000984(n)*A011971(∑[n])`
-/

namespace A124102.P2190929471009183106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124102.P2190929471009183106

/-! ## A124102.P8351211163382050270

`Δ[A005001(n)]*A000984(n)`
-/

namespace A124102.P8351211163382050270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000984 n

end

end A124102.P8351211163382050270

/-! ## A124102.P1877275585606421721

`A000110(n)*A001405(2*n)`
-/

namespace A124102.P1877275585606421721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A001405 (2 * n)

end

end A124102.P1877275585606421721

/-! ## A124102.P1667017928978564733

`A000110(n)*A129383(2*n)`
-/

namespace A124102.P1667017928978564733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n * A129383 (2 * n)

end

end A124102.P1667017928978564733

/-! ## A124102.P15525135446141594825

`A007318(∑[4*n])*A000110(n)`
-/

namespace A124102.P15525135446141594825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A000110 n

end

end A124102.P15525135446141594825

/-! ## A124102.P2157067867978927438

`(n+1)*A000108(n)*A011971(∑[n])`
-/

namespace A124102.P2157067867978927438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n * A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124102.P2157067867978927438

/-!
# A124103: C(2*n,n)*stirling2(2*n,n).

The programs for A124103, there is no canonical definition to state claims against.
-/

/-! ## A124103.P5669925388746022331

`(n+1)*A390277(n)`
-/

namespace A124103.P5669925388746022331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390277 n

end

end A124103.P5669925388746022331

/-! ## A124103.P2867951121825271733

`A000984(n)*A007820(n)`
-/

namespace A124103.P2867951121825271733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A007820 n

end

end A124103.P2867951121825271733

/-! ## A124103.P2888821777718988694

`A000984(n)*A343278(2*n)`
-/

namespace A124103.P2888821777718988694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A343278 (2 * n)

end

end A124103.P2888821777718988694

/-! ## A124103.P2507234070958084478

`A000984(n)*A343279(2*n)`
-/

namespace A124103.P2507234070958084478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A343279 (2 * n)

end

end A124103.P2507234070958084478

/-! ## A124103.P8026968742877519554

`A090683(∑[4*n])`
-/

namespace A124103.P8026968742877519554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090683 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124103.P8026968742877519554

/-!
# A124104: Sum of the Rand distance between all pairs of set partitions of {1, 2, ... n}.

The programs for A124104, there is no canonical definition to state claims against.
-/

/-! ## A124104.P14782105912474279750

`2*A193317(n+1)`
-/

namespace A124104.P14782105912474279750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193317 (n + 1)

end

end A124104.P14782105912474279750

/-! ## A124104.P10903750442809329834

`Δ[2*∑[A193317(n)]]`
-/

namespace A124104.P10903750442809329834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A124104.P10903750442809329834

/-! ## A124104.P14265220189192930525

`(Δ[A070071(n)]-A000110(n))*A070071(n)`
-/

namespace A124104.P14265220189192930525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070071 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - A000110 n) * A070071 n

end

end A124104.P14265220189192930525

/-! ## A124104.P3456621263173421492

`A193317(n+1)/2^A008683(A038888(n+1))`
-/

namespace A124104.P3456621263173421492
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193317 (n + 1) : ℚ) / (2 : ℚ) ^ (A008683 (A038888 (n + 1)).toNat : ℤ)

end

end A124104.P3456621263173421492

/-! ## A124104.P8211134271081351928

`(A070071(n+1)-A052889(n+1))*A070071(n)`
-/

namespace A124104.P8211134271081351928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A070071 (n + 1) - A052889 (n + 1)) * A070071 n

end

end A124104.P8211134271081351928

/-!
# A124105: Practical Fibonacci numbers.

The programs for A124105, there is no canonical definition to state claims against.
-/

/-! ## A124105.P523224849690697756

`A000045(eq[A087890(n+4), A287841(n+1)])`
-/

namespace A124105.P523224849690697756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087890 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287841 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124105.P523224849690697756

/-! ## A124105.P8620573464252575056

`A103609(record[Δ[A182633(n)]])`
-/

namespace A124105.P8620573464252575056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182633 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124105.P8620573464252575056

/-! ## A124105.P16186072028990171349

`A117647(record[Δ[A182635(n)]])`
-/

namespace A124105.P16186072028990171349
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182635 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117647 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124105.P16186072028990171349

/-!
# A124106: Octagonal numbers equal to S*(3S - 2) with 3S - 2 = k^2 and S semiprime.

The programs for A124106, there is no canonical definition to state claims against.
-/

/-! ## A124106.P10831906004208834892

`A112392(n+1)*A112393(n+1)`
-/

namespace A124106.P10831906004208834892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112392 (n + 1) * A112393 (n + 1)

end

end A124106.P10831906004208834892

/-! ## A124106.P6542256716218506344

`A000567(A112393(n+1))`
-/

namespace A124106.P6542256716218506344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A112393 (n + 1)).toNat

end

end A124106.P6542256716218506344

/-! ## A124106.P13549135070076597305

`A130205(A112392(n+1))`
-/

namespace A124106.P13549135070076597305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130205 (A112392 (n + 1)).toNat

end

end A124106.P13549135070076597305

/-! ## A124106.P9522931784235543885

`A229154(A112392(n+1)+1)`
-/

namespace A124106.P9522931784235543885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229154 (A112392 (n + 1) + 1).toNat

end

end A124106.P9522931784235543885

/-! ## A124106.P414975339587902716

`A001082(2*A112393(n+1))`
-/

namespace A124106.P414975339587902716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001082 (2 * A112393 (n + 1)).toNat

end

end A124106.P414975339587902716

/-!
# A124107: Numbers n such that n is the sum of the augmenting factorials of the digits of n, e.g. 733 = 7 + 3! + (3!)!.

The programs for A124107, there is no canonical definition to state claims against.
-/

/-! ## A124107.P11072432559482566496

`∑[(∑[16*n]+4)^floor(n/9)]`
-/

namespace A124107.P11072432559482566496
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16 * n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 4 : ℕ) : ℚ) ^ (⌊(n : ℚ) / 9⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124107.P11072432559482566496

/-! ## A124107.P9206744759248598

`and(∑[2^n], A032565(n+1))`
-/

namespace A124107.P9206744759248598
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A032565 (n + 1))

end

end A124107.P9206744759248598

/-! ## A124107.P12485324857275862573

`abs(C(A024897(n+1), 37)-n)+1`
-/

namespace A124107.P12485324857275862573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (A024897 (n + 1)).toNat 37 : ℤ) - (n : ℤ)| + 1

end

end A124107.P12485324857275862573

/-! ## A124107.P3821864049844701862

`abs(A257275(n+1)-2-n)+n`
-/

namespace A124107.P3821864049844701862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A257275 (n + 1) - 2 - (n : ℤ)| + (n : ℤ)

end

end A124107.P3821864049844701862

/-! ## A124107.P18034152295909997626

`A032555(n+1)%((n+1)^3+5)`
-/

namespace A124107.P18034152295909997626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032555 (n + 1)) ((n + 1) ^ 3 + 5 : ℤ)

end

end A124107.P18034152295909997626

/-!
# A124108: Replace each 1 with 10 in binary representation of n.

The programs for A124108, the canonical program `A124108.P14351945421976491590` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124108 has offset 0).

The definition of A124108 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124108.P14351945421976491590

`(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124108

/-- `(3-(-1)^n)*a(floor(n/2))+1-(-1)^n` -/
def P14351945421976491590.Spec : Prop :=
  ∀ n, P14351945421976491590.a n = A124108 n

theorem P14351945421976491590.correct : P14351945421976491590.Spec := by
  intro n
  simp only [A124108]

end A124108

/-! ## A124108.P13682571685434969473

`2*A048678(n)`
-/

namespace A124108.P13682571685434969473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048678 n

end

end A124108.P13682571685434969473

namespace A124108

/-- `2*A048678(n)` -/
def P13682571685434969473.Spec : Prop :=
  ∀ n, P13682571685434969473.a n = A124108 n

end A124108

/-! ## A124108.P5405701490832889322

`2/3*A088698(n)`
-/

namespace A124108.P5405701490832889322
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A088698 n : ℚ)

end

end A124108.P5405701490832889322

namespace A124108

/-- `2/3*A088698(n)` -/
def P5405701490832889322.Spec : Prop :=
  ∀ n, P5405701490832889322.a n = (A124108 n : ℚ)

end A124108

/-! ## A124108.P13753722128921659231

`A088698(n)-A048678(n)`
-/

namespace A124108.P13753722128921659231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088698 n - A048678 n

end

end A124108.P13753722128921659231

namespace A124108

/-- `A088698(n)-A048678(n)` -/
def P13753722128921659231.Spec : Prop :=
  ∀ n, P13753722128921659231.a n = A124108 n

end A124108

/-! ## A124108.P9759792893450165748

`and(A088698(n), A196168(n))`
-/

namespace A124108.P9759792893450165748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A088698 n) (A196168 n)

end

end A124108.P9759792893450165748

namespace A124108

/-- `and(A088698(n), A196168(n))` -/
def P9759792893450165748.Spec : Prop :=
  ∀ n, P9759792893450165748.a n = A124108 n

end A124108

/-! ## A124108.P1389584536967403427

`A048678(eq[0, val(n+1, 2)])`
-/

namespace A124108.P1389584536967403427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124108.P1389584536967403427

namespace A124108

/-- `A048678(eq[0, val(n+1, 2)])` -/
def P1389584536967403427.Spec : Prop :=
  ∀ n, P1389584536967403427.a n = A124108 n

end A124108

/-! ## A124108.P2125583536456903053

`A048678(eq[1, xor(n, n+1)])`
-/

namespace A124108.P2125583536456903053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A124108.P2125583536456903053

namespace A124108

/-- `A048678(eq[1, xor(n, n+1)])` -/
def P2125583536456903053.Spec : Prop :=
  ∀ n, P2125583536456903053.a n = A124108 n

end A124108

/-! ## A124108.P12752697923042761679

`A048678(A005843(n))`
-/

namespace A124108.P12752697923042761679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A005843 n).toNat

end

end A124108.P12752697923042761679

namespace A124108

/-- `A048678(A005843(n))` -/
def P12752697923042761679.Spec : Prop :=
  ∀ n, P12752697923042761679.a n = A124108 n

end A124108

/-! ## A124108.P11280423163047330746

`A048678(A008585(n)-n)`
-/

namespace A124108.P11280423163047330746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A008585 n - (n : ℤ)).toNat

end

end A124108.P11280423163047330746

namespace A124108

/-- `A048678(A008585(n)-n)` -/
def P11280423163047330746.Spec : Prop :=
  ∀ n, P11280423163047330746.a n = A124108 n

end A124108

/-! ## A124108.P4060405085891978833

`A048678((A008585(n)+n)/2)`
-/

namespace A124108.P4060405085891978833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.roundAway ((A008585 n + (n : ℤ) : ℚ) / 2)).toNat

end

end A124108.P4060405085891978833

namespace A124108

/-- `A048678((A008585(n)+n)/2)` -/
def P4060405085891978833.Spec : Prop :=
  ∀ n, P4060405085891978833.a n = A124108 n

end A124108

/-! ## A124108.P14821438346179309144

`A048678(eq[0, A001222(and(n+1, -(n+1)))])`
-/

namespace A124108.P14821438346179309144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124108.P14821438346179309144

namespace A124108

/-- `A048678(eq[0, A001222(and(n+1, -(n+1)))])` -/
def P14821438346179309144.Spec : Prop :=
  ∀ n, P14821438346179309144.a n = A124108 n

end A124108

/-! ## A124108.P4928484652996724970

`A048678(eq[0, A001222(n+1-and(n, n+1))])`
-/

namespace A124108.P4928484652996724970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1 - Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A124108.P4928484652996724970

namespace A124108

/-- `A048678(eq[0, A001222(n+1-and(n, n+1))])` -/
def P4928484652996724970.Spec : Prop :=
  ∀ n, P4928484652996724970.a n = A124108 n

end A124108

/-! ## A124108.P6480329694086148272

`A048678(lt[n, Δ[A048678(n)]])`
-/

namespace A124108.P6480329694086148272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A124108.P6480329694086148272

namespace A124108

/-- `A048678(lt[n, Δ[A048678(n)]])` -/
def P6480329694086148272.Spec : Prop :=
  ∀ n, P6480329694086148272.a n = A124108 n

end A124108

/-! ## A124108.P14309905284663505925

`A048678(A056017(A056018(n+n)))`
-/

namespace A124108.P14309905284663505925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A056017 (A056018 (n + n)).toNat).toNat

end

end A124108.P14309905284663505925

namespace A124108

/-- `A048678(A056017(A056018(n+n)))` -/
def P14309905284663505925.Spec : Prop :=
  ∀ n, P14309905284663505925.a n = A124108 n

end A124108

/-! ## A124108.P16109236870358251738

`A022340(A048680(n))`
-/

namespace A124108.P16109236870358251738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (A048680 n).toNat

end

end A124108.P16109236870358251738

namespace A124108

/-- `A022340(A048680(n))` -/
def P16109236870358251738.Spec : Prop :=
  ∀ n, P16109236870358251738.a n = A124108 n

end A124108

/-! ## A124108.P10148202092616972398

`2*A003714(A074049(n+1)-1)`
-/

namespace A124108.P10148202092616972398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003714 (A074049 (n + 1) - 1).toNat

end

end A124108.P10148202092616972398

namespace A124108

/-- `2*A003714(A074049(n+1)-1)` -/
def P10148202092616972398.Spec : Prop :=
  ∀ n, P10148202092616972398.a n = A124108 n

end A124108

/-! ## A124108.P870937912424017741

`A048678(n)+A003714(A048680(n))`
-/

namespace A124108.P870937912424017741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 n + A003714 (A048680 n).toNat

end

end A124108.P870937912424017741

namespace A124108

/-- `A048678(n)+A003714(A048680(n))` -/
def P870937912424017741.Spec : Prop :=
  ∀ n, P870937912424017741.a n = A124108 n

end A124108

/-! ## A124108.P11952371338856061833

`A088698(n)-A003714(A048680(n))`
-/

namespace A124108.P11952371338856061833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088698 n - A003714 (A048680 n).toNat

end

end A124108.P11952371338856061833

namespace A124108

/-- `A088698(n)-A003714(A048680(n))` -/
def P11952371338856061833.Spec : Prop :=
  ∀ n, P11952371338856061833.a n = A124108 n

end A124108

/-! ## A124108.P4313364792042569936

`A003714(A048680(2*n))`
-/

namespace A124108.P4313364792042569936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A048680 (2 * n)).toNat

end

end A124108.P4313364792042569936

namespace A124108

/-- `A003714(A048680(2*n))` -/
def P4313364792042569936.Spec : Prop :=
  ∀ n, P4313364792042569936.a n = A124108 n

end A124108

/-! ## A124108.P14517305401946942758

`2*A379657(A005836(n+1))`
-/

namespace A124108.P14517305401946942758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A379657 (A005836 (n + 1)).toNat

end

end A124108.P14517305401946942758

namespace A124108

/-- `2*A379657(A005836(n+1))` -/
def P14517305401946942758.Spec : Prop :=
  ∀ n, P14517305401946942758.a n = A124108 n

end A124108

/-!
# A124109: Numbers whose abundance (A033880) or deficiency (A033879) is a semiprime number.

The programs for A124109, the canonical program `A124109.P18210988387390652645` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124109 has offset 1).

The definition of A124109 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1534 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124109.P18210988387390652645

`eq[2, ∑{e}[n-(∑{d}[n, #]-n), #]]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124109

/-- `eq[2, ∑{e}[n-(∑{d}[n, #]-n), #]]` -/
def P18210988387390652645.Spec : Prop :=
  ∀ n, (P18210988387390652645.a n : ℤ) = A124109 (n + 1)

theorem P18210988387390652645.correct : P18210988387390652645.Spec := by
  intro n
  simp only [A124109, Nat.add_sub_cancel]

end A124109

/-! ## A124109.P7485758511057281699

`eq[2, ∑{e}[A033879(n+1), #]]+1`
-/

namespace A124109.P7485758511057281699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A124109.P7485758511057281699

namespace A124109

/-- `eq[2, ∑{e}[A033879(n+1), #]]+1` -/
def P7485758511057281699.Spec : Prop :=
  ∀ n, (P7485758511057281699.a n : ℤ) = A124109 (n + 1)

end A124109

/-! ## A124109.P1847461185545728947

`eq[2, ∑{e}[A033880(n+1), #]]+1`
-/

namespace A124109.P1847461185545728947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A124109.P1847461185545728947

namespace A124109

/-- `eq[2, ∑{e}[A033880(n+1), #]]+1` -/
def P1847461185545728947.Spec : Prop :=
  ∀ n, (P1847461185545728947.a n : ℤ) = A124109 (n + 1)

end A124109

/-! ## A124109.P5485933767427646474

`eq[2, ∑{e}[A235796(n+1)+1, #]]+1`
-/

namespace A124109.P5485933767427646474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A124109.P5485933767427646474

namespace A124109

/-- `eq[2, ∑{e}[A235796(n+1)+1, #]]+1` -/
def P5485933767427646474.Spec : Prop :=
  ∀ n, (P5485933767427646474.a n : ℤ) = A124109 (n + 1)

end A124109

/-! ## A124109.P16730945061594307640

`eq[2, ∑{e}[A033879(A028310(n)), #]]`
-/

namespace A124109.P16730945061594307640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124109.P16730945061594307640

namespace A124109

/-- `eq[2, ∑{e}[A033879(A028310(n)), #]]` -/
def P16730945061594307640.Spec : Prop :=
  ∀ n, (P16730945061594307640.a n : ℤ) = A124109 (n + 1)

end A124109

/-!
# A124110: Primes of the form A124080 (10 times triangular numbers) +- 1.

The programs for A124110, there is no canonical definition to state claims against.
-/

/-! ## A124110.P9695928455561626443

`p?[A047201(A081351(n))]`
-/

namespace A124110.P9695928455561626443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A081351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124110.P9695928455561626443

/-! ## A124110.P9364233525429776462

`p?[A090771(A130404(n+1))]`
-/

namespace A124110.P9364233525429776462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (A130404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124110.P9364233525429776462

/-! ## A124110.P17164355636142948845

`p?[A202803(A008624(n))+n]`
-/

namespace A124110.P17164355636142948845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 (A008624 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124110.P17164355636142948845

/-! ## A124110.P15379304135434850399

`p?[A168668(A002264(n+1))+n]`
-/

namespace A124110.P15379304135434850399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 (A002264 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124110.P15379304135434850399

/-! ## A124110.P12373004050030429304

`p?[A124080(A004526(n))-(-1)^n]`
-/

namespace A124110.P12373004050030429304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124080 (A004526 n).toNat - (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124110.P12373004050030429304

/-!
# A124111: Primes with record large values of the second smallest positive primitive root.

The programs for A124111, there is no canonical definition to state claims against.
-/

/-! ## A124111.P13756117842259270818

`p?[or(∑[n], A349482(n+1))]`
-/

namespace A124111.P13756117842259270818
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) (A349482 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124111.P13756117842259270818

/-! ## A124111.P5126099016837755700

`A000040(∑[a(n-1)^n])` with `a(0)=3, a(1)=1, a(2)=1, a(3)=4, a(4)=2`
-/

namespace A124111.P5126099016837755700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1, 4, 2] fun n f1 =>
  f1 (n - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124111.P5126099016837755700

/-!
# A124114: Subsequence of primes in sequence b(n) = 2*prime(n) - prime(n+1) + 2 (A124115).

The programs for A124114, there is no canonical definition to state claims against.
-/

/-! ## A124114.P7117619726526138928

`p?[A124115(n+1)]`
-/

namespace A124114.P7117619726526138928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124114.P7117619726526138928

/-! ## A124114.P16944551392210554338

`p?[A062234(n+1)+2]`
-/

namespace A124114.P16944551392210554338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062234 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124114.P16944551392210554338

/-! ## A124114.P6902994094923645002

`p?[n+3-A347121(n+1)]`
-/

namespace A124114.P6902994094923645002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - A347121 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124114.P6902994094923645002

/-! ## A124114.P4423356180950846956

`filter[A124115(n+1), A010051(#)]`
-/

namespace A124114.P4423356180950846956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A124114.P4423356180950846956

/-! ## A124114.P1554116780620835712

`filter[A124115(n+1), A080339(#)]`
-/

namespace A124114.P1554116780620835712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A124114.P1554116780620835712

/-! ## A124114.P5071481123678221427

`filter[A124115(n+1), A080545(#)]`
-/

namespace A124114.P5071481123678221427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A124114.P5071481123678221427

/-! ## A124114.P10027808303531378785

`filter[A124115(n+1), A257531(#)]`
-/

namespace A124114.P10027808303531378785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A124114.P10027808303531378785

/-! ## A124114.P7512061459202503627

`filter[A124115(n+1), A323152(#)]`
-/

namespace A124114.P7512061459202503627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A124114.P7512061459202503627

/-! ## A124114.P581444606434738865

`filter[A124115(n+1), A323153(#)]`
-/

namespace A124114.P581444606434738865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A124114.P581444606434738865

/-! ## A124114.P3213772750772763746

`filter[A124115(n+1), A327861(#)]`
-/

namespace A124114.P3213772750772763746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124115 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A124114.P3213772750772763746

/-!
# A124115: a(n) = 2*prime(n) - prime(n+1) + 2.

The programs for A124115, the canonical program `A124115.P17459452921434440808` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124115 has offset 1).

The definition of A124115 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124115.P17459452921434440808

`A062234(n+1)+2`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124115

/-- `A062234(n+1)+2` -/
def P17459452921434440808.Spec : Prop :=
  ∀ n, P17459452921434440808.a n = A124115 (n + 1)

theorem P17459452921434440808.correct : P17459452921434440808.Spec := by
  intro n
  simp only [A124115, Nat.add_sub_cancel]

end A124115

/-! ## A124115.P2877593037659554205

`A147965(n+1)+A014692(n+1)`
-/

namespace A124115.P2877593037659554205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147965 (n + 1) + A014692 (n + 1)

end

end A124115.P2877593037659554205

namespace A124115

/-- `A147965(n+1)+A014692(n+1)` -/
def P2877593037659554205.Spec : Prop :=
  ∀ n, P2877593037659554205.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P13292862307222924105

`A052147(n+1)-A001223(n+1)`
-/

namespace A124115.P13292862307222924105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A001223 (n + 1)

end

end A124115.P13292862307222924105

namespace A124115

/-- `A052147(n+1)-A001223(n+1)` -/
def P13292862307222924105.Spec : Prop :=
  ∀ n, P13292862307222924105.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P17469134777477177154

`A008864(n+1)-A046933(n+1)`
-/

namespace A124115.P17469134777477177154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A046933 (n + 1)

end

end A124115.P17469134777477177154

namespace A124115

/-- `A008864(n+1)-A046933(n+1)` -/
def P17469134777477177154.Spec : Prop :=
  ∀ n, P17469134777477177154.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P10264755802924116483

`A098764(n+1)-A040976(n+1)`
-/

namespace A124115.P10264755802924116483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - A040976 (n + 1)

end

end A124115.P10264755802924116483

namespace A124115

/-- `A098764(n+1)-A040976(n+1)` -/
def P10264755802924116483.Spec : Prop :=
  ∀ n, P10264755802924116483.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P4380852588645162458

`A089241(n+1)-A065091(n+1)`
-/

namespace A124115.P4380852588645162458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089241 (n + 1) - A065091 (n + 1)

end

end A124115.P4380852588645162458

namespace A124115

/-- `A089241(n+1)-A065091(n+1)` -/
def P4380852588645162458.Spec : Prop :=
  ∀ n, P4380852588645162458.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P13087138716474193098

`A140777(n+1)-A118538(n+1)`
-/

namespace A124115.P13087138716474193098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140777 (n + 1) - A118538 (n + 1)

end

end A124115.P13087138716474193098

namespace A124115

/-- `A140777(n+1)-A118538(n+1)` -/
def P13087138716474193098.Spec : Prop :=
  ∀ n, P13087138716474193098.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P14978823423489478157

`A126199(n+1)%A052147(n+1)`
-/

namespace A124115.P14978823423489478157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126199 (n + 1)) (A052147 (n + 1))

end

end A124115.P14978823423489478157

namespace A124115

/-- `A126199(n+1)%A052147(n+1)` -/
def P14978823423489478157.Spec : Prop :=
  ∀ n, P14978823423489478157.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P17670911859906766431

`A286624(n+1)%A089241(n+1)`
-/

namespace A124115.P17670911859906766431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A286624 (n + 1)) (A089241 (n + 1))

end

end A124115.P17670911859906766431

namespace A124115

/-- `A286624(n+1)%A089241(n+1)` -/
def P17670911859906766431.Spec : Prop :=
  ∀ n, P17670911859906766431.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P16192859953286723637

`A008864(n+1)+1-A001223(n+1)`
-/

namespace A124115.P16192859953286723637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (1 - A001223 (n + 1))

end

end A124115.P16192859953286723637

namespace A124115

/-- `A008864(n+1)+1-A001223(n+1)` -/
def P16192859953286723637.Spec : Prop :=
  ∀ n, P16192859953286723637.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P17693129119961502230

`A000040(n+1)+1-A046933(n+1)`
-/

namespace A124115.P17693129119961502230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (1 - A046933 (n + 1))

end

end A124115.P17693129119961502230

namespace A124115

/-- `A000040(n+1)+1-A046933(n+1)` -/
def P17693129119961502230.Spec : Prop :=
  ∀ n, P17693129119961502230.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P52230151877399982

`A001223(n+1)+A107471(n+1)+2`
-/

namespace A124115.P52230151877399982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A107471 (n + 1) + 2)

end

end A124115.P52230151877399982

namespace A124115

/-- `A001223(n+1)+A107471(n+1)+2` -/
def P52230151877399982.Spec : Prop :=
  ∀ n, P52230151877399982.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P10262221177327382810

`A036263(n+1)+A096379(n+1)+2`
-/

namespace A124115.P10262221177327382810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1) + (A096379 (n + 1) + 2)

end

end A124115.P10262221177327382810

namespace A124115

/-- `A036263(n+1)+A096379(n+1)+2` -/
def P10262221177327382810.Spec : Prop :=
  ∀ n, P10262221177327382810.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P6202099145106281171

`A098764(n+1)-(A086801(n+1)+1)`
-/

namespace A124115.P6202099145106281171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) - (A086801 (n + 1) + 1)

end

end A124115.P6202099145106281171

namespace A124115

/-- `A098764(n+1)-(A086801(n+1)+1)` -/
def P6202099145106281171.Spec : Prop :=
  ∀ n, P6202099145106281171.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P16624354274857838604

`A065890(n+1)+A147965(n+1)+2`
-/

namespace A124115.P16624354274857838604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065890 (n + 1) + (A147965 (n + 1) + 2)

end

end A124115.P16624354274857838604

namespace A124115

/-- `A065890(n+1)+A147965(n+1)+2` -/
def P16624354274857838604.Spec : Prop :=
  ∀ n, P16624354274857838604.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P10882648172272256265

`A000040(n+1)+2-A001223(n+1)`
-/

namespace A124115.P10882648172272256265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (2 - A001223 (n + 1))

end

end A124115.P10882648172272256265

namespace A124115

/-- `A000040(n+1)+2-A001223(n+1)` -/
def P10882648172272256265.Spec : Prop :=
  ∀ n, P10882648172272256265.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P16443934348242818379

`A001748(n+1)+2-A001043(n+1)`
-/

namespace A124115.P16443934348242818379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001748 (n + 1) + (2 - A001043 (n + 1))

end

end A124115.P16443934348242818379

namespace A124115

/-- `A001748(n+1)+2-A001043(n+1)` -/
def P16443934348242818379.Spec : Prop :=
  ∀ n, P16443934348242818379.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P875962744141528671

`A006093(n+1)+2-A046933(n+1)`
-/

namespace A124115.P875962744141528671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (2 - A046933 (n + 1))

end

end A124115.P875962744141528671

namespace A124115

/-- `A006093(n+1)+2-A046933(n+1)` -/
def P875962744141528671.Spec : Prop :=
  ∀ n, P875962744141528671.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P14236678890293140313

`A098764(n+1)+2-A000040(n+1)`
-/

namespace A124115.P14236678890293140313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098764 (n + 1) + (2 - A000040 (n + 1))

end

end A124115.P14236678890293140313

namespace A124115

/-- `A098764(n+1)+2-A000040(n+1)` -/
def P14236678890293140313.Spec : Prop :=
  ∀ n, P14236678890293140313.a n = A124115 (n + 1)

end A124115

/-! ## A124115.P17175441714698232312

`A093667(n+1)+2-A031131(n+1)`
-/

namespace A124115.P17175441714698232312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093667 (n + 1) + (2 - A031131 (n + 1))

end

end A124115.P17175441714698232312

namespace A124115

/-- `A093667(n+1)+2-A031131(n+1)` -/
def P17175441714698232312.Spec : Prop :=
  ∀ n, P17175441714698232312.a n = A124115 (n + 1)

end A124115

/-!
# A124116: a(n) is the smallest positive integer such that a(n)+10^k is prime for 1 <= k <= n.

The programs for A124116, there is no canonical definition to state claims against.
-/

/-! ## A124116.P888914832703743744

`A202188(A059927(n))`
-/

namespace A124116.P888914832703743744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202188 (A059927 n).toNat

end

end A124116.P888914832703743744

/-!
# A124120: Number of nonisomorphic Steiner quadruple systems (SQS's) S(3,4,n) on n points.

The programs for A124120, there is no canonical definition to state claims against.
-/

/-! ## A124120.P6691058351363125406

`A051390(n+1)%floor(n-atan(n))!`
-/

namespace A124120.P6691058351363125406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051390 (n + 1)) (Nat.factorial ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋.toNat : ℤ)

end

end A124120.P6691058351363125406

/-! ## A124120.P3041836076302336348

`A051390(n+1)*A235043(n)`
-/

namespace A124120.P3041836076302336348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051390 (n + 1) * A235043 n

end

end A124120.P3041836076302336348

/-! ## A124120.P8070354699574534804

`A051390(n+1)%A000367(n)`
-/

namespace A124120.P8070354699574534804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051390 (n + 1)) (A000367 n)

end

end A124120.P8070354699574534804

/-! ## A124120.P15113338594271196364

`log2(A331128(n))*A051390(n+1)`
-/

namespace A124120.P15113338594271196364
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A331128 n : ℝ) * (A051390 (n + 1) : ℝ)

end

end A124120.P15113338594271196364

/-! ## A124120.P787463325164614610

`A051390(n+1)*A316824(∑[n])`
-/

namespace A124120.P787463325164614610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051390 (n + 1) * A316824 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124120.P787463325164614610

/-!
# A124121: Primes q which are the lesser of a double Wieferich prime pair. (List of known values of q in increasing order, without multiplicity.)

The programs for A124121, there is no canonical definition to state claims against.
-/

/-! ## A124121.P2224523022715780796

`A005384(A121373(n)+A029806(n+1))`
-/

namespace A124121.P2224523022715780796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (A121373 n + A029806 (n + 1)).toNat

end

end A124121.P2224523022715780796

/-!
# A124124: Nonnegative integers n such that 2n^2 + 2n - 3 is square.

The programs for A124124, the canonical program `A124124.P2045263938805169186` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124124 has offset 1).

The definition of A124124 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124124.P2045263938805169186

`7*a(n-2)-7*a(n-4)+a(n-6)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=13, a(4)=37, a(5)=78`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124124

/-- `7*a(n-2)-7*a(n-4)+a(n-6)` -/
def P2045263938805169186.Spec : Prop :=
  ∀ n, P2045263938805169186.a n = A124124 (n + 1)

theorem P2045263938805169186.correct : P2045263938805169186.Spec := by
  intro n
  simp only [A124124, Nat.add_sub_cancel]

end A124124

/-! ## A124124.P17562074655859541293

`∑[6*a(n-2)-a(n-4)]+1` with `a(0)=0, a(1)=1, a(2)=4, a(3)=7`
-/

namespace A124124.P17562074655859541293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 7] fun n f1 =>
  6 * f1 (n - 2) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124124.P17562074655859541293

namespace A124124

/-- `∑[6*a(n-2)-a(n-4)]+1` -/
def P17562074655859541293.Spec : Prop :=
  ∀ n, P17562074655859541293.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P11135843547132605331

`∑[A143608(n)]+1`
-/

namespace A124124.P11135843547132605331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124124.P11135843547132605331

namespace A124124

/-- `∑[A143608(n)]+1` -/
def P11135843547132605331.Spec : Prop :=
  ∀ n, P11135843547132605331.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P1466853904385337520

`∑[A143608(A028310(n))]`
-/

namespace A124124.P1466853904385337520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143608 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124124.P1466853904385337520

namespace A124124

/-- `∑[A143608(A028310(n))]` -/
def P1466853904385337520.Spec : Prop :=
  ∀ n, P1466853904385337520.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P13612471915139015818

`A216134(n)+A006452(n)`
-/

namespace A124124.P13612471915139015818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216134 n + A006452 n

end

end A124124.P13612471915139015818

namespace A124124

/-- `A216134(n)+A006452(n)` -/
def P13612471915139015818.Spec : Prop :=
  ∀ n, P13612471915139015818.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P14449556560621214806

`A216162(2*n)+A216134(n)`
-/

namespace A124124.P14449556560621214806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n) + A216134 n

end

end A124124.P14449556560621214806

namespace A124124

/-- `A216162(2*n)+A216134(n)` -/
def P14449556560621214806.Spec : Prop :=
  ∀ n, P14449556560621214806.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P2659659186673026304

`∑[A097564(A047233(n+1))]+1`
-/

namespace A124124.P2659659186673026304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124124.P2659659186673026304

namespace A124124

/-- `∑[A097564(A047233(n+1))]+1` -/
def P2659659186673026304.Spec : Prop :=
  ∀ n, P2659659186673026304.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P13356618165747769899

`A216162(2*n+1)+A006452(n)`
-/

namespace A124124.P13356618165747769899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 1) + A006452 n

end

end A124124.P13356618165747769899

namespace A124124

/-- `A216162(2*n+1)+A006452(n)` -/
def P13356618165747769899.Spec : Prop :=
  ∀ n, P13356618165747769899.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P11018544400690505534

`∑[A097564(A047246(2*n+1))]+1`
-/

namespace A124124.P11018544400690505534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097564 (A047246 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124124.P11018544400690505534

namespace A124124

/-- `∑[A097564(A047246(2*n+1))]+1` -/
def P11018544400690505534.Spec : Prop :=
  ∀ n, P11018544400690505534.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P11219618902412774614

`A216162(2*n+1)+A216162(2*n)`
-/

namespace A124124.P11219618902412774614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * n + 1) + A216162 (2 * n)

end

end A124124.P11219618902412774614

namespace A124124

/-- `A216162(2*n+1)+A216162(2*n)` -/
def P11219618902412774614.Spec : Prop :=
  ∀ n, P11219618902412774614.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P8766905762851931045

`record[A216162(A000265(n+1))+A216162(n)]`
-/

namespace A124124.P8766905762851931045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (A000265 (n + 1)).toNat + A216162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124124.P8766905762851931045

namespace A124124

/-- `record[A216162(A000265(n+1))+A216162(n)]` -/
def P8766905762851931045.Spec : Prop :=
  ∀ n, P8766905762851931045.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P641252744916156759

`floor(A077443(n+1)/2)`
-/

namespace A124124.P641252744916156759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077443 (n + 1) : ℚ) / 2⌋

end

end A124124.P641252744916156759

namespace A124124

/-- `floor(A077443(n+1)/2)` -/
def P641252744916156759.Spec : Prop :=
  ∀ n, P641252744916156759.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P14523374827139749472

`A077442(n)-A364319(n)`
-/

namespace A124124.P14523374827139749472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n - A364319 n

end

end A124124.P14523374827139749472

namespace A124124

/-- `A077442(n)-A364319(n)` -/
def P14523374827139749472.Spec : Prop :=
  ∀ n, P14523374827139749472.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P8714321581765754300

`A006451(n+1)-A077442(n)`
-/

namespace A124124.P8714321581765754300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006451 (n + 1) - A077442 n

end

end A124124.P8714321581765754300

namespace A124124

/-- `A006451(n+1)-A077442(n)` -/
def P8714321581765754300.Spec : Prop :=
  ∀ n, P8714321581765754300.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P12905991982920303946

`floor(A266505(lt[n, A266491(n)])/2)`
-/

namespace A124124.P12905991982920303946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A266505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ) / 2⌋

end

end A124124.P12905991982920303946

namespace A124124

/-- `floor(A266505(lt[n, A266491(n)])/2)` -/
def P12905991982920303946.Spec : Prop :=
  ∀ n, P12905991982920303946.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P13484183664897910266

`(A266505(A042964(n+1))-1)/2`
-/

namespace A124124.P13484183664897910266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266505 (A042964 (n + 1)).toNat - 1 : ℚ) / 2

end

end A124124.P13484183664897910266

namespace A124124

/-- `(A266505(A042964(n+1))-1)/2` -/
def P13484183664897910266.Spec : Prop :=
  ∀ n, P13484183664897910266.a n = (A124124 (n + 1) : ℚ)

end A124124

/-! ## A124124.P15521196057640410672

`(A266506(A047550(n+1))-1)/2`
-/

namespace A124124.P15521196057640410672
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266506 (A047550 (n + 1)).toNat - 1 : ℚ) / 2

end

end A124124.P15521196057640410672

namespace A124124

/-- `(A266506(A047550(n+1))-1)/2` -/
def P15521196057640410672.Spec : Prop :=
  ∀ n, P15521196057640410672.a n = (A124124 (n + 1) : ℚ)

end A124124

/-! ## A124124.P4824736588206272552

`∑[A077442(n)-A000129(n+1)]+1`
-/

namespace A124124.P4824736588206272552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077442 n - A000129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124124.P4824736588206272552

namespace A124124

/-- `∑[A077442(n)-A000129(n+1)]+1` -/
def P4824736588206272552.Spec : Prop :=
  ∀ n, P4824736588206272552.a n = A124124 (n + 1)

end A124124

/-! ## A124124.P2136200301668606031

`A006452(n)+A048739(n)-A006452(n+1)`
-/

namespace A124124.P2136200301668606031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n + (A048739 n - A006452 (n + 1))

end

end A124124.P2136200301668606031

namespace A124124

/-- `A006452(n)+A048739(n)-A006452(n+1)` -/
def P2136200301668606031.Spec : Prop :=
  ∀ n, P2136200301668606031.a n = A124124 (n + 1)

end A124124

/-!
# A124127: Numbers k such that 17k + 1 is prime.

The programs for A124127, the canonical program `A124127.P5713783254815366902` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124127 has offset 1).

The definition of A124127 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124127.P5713783254815366902

`floor(p?[a(n-1)+17]/17)` with `a(0)=9, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124127

/-- `floor(p?[a(n-1)+17]/17)` -/
def P5713783254815366902.Spec : Prop :=
  ∀ n, P5713783254815366902.a n = A124127 (n + 1)

theorem P5713783254815366902.correct : P5713783254815366902.Spec := by
  intro n
  simp only [A124127, Nat.add_sub_cancel]

end A124127

/-! ## A124127.P17871785105441041021

`floor(p?[A215137(n)]/17)`
-/

namespace A124127.P17871785105441041021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215137 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 17⌋

end

end A124127.P17871785105441041021

namespace A124127

/-- `floor(p?[A215137(n)]/17)` -/
def P17871785105441041021.Spec : Prop :=
  ∀ n, P17871785105441041021.a n = A124127 (n + 1)

end A124127

/-! ## A124127.P5317002130081514216

`eq[1, A001222(17*n+1)]`
-/

namespace A124127.P5317002130081514216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (17 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124127.P5317002130081514216

namespace A124127

/-- `eq[1, A001222(17*n+1)]` -/
def P5317002130081514216.Spec : Prop :=
  ∀ n, (P5317002130081514216.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P14126905543204935044

`eq[2, A000005(17*n+1)]`
-/

namespace A124127.P14126905543204935044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (17 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124127.P14126905543204935044

namespace A124127

/-- `eq[2, A000005(17*n+1)]` -/
def P14126905543204935044.Spec : Prop :=
  ∀ n, (P14126905543204935044.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P8800342341741100965

`lt[A001222(8*n+9*(n+2)), 2]+1`
-/

namespace A124127.P8800342341741100965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (8 * n + 9 * (n + 2))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124127.P8800342341741100965

namespace A124127

/-- `lt[A001222(8*n+9*(n+2)), 2]+1` -/
def P8800342341741100965.Spec : Prop :=
  ∀ n, (P8800342341741100965.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P6863800930904502590

`A000010(A129484(n+1))/17`
-/

namespace A124127.P6863800930904502590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (A129484 (n + 1)).toNat : ℚ) / 17

end

end A124127.P6863800930904502590

namespace A124127

/-- `A000010(A129484(n+1))/17` -/
def P6863800930904502590.Spec : Prop :=
  ∀ n, P6863800930904502590.a n = (A124127 (n + 1) : ℚ)

end A124127

/-! ## A124127.P4263822409697570439

`lt[A000040(n+1), A020639(17*n+1)]`
-/

namespace A124127.P4263822409697570439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (17 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124127.P4263822409697570439

namespace A124127

/-- `lt[A000040(n+1), A020639(17*n+1)]` -/
def P4263822409697570439.Spec : Prop :=
  ∀ n, (P4263822409697570439.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P12269241421893763605

`eq[2, A085082(A215137(n))]`
-/

namespace A124127.P12269241421893763605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085082 (A215137 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124127.P12269241421893763605

namespace A124127

/-- `eq[2, A085082(A215137(n))]` -/
def P12269241421893763605.Spec : Prop :=
  ∀ n, (P12269241421893763605.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P9121160845935284688

`lt[A000040(n+1), A014963(17*n+1)]`
-/

namespace A124127.P9121160845935284688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (17 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124127.P9121160845935284688

namespace A124127

/-- `lt[A000040(n+1), A014963(17*n+1)]` -/
def P9121160845935284688.Spec : Prop :=
  ∀ n, (P9121160845935284688.a n : ℤ) = A124127 (n + 1)

end A124127

/-! ## A124127.P1411871646848689524

`eq[A000720(17*n+1), A082058(17*n+1)]`
-/

namespace A124127.P1411871646848689524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (17 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082058 (17 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124127.P1411871646848689524

namespace A124127

/-- `eq[A000720(17*n+1), A082058(17*n+1)]` -/
def P1411871646848689524.Spec : Prop :=
  ∀ n, (P1411871646848689524.a n : ℤ) = A124127 (n + 1)

end A124127

/-!
# A124129: Primes p for which there are no primes between p and p+sqrt(p).

The programs for A124129, there is no canonical definition to state claims against.
-/

/-! ## A124129.P8952769991549571506

`p?[A127441(n+1)]`
-/

namespace A124129.P8952769991549571506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127441 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124129.P8952769991549571506

/-!
# A124130: Numbers n such that L_n = a^2 + b^2, where L_n is the n-th Lucas number with a and b integers.

The programs for A124130, there is no canonical definition to state claims against.
-/

/-! ## A124130.P2257958586813646559

`lt[A118487(n+1), 3]`
-/

namespace A124130.P2257958586813646559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124130.P2257958586813646559

/-! ## A124130.P15615897350834141083

`eq[log2(A118487(n+1)), A185114(n)]`
-/

namespace A124130.P15615897350834141083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A118487 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185114 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A124130.P15615897350834141083

/-! ## A124130.P8552481418127393459

`eq[A060576(A004525(n))+1, A118487(n+1)]`
-/

namespace A124130.P8552481418127393459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A004525 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124130.P8552481418127393459

/-!
# A124131: a(n)=((-1)^n/2)*sum_{i1+i2+i3=2n} ((2*n)!/(i1! i2! i3!))*B(i1+i2) where B are the Bernoulli numbers.

The programs for A124131, there is no canonical definition to state claims against.
-/

/-! ## A124131.P447637769726992404

`abs(ceil(A001469(n+1)/2))`
-/

namespace A124131.P447637769726992404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A001469 (n + 1) : ℚ) / 2⌉|

end

end A124131.P447637769726992404

/-! ## A124131.P2825135256404364619

`(A110501(n+1)-A033999(n))/2`
-/

namespace A124131.P2825135256404364619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110501 (n + 1) - A033999 n : ℚ) / 2

end

end A124131.P2825135256404364619

/-! ## A124131.P16163661438303532511

`lcm(ceil(A001469(n+1)/2), A304042(n))`
-/

namespace A124131.P16163661438303532511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(A001469 (n + 1) : ℚ) / 2⌉ (A304042 n)

end

end A124131.P16163661438303532511

/-! ## A124131.P7497761267407551001

`(A110501(n+1)+A087960((n+1)²))/2`
-/

namespace A124131.P7497761267407551001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110501 (n + 1) + A087960 ((n + 1) ^ 2) : ℚ) / 2

end

end A124131.P7497761267407551001

/-! ## A124131.P9339173780662477465

`gcd(A000038(n)%2, ceil(A001469(n+1)/2))`
-/

namespace A124131.P9339173780662477465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A000038 n) 2) ⌈(A001469 (n + 1) : ℚ) / 2⌉

end

end A124131.P9339173780662477465

/-!
# A124132: Positive integers n such that Fibonacci(2*n) is the sum of two squares.

The programs for A124132, there is no canonical definition to state claims against.
-/

/-! ## A124132.P1596892055856022310

`A236264(n+2)/2`
-/

namespace A124132.P1596892055856022310
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A236264 (n + 2) : ℚ) / 2

end

end A124132.P1596892055856022310

/-! ## A124132.P7137525567198875652

`A001281(A236264(n+2))`
-/

namespace A124132.P7137525567198875652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A236264 (n + 2)).toNat

end

end A124132.P7137525567198875652

/-! ## A124132.P1207000184933064321

`A057979(A236264(n+2)+1)`
-/

namespace A124132.P1207000184933064321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A236264 (n + 2) + 1).toNat

end

end A124132.P1207000184933064321

/-! ## A124132.P16597345708412177838

`A000463(A236264(n+2)-1)`
-/

namespace A124132.P16597345708412177838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A236264 (n + 2) - 1).toNat

end

end A124132.P16597345708412177838

/-! ## A124132.P4745351201325042168

`A002265(2*A236264(n+2))`
-/

namespace A124132.P4745351201325042168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A236264 (n + 2)).toNat

end

end A124132.P4745351201325042168

/-!
# A124133: a(n) = (-1/2)*Sum_{i1 + i2 + i3 = 2*n} ((2*n)!/(i1! i2! i3!))*B(i1), where B are the Bernoulli numbers (with i1, i2, i3 >= 1).

The programs for A124133, the canonical program `A124133.P17865135041309967570` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124133 has offset 1).

The definition of A124133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124133.P17865135041309967570

`6*a(n-1)-9*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=5, a(2)=28`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124133

/-- `6*a(n-1)-9*a(n-2)+4*a(n-3)` -/
def P17865135041309967570.Spec : Prop :=
  ∀ n, P17865135041309967570.a n = A124133 (n + 1)

theorem P17865135041309967570.correct : P17865135041309967570.Spec := by
  intro n
  simp only [A124133, Nat.add_sub_cancel]

end A124133

/-! ## A124133.P1349814942881476356

`2*(4^n-1)-n`
-/

namespace A124133.P1349814942881476356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((4 ^ n : ℤ) - 1) - (n : ℤ)

end

end A124133.P1349814942881476356

namespace A124133

/-- `2*(4^n-1)-n` -/
def P1349814942881476356.Spec : Prop :=
  ∀ n, P1349814942881476356.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P288455314802716910

`∑[4*a(n-1)+3]` with `a(0)=0, a(1)=5`
-/

namespace A124133.P288455314802716910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  4 * f1 (n - 1) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P288455314802716910

namespace A124133

/-- `∑[4*a(n-1)+3]` -/
def P288455314802716910.Spec : Prop :=
  ∀ n, (P288455314802716910.a n : ℤ) = A124133 (n + 1)

end A124133

/-! ## A124133.P14821831875279087322

`∑[lcm(4, a(n-1))+3]` with `a(0)=0, a(1)=5`
-/

namespace A124133.P14821831875279087322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  Nat.lcm 4 (f1 (n - 1)) + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P14821831875279087322

namespace A124133

/-- `∑[lcm(4, a(n-1))+3]` -/
def P14821831875279087322.Spec : Prop :=
  ∀ n, (P14821831875279087322.a n : ℤ) = A124133 (n + 1)

end A124133

/-! ## A124133.P14189195896666366726

`∑[or(19, 4*a(n-1))]` with `a(0)=0, a(1)=5`
-/

namespace A124133.P14189195896666366726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  Nat.lor 19 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P14189195896666366726

namespace A124133

/-- `∑[or(19, 4*a(n-1))]` -/
def P14189195896666366726.Spec : Prop :=
  ∀ n, (P14189195896666366726.a n : ℤ) = A124133 (n + 1)

end A124133

/-! ## A124133.P4493122328413906958

`xor(-2^(2*n+1), -(n+2))`
-/

namespace A124133.P4493122328413906958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-(2 ^ (2 * n + 1) : ℤ)) (-(n + 2 : ℤ))

end

end A124133.P4493122328413906958

namespace A124133

/-- `xor(-2^(2*n+1), -(n+2))` -/
def P4493122328413906958.Spec : Prop :=
  ∀ n, P4493122328413906958.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P13367763418611132538

`floor(3*n+4*a(n-1)+2)` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A124133.P13367763418611132538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  3 * n + (4 * a (n - 1) + 2)

end

end A124133.P13367763418611132538

namespace A124133

/-- `floor(3*n+4*a(n-1)+2)` -/
def P13367763418611132538.Spec : Prop :=
  ∀ n, (P13367763418611132538.a n : ℤ) = A124133 (n + 1)

end A124133

/-! ## A124133.P2584329055307051741

`∑[3-(a(n-1)-5*a(n-1))]` with `a(0)=0, a(1)=5`
-/

namespace A124133.P2584329055307051741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  3 - (f1 (n - 1) - 5 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P2584329055307051741

namespace A124133

/-- `∑[3-(a(n-1)-5*a(n-1))]` -/
def P2584329055307051741.Spec : Prop :=
  ∀ n, P2584329055307051741.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P16741141182253172577

`A320933(Δ[n²])`
-/

namespace A124133.P16741141182253172577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320933 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A124133.P16741141182253172577

namespace A124133

/-- `A320933(Δ[n²])` -/
def P16741141182253172577.Spec : Prop :=
  ∀ n, P16741141182253172577.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P2423487647701917831

`∑[A164908(n)-1]`
-/

namespace A124133.P2423487647701917831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164908 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P2423487647701917831

namespace A124133

/-- `∑[A164908(n)-1]` -/
def P2423487647701917831.Spec : Prop :=
  ∀ n, P2423487647701917831.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P13055274787707449162

`∑[A055010(2*n)]`
-/

namespace A124133.P13055274787707449162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P13055274787707449162

namespace A124133

/-- `∑[A055010(2*n)]` -/
def P13055274787707449162.Spec : Prop :=
  ∀ n, P13055274787707449162.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P12606281394564827550

`∑[Δ[A081294(n)]-1]`
-/

namespace A124133.P12606281394564827550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P12606281394564827550

namespace A124133

/-- `∑[Δ[A081294(n)]-1]` -/
def P12606281394564827550.Spec : Prop :=
  ∀ n, P12606281394564827550.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P12919303949098002041

`∑[record[A283507(n+1)]]`
-/

namespace A124133.P12919303949098002041
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283507 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P12919303949098002041

namespace A124133

/-- `∑[record[A283507(n+1)]]` -/
def P12919303949098002041.Spec : Prop :=
  ∀ n, P12919303949098002041.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P9145255836977589850

`∑[A003945(2*n)-1]`
-/

namespace A124133.P9145255836977589850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P9145255836977589850

namespace A124133

/-- `∑[A003945(2*n)-1]` -/
def P9145255836977589850.Spec : Prop :=
  ∀ n, P9145255836977589850.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P17524395875264210309

`∑[A122756(2*n)-1]`
-/

namespace A124133.P17524395875264210309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122756 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P17524395875264210309

namespace A124133

/-- `∑[A122756(2*n)-1]` -/
def P17524395875264210309.Spec : Prop :=
  ∀ n, P17524395875264210309.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P12855987471583310640

`∑[A280370(2*n)-1]`
-/

namespace A124133.P12855987471583310640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280370 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P12855987471583310640

namespace A124133

/-- `∑[A280370(2*n)-1]` -/
def P12855987471583310640.Spec : Prop :=
  ∀ n, P12855987471583310640.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P447477493254895179

`∑[A282005(2*n)-1]`
-/

namespace A124133.P447477493254895179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282005 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124133.P447477493254895179

namespace A124133

/-- `∑[A282005(2*n)-1]` -/
def P447477493254895179.Spec : Prop :=
  ∀ n, P447477493254895179.a n = A124133 (n + 1)

end A124133

/-! ## A124133.P14528075228042503596

`floor(A141725(n)/2-n)`
-/

namespace A124133.P14528075228042503596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141725 n : ℚ) / 2 - (n : ℚ)⌋

end

end A124133.P14528075228042503596

namespace A124133

/-- `floor(A141725(n)/2-n)` -/
def P14528075228042503596.Spec : Prop :=
  ∀ n, P14528075228042503596.a n = A124133 (n + 1)

end A124133

/-!
# A124134: Positive integers n such that Fibonacci(n) = a^2 + b^2, where a, b are integers.

The programs for A124134, there is no canonical definition to state claims against.
-/

/-! ## A124134.P1985997867204834690

`comp[2*comp[A124132(n+1)]]`
-/

namespace A124134.P1985997867204834690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A124134.P1985997867204834690

/-! ## A124134.P14427767629435920789

`comp[A005843(comp[A124132(n+1)])]`
-/

namespace A124134.P14427767629435920789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124132 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A124134.P14427767629435920789

/-! ## A124134.P7077113421713874680

`lt[A320992(n), A020639(A241818(n))]`
-/

namespace A124134.P7077113421713874680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320992 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A241818 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124134.P7077113421713874680

/-! ## A124134.P2068206344073127907

`lt[A239482(n+3), A036553(A036552(3*n+1))]`
-/

namespace A124134.P2068206344073127907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239482 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036553 (A036552 (3 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124134.P2068206344073127907

/-!
# A124135: a(n)=((-1)^n/6)*sum_{i1+i2+i3+i4=2n} ((2*n)!/(i1! i2! i3! i4!))*B(i1+i2+i3) where B are the Bernoulli numbers.

The programs for A124135, there is no canonical definition to state claims against.
-/

/-! ## A124135.P5374705366702459646

`A295087(A351644(∑[n]))`
-/

namespace A124135.P5374705366702459646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295087 (A351644 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A124135.P5374705366702459646

/-!
# A124136: The list of primes p such that the number of primes in the open interval (p,2*p) is larger than the number of primes in the open interval (q,2*q) for all q

The programs for A124136, there is no canonical definition to state claims against.
-/

/-! ## A124136.P3525825421580611105

`record[A007918(A059316(A035250(n+1)))]`
-/

namespace A124136.P3525825421580611105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (A035250 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124136.P3525825421580611105

/-! ## A124136.P13647601276641643938

`record[A007918(A059316(A289493(n+1)))]`
-/

namespace A124136.P13647601276641643938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (A289493 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124136.P13647601276641643938

/-! ## A124136.P15784788178560940401

`record[A007918(A059316(A323161(n+1)))]`
-/

namespace A124136.P15784788178560940401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (A323161 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124136.P15784788178560940401

/-! ## A124136.P8854504956937515034

`record[A007918(A059316(A060715(n+2)))]`
-/

namespace A124136.P8854504956937515034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (A060715 (n + 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124136.P8854504956937515034

/-! ## A124136.P3310184299742560720

`record[A007918(A059316(A087011(2*(n+1))))]`
-/

namespace A124136.P3310184299742560720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A059316 (A087011 (2 * (n + 1))).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124136.P3310184299742560720

/-!
# A124137: A signed aerated and skewed version of A038137.

The programs for A124137, there is no canonical definition to state claims against.
-/

/-! ## A124137.P6091933680641427287

`A128174(n+1)*A202389(n)`
-/

namespace A124137.P6091933680641427287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128174 (n + 1) * A202389 n

end

end A124137.P6091933680641427287

/-! ## A124137.P10488159671510551098

`A210868(n+1)*A369736(n)`
-/

namespace A124137.P10488159671510551098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210868 (n + 1) * A369736 n

end

end A124137.P10488159671510551098

/-! ## A124137.P2735055375621717762

`A059841(A025581(n))*A202389(n)`
-/

namespace A124137.P2735055375621717762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A025581 n).toNat * A202389 n

end

end A124137.P2735055375621717762

/-! ## A124137.P5542835400721697044

`A000035(A131894(n))*A202389(n)`
-/

namespace A124137.P5542835400721697044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A131894 n).toNat * A202389 n

end

end A124137.P5542835400721697044

/-! ## A124137.P15613575253108993476

`A000035(A004736(n+1))*A202389(n)`
-/

namespace A124137.P15613575253108993476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004736 (n + 1)).toNat * A202389 n

end

end A124137.P15613575253108993476

/-! ## A124137.P3459518702194773961

`A202389(n)%A225750(n)`
-/

namespace A124137.P3459518702194773961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202389 n) (A225750 n)

end

end A124137.P3459518702194773961

/-! ## A124137.P10282520961096633229

`A000035(A101493(n))*A202389(n)`
-/

namespace A124137.P10282520961096633229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A101493 n).toNat * A202389 n

end

end A124137.P10282520961096633229

/-! ## A124137.P2099235230813261925

`A000035(A131087(n))*A202389(n)`
-/

namespace A124137.P2099235230813261925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A131087 n).toNat * A202389 n

end

end A124137.P2099235230813261925

/-! ## A124137.P5967232543772038845

`A000120(A130125(n))*A202389(n)`
-/

namespace A124137.P5967232543772038845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A130125 n).toNat * A202389 n

end

end A124137.P5967232543772038845

/-! ## A124137.P4917850819648266675

`A010052(A130321(n))*A202389(n)`
-/

namespace A124137.P4917850819648266675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A130321 n).toNat * A202389 n

end

end A124137.P4917850819648266675

/-!
# A124138: a(n)= A000265(3*(a(n-1)+a(n-2))/2 +1) starting at a(1)=1, a(2)=3.

The programs for A124138, the canonical program `A124138.P10766264855078818360` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124138 has offset 1).

The definition of A124138 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124138.P10766264855078818360

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124138

/-- `A000265(3*(a(n-1)+a(n-2))/2+1)` -/
def P10766264855078818360.Spec : Prop :=
  ∀ n, P10766264855078818360.a n = A124138 (n + 1)

theorem P10766264855078818360.correct : P10766264855078818360.Spec := by
  intro n
  simp only [A124138, Nat.add_sub_cancel]

end A124138

/-! ## A124138.P18431807048266084383

`A000265(3*(a(n-1)+a(n-2))+2)` with `a(0)=1, a(1)=3`
-/

namespace A124138.P18431807048266084383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000265 (3 * (a (n - 1) + a (n - 2)) + 2).toNat

end

end A124138.P18431807048266084383

namespace A124138

/-- `A000265(3*(a(n-1)+a(n-2))+2)` -/
def P18431807048266084383.Spec : Prop :=
  ∀ n, P18431807048266084383.a n = A124138 (n + 1)

end A124138

/-!
# A124139: a(n) = A000265(3*(a(n-1) + a(n-2))/2 + 1) starting at a(1)=1, a(2)=11.

The programs for A124139, the canonical program `A124139.P6227741509324842729` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124139 has offset 1).

The definition of A124139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000265, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A124139.P6227741509324842729

`A000265(3*(a(n-1)+a(n-2))/2+1)` with `a(0)=1, a(1)=11`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A124139

/-- `A000265(3*(a(n-1)+a(n-2))/2+1)` -/
def P6227741509324842729.Spec : Prop :=
  ∀ n, P6227741509324842729.a n = A124139 (n + 1)

theorem P6227741509324842729.correct : P6227741509324842729.Spec := by
  intro n
  simp only [A124139, Nat.add_sub_cancel]

end A124139

/-! ## A124139.P15742236227494622632

`A000265(3*(a(n-1)+a(n-2))+2)` with `a(0)=1, a(1)=11`
-/

namespace A124139.P15742236227494622632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 11] fun n a =>
  A000265 (3 * (a (n - 1) + a (n - 2)) + 2).toNat

end

end A124139.P15742236227494622632

namespace A124139

/-- `A000265(3*(a(n-1)+a(n-2))+2)` -/
def P15742236227494622632.Spec : Prop :=
  ∀ n, P15742236227494622632.a n = A124139 (n + 1)

end A124139

/-!
# A124142: Abundant numbers k such that sigma(k) is a perfect power.

The programs for A124142, there is no canonical definition to state claims against.
-/

/-! ## A124142.P456419393323048793

`filter[A065496(n+1), A294936(#)]`
-/

namespace A124142.P456419393323048793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A124142.P456419393323048793

/-! ## A124142.P6746938203613473040

`filter[A065496(n+1), A378550(#)]`
-/

namespace A124142.P6746938203613473040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A124142.P6746938203613473040

/-! ## A124142.P17704054576158304699

`∩[A065496(n+1), A214408(n+1)]`
-/

namespace A124142.P17704054576158304699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124142.P17704054576158304699

/-! ## A124142.P8501096824085164448

`∩[A005101(n+1), A065496(n+1)]`
-/

namespace A124142.P8501096824085164448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124142.P8501096824085164448

/-! ## A124142.P469098748338053038

`∩[A023196(n+1), A065496(n+1)]`
-/

namespace A124142.P469098748338053038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124142.P469098748338053038

/-! ## A124142.P16255457263403230564

`∩[A065496(n+1), A103288(n+1)]`
-/

namespace A124142.P16255457263403230564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124142.P16255457263403230564

/-! ## A124142.P8329574075003766143

`filter[A065496(n+1), A294937(#)]`
-/

namespace A124142.P8329574075003766143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294937 (f1 j).toNat = 1) n)

end

end A124142.P8329574075003766143

/-!
# A124143: Perfect powers pp such that sigma(k) = pp for some positive integer k.

The programs for A124143, there is no canonical definition to state claims against.
-/

/-! ## A124143.P14222600355799175427

`filter[A001597(n+2), A175192(#)]`
-/

namespace A124143.P14222600355799175427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A175192 (f1 j).toNat = 1) n)

end

end A124143.P14222600355799175427

/-! ## A124143.P4733372271659171251

`∩[A001597(n+1), A002191(n+2)]`
-/

namespace A124143.P4733372271659171251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124143.P4733372271659171251

/-! ## A124143.P9806858024594471202

`∩[A002191(n+1), A045542(n+1)+1]`
-/

namespace A124143.P9806858024594471202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124143.P9806858024594471202

/-! ## A124143.P7212499242278756627

`filter[A002191(n+2), A075802(#)]`
-/

namespace A124143.P7212499242278756627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002191 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A124143.P7212499242278756627

/-!
# A124146: U.S.A. currency denominations in dollars.

The programs for A124146, there is no canonical definition to state claims against.
-/

/-! ## A124146.P11373535745703249062

`record[A194350(A051801(n))]`
-/

namespace A124146.P11373535745703249062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A051801 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124146.P11373535745703249062

/-! ## A124146.P14116405164176616248

`record[A194350(A096811(n))]`
-/

namespace A124146.P14116405164176616248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A096811 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124146.P14116405164176616248

/-! ## A124146.P4044095206023940512

`A194350(A018772(n+2))`
-/

namespace A124146.P4044095206023940512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A018772 (n + 2)).toNat

end

end A124146.P4044095206023940512

/-! ## A124146.P14517589936546975663

`A194350(A108319(n+2))`
-/

namespace A124146.P14517589936546975663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A108319 (n + 2)).toNat

end

end A124146.P14517589936546975663

/-! ## A124146.P7517344536363672737

`A194350(A177500(n+2))`
-/

namespace A124146.P7517344536363672737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194350 (A177500 (n + 2)).toNat

end

end A124146.P7517344536363672737

/-!
# A124147: Primes p smaller than sqrt(g)*exp(sqrt(g)), where g is the gap between p and the next prime.

The programs for A124147, there is no canonical definition to state claims against.
-/

/-! ## A124147.P4285289202923101872

`A182315(lt[A334437(n), 2*n+1])`
-/

namespace A124147.P4285289202923101872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334437 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182315 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A124147.P4285289202923101872

/-! ## A124147.P11717175579534910260

`A182315(comp[∑[A182364(3*n+1)]])`
-/

namespace A124147.P11717175579534910260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182364 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A124147.P11717175579534910260

/-! ## A124147.P14005079178626839143

`A182315(comp[A137319(3*n+1)-1])`
-/

namespace A124147.P14005079178626839143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137319 (3 * n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A124147.P14005079178626839143

/-! ## A124147.P14894420035925359271

`A182315(comp[xor(n+1, A004207(n+1))])`
-/

namespace A124147.P14894420035925359271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A004207 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A124147.P14894420035925359271

/-! ## A124147.P3523475745999762161

`record[A182315(n+1)/A182284(2*n+5)]`
-/

namespace A124147.P3523475745999762161
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182315 (n + 1) : ℚ) / (A182284 (2 * n + 5) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124147.P3523475745999762161

/-!
# A124148: Fibonacci triangle read by rows; the triangles below read by rows. Analog of A124171.

The programs for A124148, there is no canonical definition to state claims against.
-/

/-! ## A124148.P13473942444868386576

`A048817(A056558(n))`
-/

namespace A124148.P13473942444868386576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048817 (A056558 n).toNat

end

end A124148.P13473942444868386576

/-! ## A124148.P6151634864297920518

`A041247(Δ[A123575(n)])`
-/

namespace A124148.P6151634864297920518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041247 (f1 (n + 1) - f1 n).toNat

end

end A124148.P6151634864297920518

/-! ## A124148.P17518740439830826953

`A240733(Δ[A123575(n)])`
-/

namespace A124148.P17518740439830826953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240733 (f1 (n + 1) - f1 n).toNat

end

end A124148.P17518740439830826953

/-! ## A124148.P12017829930047538619

`A374742(Δ[A123575(n)])`
-/

namespace A124148.P12017829930047538619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374742 (f1 (n + 1) - f1 n).toNat

end

end A124148.P12017829930047538619

/-! ## A124148.P2775718321936402647

`A000045(A056558(n)+1)`
-/

namespace A124148.P2775718321936402647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A056558 n + 1).toNat

end

end A124148.P2775718321936402647

/-! ## A124148.P5751469752381421986

`A001129(A056558(n)+1)`
-/

namespace A124148.P5751469752381421986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001129 (A056558 n + 1).toNat

end

end A124148.P5751469752381421986

/-! ## A124148.P13433427943789991297

`A014259(A056558(n)+1)`
-/

namespace A124148.P13433427943789991297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014259 (A056558 n + 1).toNat

end

end A124148.P13433427943789991297

/-! ## A124148.P14813356980273952845

`A014260(A056558(n)+1)`
-/

namespace A124148.P14813356980273952845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014260 (A056558 n + 1).toNat

end

end A124148.P14813356980273952845

/-! ## A124148.P8036716529740474404

`A104763(A124171(n+1))`
-/

namespace A124148.P8036716529740474404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104763 (A124171 (n + 1)).toNat

end

end A124148.P8036716529740474404

/-! ## A124148.P3456815265290438113

`A177246(A056558(n)+1)`
-/

namespace A124148.P3456815265290438113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177246 (A056558 n + 1).toNat

end

end A124148.P3456815265290438113

/-!
# A124151: Smallest k such that 1 + Sum{j=1..n} k^(2*j-1) is prime.

The programs for A124151, there is no canonical definition to state claims against.
-/

/-! ## A124151.P13940898036522372181

`A003275(A034693(n+1))%A007527(n+1)`
-/

namespace A124151.P13940898036522372181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003275 (A034693 (n + 1)).toNat) (A007527 (n + 1))

end

end A124151.P13940898036522372181

/-! ## A124151.P12516889578438409430

`gcd(3*2^n-2, A083604(2*(n+1)))`
-/

namespace A124151.P12516889578438409430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * 2 ^ n : ℤ) - 2) (A083604 (2 * (n + 1)))

end

end A124151.P12516889578438409430

/-! ## A124151.P5170254593672455888

`A010131(A390132(n))`
-/

namespace A124151.P5170254593672455888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 (A390132 n).toNat

end

end A124151.P5170254593672455888

/-! ## A124151.P9803971804633059451

`A279069(A072883(n+1))`
-/

namespace A124151.P9803971804633059451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279069 (A072883 (n + 1)).toNat

end

end A124151.P9803971804633059451

/-! ## A124151.P12763491328138519320

`A351306(A080213(n+2))`
-/

namespace A124151.P12763491328138519320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351306 (A080213 (n + 2)).toNat

end

end A124151.P12763491328138519320

/-!
# A124152: a(n) = Fibonacci(6, n).

The programs for A124152, the canonical program `A124152.P5658639836034915093` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124152 has offset 0).

The definition of A124152 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124152.P5658639836034915093

`n*(3+4*n²+n^4)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124152

/-- `n*(3+4*n²+n^4)` -/
def P5658639836034915093.Spec : Prop :=
  ∀ n, (P5658639836034915093.a n : ℤ) = A124152 n

theorem P5658639836034915093.correct : P5658639836034915093.Spec := by
  intro n
  simp only [A124152]

end A124152

/-! ## A124152.P15572354756890602254

`A054604(n)+A035328(n)`
-/

namespace A124152.P15572354756890602254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054604 n + A035328 n

end

end A124152.P15572354756890602254

namespace A124152

/-- `A054604(n)+A035328(n)` -/
def P15572354756890602254.Spec : Prop :=
  ∀ n, P15572354756890602254.a n = A124152 n

end A124152

/-! ## A124152.P2193932403858440855

`A105374(n)+A061167(n)`
-/

namespace A124152.P2193932403858440855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105374 n + A061167 n

end

end A124152.P2193932403858440855

namespace A124152

/-- `A105374(n)+A061167(n)` -/
def P2193932403858440855.Spec : Prop :=
  ∀ n, P2193932403858440855.a n = A124152 n

end A124152

/-! ## A124152.P12131342516980091013

`A131471(n)+A061804(n)`
-/

namespace A124152.P12131342516980091013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131471 n + A061804 n

end

end A124152.P12131342516980091013

namespace A124152

/-- `A131471(n)+A061804(n)` -/
def P12131342516980091013.Spec : Prop :=
  ∀ n, P12131342516980091013.a n = A124152 n

end A124152

/-! ## A124152.P4178504177330376367

`A155977(n)+A119536(n)`
-/

namespace A124152.P4178504177330376367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155977 n + A119536 n

end

end A124152.P4178504177330376367

namespace A124152

/-- `A155977(n)+A119536(n)` -/
def P4178504177330376367.Spec : Prop :=
  ∀ n, P4178504177330376367.a n = A124152 n

end A124152

/-! ## A124152.P1859669317032314646

`A261391(n)-A054602(n)`
-/

namespace A124152.P1859669317032314646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261391 n - A054602 n

end

end A124152.P1859669317032314646

namespace A124152

/-- `A261391(n)-A054602(n)` -/
def P1859669317032314646.Spec : Prop :=
  ∀ n, P1859669317032314646.a n = A124152 n

end A124152

/-! ## A124152.P6520715151994351532

`A054602(n)+n*A057721(n)`
-/

namespace A124152.P6520715151994351532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n + (n : ℤ) * A057721 n

end

end A124152.P6520715151994351532

namespace A124152

/-- `A054602(n)+n*A057721(n)` -/
def P6520715151994351532.Spec : Prop :=
  ∀ n, P6520715151994351532.a n = A124152 n

end A124152

/-! ## A124152.P2426645328364881725

`A054602(n)²/A028310(n)-n`
-/

namespace A124152.P2426645328364881725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054602 n ^ 2 : ℚ) / (A028310 n : ℚ) - (n : ℚ)

end

end A124152.P2426645328364881725

namespace A124152

/-- `A054602(n)²/A028310(n)-n` -/
def P2426645328364881725.Spec : Prop :=
  ∀ n, P2426645328364881725.a n = (A124152 n : ℚ)

end A124152

/-! ## A124152.P9483817026348654280

`A002522(n)*A005491(n)-A002522(n)`
-/

namespace A124152.P9483817026348654280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n * A005491 n - A002522 n

end

end A124152.P9483817026348654280

namespace A124152

/-- `A002522(n)*A005491(n)-A002522(n)` -/
def P9483817026348654280.Spec : Prop :=
  ∀ n, P9483817026348654280.a n = A124152 n

end A124152

/-! ## A124152.P1515407609187454127

`A010000(n)*A079908(n)-A079908(n)`
-/

namespace A124152.P1515407609187454127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010000 n * A079908 n - A079908 n

end

end A124152.P1515407609187454127

namespace A124152

/-- `A010000(n)*A079908(n)-A079908(n)` -/
def P1515407609187454127.Spec : Prop :=
  ∀ n, P1515407609187454127.a n = A124152 n

end A124152

/-! ## A124152.P791344080700729520

`A288487(n)+n-A002061(A002061(n))`
-/

namespace A124152.P791344080700729520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288487 n + ((n : ℤ) - A002061 (A002061 n).toNat)

end

end A124152.P791344080700729520

namespace A124152

/-- `A288487(n)+n-A002061(A002061(n))` -/
def P791344080700729520.Spec : Prop :=
  ∀ n, P791344080700729520.a n = A124152 n

end A124152

/-!
# A124153: Number of generalized Hantzsche-Wendt manifolds in dimension n.

The programs for A124153, there is no canonical definition to state claims against.
-/

/-! ## A124153.P203998965667304957

`ceil(sqrt(((∑[3*4^n]-2^n)/ceil(5*2^(n-2)))^n))`
-/

namespace A124153.P203998965667304957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * 4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (2 ^ n : ℤ) : ℚ) / (⌈5 * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉ : ℚ)) ^ n : ℝ)⌉

end

end A124153.P203998965667304957

/-!
# A124154: Numbers n such that 1 + n + n^3 + n^5 is prime.

The programs for A124154, there is no canonical definition to state claims against.
-/

/-! ## A124154.P9898065892791121974

`record[A249947(n+1)+Δ[A160914(n+1)]]`
-/

namespace A124154.P9898065892791121974
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160914 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249947 (n + 1) + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124154.P9898065892791121974

/-!
# A124156: Thickness of complete graph K_n.

The programs for A124156, the canonical program `A124156.P15977826383199270840` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124156 has offset 1).

The definition of A124156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124156.P15977826383199270840

`∑[char[2*(Δ[n²]-char[1]+n+1)]]+1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124156

/-- `∑[char[2*(Δ[n²]-char[1]+n+1)]]+1` -/
def P15977826383199270840.Spec : Prop :=
  ∀ n, (P15977826383199270840.a n : ℤ) = A124156 (n + 1)

theorem P15977826383199270840.correct : P15977826383199270840.Spec := by
  intro n
  simp only [A124156, Nat.add_sub_cancel]

end A124156

/-! ## A124156.P12208407452661532221

`∑[char[A005843(A163985(n)+n)]]`
-/

namespace A124156.P12208407452661532221
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A163985 n + (n : ℤ)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124156.P12208407452661532221

namespace A124156

/-- `∑[char[A005843(A163985(n)+n)]]` -/
def P12208407452661532221.Spec : Prop :=
  ∀ n, (P12208407452661532221.a n : ℤ) = A124156 (n + 1)

end A124156

/-! ## A124156.P12877756649735991015

`∑[char[A005843(A316571(n+1)+n-1)]]`
-/

namespace A124156.P12877756649735991015
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A316571 (n + 1) + ((n : ℤ) - 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124156.P12877756649735991015

namespace A124156

/-- `∑[char[A005843(A316571(n+1)+n-1)]]` -/
def P12877756649735991015.Spec : Prop :=
  ∀ n, (P12877756649735991015.a n : ℤ) = A124156 (n + 1)

end A124156

/-! ## A124156.P8994979156126653369

`A103221(ceil(A055999(n)/A080513(n)))`
-/

namespace A124156.P8994979156126653369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 ⌈(A055999 n : ℚ) / (A080513 n : ℚ)⌉.toNat

end

end A124156.P8994979156126653369

namespace A124156

/-- `A103221(ceil(A055999(n)/A080513(n)))` -/
def P8994979156126653369.Spec : Prop :=
  ∀ n, P8994979156126653369.a n = A124156 (n + 1)

end A124156

/-! ## A124156.P12077091949340599319

`ceil((A320033(round(acot(n)+n)+n)+n)/6)`
-/

namespace A124156.P12077091949340599319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A320033 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + (n : ℤ)).toNat + (n : ℤ) : ℚ) / 6⌉

end

end A124156.P12077091949340599319

namespace A124156

/-- `ceil((A320033(round(acot(n)+n)+n)+n)/6)` -/
def P12077091949340599319.Spec : Prop :=
  ∀ n, P12077091949340599319.a n = A124156 (n + 1)

end A124156

/-!
# A124157: Maximal number of edges in a doubly linear graph with n nodes.

The programs for A124157, there is no canonical definition to state claims against.
-/

/-! ## A124157.P9543914867898635712

`∑[n-char[8]]`
-/

namespace A124157.P9543914867898635712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124157.P9543914867898635712

/-! ## A124157.P18160173344302212185

`∑[n]-C(n, 8)`
-/

namespace A124157.P18160173344302212185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.choose n 8 : ℤ)

end

end A124157.P18160173344302212185

/-! ## A124157.P11889601820707360025

`floor(n^exp(cos(1)))`
-/

namespace A124157.P11889601820707360025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.exp (Real.cos (1 : ℝ)))⌋

end

end A124157.P11889601820707360025

/-! ## A124157.P12820307103182975488

`ceil(∑[n]^sin(8))`
-/

namespace A124157.P12820307103182975488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ (Real.sin (8 : ℝ))⌉

end

end A124157.P12820307103182975488

/-! ## A124157.P16586145297034770158

`round(∑[n^sin(8)])`
-/

namespace A124157.P16586145297034770158
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) ^ (Real.sin (8 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124157.P16586145297034770158

/-!
# A124158: Maximal number of edges in a rectangle visibility graph with n nodes.

The programs for A124158, there is no canonical definition to state claims against.
-/

/-! ## A124158.P12477162147834096707

`a(n-1)+6` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=15, a(6)=21, a(7)=28`
-/

namespace A124158.P12477162147834096707
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3, 6, 10, 15, 21, 28] fun n a =>
  a (n - 1) + 6

end

end A124158.P12477162147834096707

/-!
# A124161: a(n) = n*(n-1)*(n^3 + 21*n^2 - 4*n + 96)/120.

The programs for A124161, the canonical program `A124161.P5846183816569635966` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124161 has offset 0).

The definition of A124161 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124161.P5846183816569635966

`n*(n-1)*(n^3+21*n²-4*n+96)/120`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124161

/-- `n*(n-1)*(n^3+21*n²-4*n+96)/120` -/
def P5846183816569635966.Spec : Prop :=
  ∀ n, P5846183816569635966.a n = (A124161 n : ℚ)

end A124161

/-! ## A124161.P3161312570914302847

`A081282(n)-(A004006(n)+A000389(n))`
-/

namespace A124161.P3161312570914302847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081282 n - (A004006 n + A000389 n)

end

end A124161.P3161312570914302847

namespace A124161

/-- `A081282(n)-(A004006(n)+A000389(n))` -/
def P3161312570914302847.Spec : Prop :=
  ∀ n, P3161312570914302847.a n = A124161 n

end A124161

/-! ## A124161.P9437337723176827613

`A000389(n)+A061316(n)-A054602(n)`
-/

namespace A124161.P9437337723176827613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + (A061316 n - A054602 n)

end

end A124161.P9437337723176827613

namespace A124161

/-- `A000389(n)+A061316(n)-A054602(n)` -/
def P9437337723176827613.Spec : Prop :=
  ∀ n, P9437337723176827613.a n = A124161 n

end A124161

/-! ## A124161.P7425469566885606172

`A034827(n)+A257890(n)-A005718(n)`
-/

namespace A124161.P7425469566885606172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034827 n + (A257890 n - A005718 n)

end

end A124161.P7425469566885606172

namespace A124161

/-- `A034827(n)+A257890(n)-A005718(n)` -/
def P7425469566885606172.Spec : Prop :=
  ∀ n, P7425469566885606172.a n = A124161 n

end A124161

/-! ## A124161.P14256365778811273503

`A000389(n)+A161680(n)*A238531(n)`
-/

namespace A124161.P14256365778811273503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000389 n + A161680 n * A238531 n

end

end A124161.P14256365778811273503

namespace A124161

/-- `A000389(n)+A161680(n)*A238531(n)` -/
def P14256365778811273503.Spec : Prop :=
  ∀ n, P14256365778811273503.a n = A124161 n

end A124161

/-! ## A124161.P5653451789085461710

`A117717(n+1)+A000389(n)-A034262(n)`
-/

namespace A124161.P5653451789085461710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117717 (n + 1) + (A000389 n - A034262 n)

end

end A124161.P5653451789085461710

namespace A124161

/-- `A117717(n+1)+A000389(n)-A034262(n)` -/
def P5653451789085461710.Spec : Prop :=
  ∀ n, P5653451789085461710.a n = A124161 n

end A124161

/-!
# A124162: Number of quadruples [i,j,k,l] with all entries between 1 and n such that gcd(i,j) = gcd(k,l).

The programs for A124162, there is no canonical definition to state claims against.
-/

/-! ## A124162.P15271361113740153513

`∑[∑[A018653(A036788(n+1))]]`
-/

namespace A124162.P15271361113740153513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018653 (A036788 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124162.P15271361113740153513

/-!
# A124164: Numbers n such that 1 + n + n^3 + n^5 + n^7 + n^9 + n^11 + n^13 is prime.

The programs for A124164, there is no canonical definition to state claims against.
-/

/-! ## A124164.P2924997132444243905

`A325185(A122599(2*n+1)+1)`
-/

namespace A124164.P2924997132444243905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325185 (A122599 (2 * n + 1) + 1).toNat

end

end A124164.P2924997132444243905

/-! ## A124164.P12612286323837274201

`A257771(2*n+5)-A258289(n)`
-/

namespace A124164.P12612286323837274201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257771 (2 * n + 5) - A258289 n

end

end A124164.P12612286323837274201

/-!
# A124165: Primes p such that (2^p + 2^((p+1)/2) + 1)/5 is prime.

The programs for A124165, there is no canonical definition to state claims against.
-/

/-! ## A124165.P14113604124257955317

`A124112(A220453(n+2)%A125742(n+1))`
-/

namespace A124165.P14113604124257955317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124112 (Int.tmod (A220453 (n + 2)) (A125742 (n + 1))).toNat

end

end A124165.P14113604124257955317

/-!
# A124166: a(n) = 100*(10^n - 1)/9.

The programs for A124166, the canonical program `A124166.P6880331802080243181` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124166 has offset 0).

The definition of A124166 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124166.P6880331802080243181

`10*A105279(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124166

/-- `10*A105279(n)` -/
def P6880331802080243181.Spec : Prop :=
  ∀ n, P6880331802080243181.a n = A124166 n

theorem P6880331802080243181.correct : P6880331802080243181.Spec := by
  intro n
  simp only [A124166]

end A124166

/-! ## A124166.P1186022737228668897

`∑[10^(n+1)]-10`
-/

namespace A124166.P1186022737228668897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 10

end

end A124166.P1186022737228668897

namespace A124166

/-- `∑[10^(n+1)]-10` -/
def P1186022737228668897.Spec : Prop :=
  ∀ n, P1186022737228668897.a n = A124166 n

end A124166

/-! ## A124166.P3396019354067366797

`10*xor(1, ∑[10^n])`
-/

namespace A124166.P3396019354067366797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124166.P3396019354067366797

namespace A124166

/-- `10*xor(1, ∑[10^n])` -/
def P3396019354067366797.Spec : Prop :=
  ∀ n, (P3396019354067366797.a n : ℤ) = A124166 n

end A124166

/-! ## A124166.P1360720799819948552

`∑[10*and(10^n, -2)]`
-/

namespace A124166.P1360720799819948552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * Int.land (10 ^ n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124166.P1360720799819948552

namespace A124166

/-- `∑[10*and(10^n, -2)]` -/
def P1360720799819948552.Spec : Prop :=
  ∀ n, P1360720799819948552.a n = A124166 n

end A124166

/-! ## A124166.P8091863981641127621

`10*(a(n-1)+10)` with `a(0)=0`
-/

namespace A124166.P8091863981641127621
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  10 * (a (n - 1) + 10)

end

end A124166.P8091863981641127621

namespace A124166

/-- `10*(a(n-1)+10)` -/
def P8091863981641127621.Spec : Prop :=
  ∀ n, (P8091863981641127621.a n : ℤ) = A124166 n

end A124166

/-! ## A124166.P14015760989529248708

`∑[and(-n, 10^(n+1))]`
-/

namespace A124166.P14015760989529248708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) (10 ^ (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124166.P14015760989529248708

namespace A124166

/-- `∑[and(-n, 10^(n+1))]` -/
def P14015760989529248708.Spec : Prop :=
  ∀ n, P14015760989529248708.a n = A124166 n

end A124166

/-! ## A124166.P5514869475041168471

`10*∑[10*a(n-1)]` with `a(0)=0, a(1)=10`
-/

namespace A124166.P5514869475041168471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A124166.P5514869475041168471

namespace A124166

/-- `10*∑[10*a(n-1)]` -/
def P5514869475041168471.Spec : Prop :=
  ∀ n, (P5514869475041168471.a n : ℤ) = A124166 n

end A124166

/-! ## A124166.P4836272655322592742

`abs(a(n-1)+10^(n+1))` with `a(0)=0`
-/

namespace A124166.P4836272655322592742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 10 ^ (n + 1)

end

end A124166.P4836272655322592742

namespace A124166

/-- `abs(a(n-1)+10^(n+1))` -/
def P4836272655322592742.Spec : Prop :=
  ∀ n, (P4836272655322592742.a n : ℤ) = A124166 n

end A124166

/-! ## A124166.P858220702660441783

`floor(a(n-1)+10^(n+1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A124166.P858220702660441783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 10 ^ (n + 1)

end

end A124166.P858220702660441783

namespace A124166

/-- `floor(a(n-1)+10^(n+1))` -/
def P858220702660441783.Spec : Prop :=
  ∀ n, (P858220702660441783.a n : ℤ) = A124166 n

end A124166

/-! ## A124166.P3482876165317980079

`ceil(a(n-1)+10^(n+1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A124166.P3482876165317980079
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 10 ^ (n + 1)

end

end A124166.P3482876165317980079

namespace A124166

/-- `ceil(a(n-1)+10^(n+1))` -/
def P3482876165317980079.Spec : Prop :=
  ∀ n, (P3482876165317980079.a n : ℤ) = A124166 n

end A124166

/-!
# A124167: a(n) = 10*(10^n-1).

The programs for A124167, the canonical program `A124167.P13896893363234218032` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124167 has offset 0).

The definition of A124167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*(10^n-1)` (program `A124167.P13896893363234218032`, by `A124167.P13896893363234218032.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A124167.P13896893363234218032

`10*(10^n-1)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124167

/-- `10*(10^n-1)` -/
def P13896893363234218032.Spec : Prop :=
  ∀ n, P13896893363234218032.a n = A124167 n

theorem P13896893363234218032.correct : P13896893363234218032.Spec := by
  intro n
  simp only [A124167]

end A124167

/-! ## A124167.P3101091244706980817

`11*a(n-1)-10*a(n-2)` with `a(0)=0, a(1)=90`
-/

namespace A124167.P3101091244706980817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 90] fun n a =>
  11 * a (n - 1) - 10 * a (n - 2)

end

end A124167.P3101091244706980817

namespace A124167

/-- `11*a(n-1)-10*a(n-2)` -/
def P3101091244706980817.Spec : Prop :=
  ∀ n, P3101091244706980817.a n = A124167 n

end A124167

/-! ## A124167.P136730991088581217

`lcm(10, 1-10^n)`
-/

namespace A124167.P136730991088581217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 10 (1 - (10 ^ n : ℤ))

end

end A124167.P136730991088581217

namespace A124167

/-- `lcm(10, 1-10^n)` -/
def P136730991088581217.Spec : Prop :=
  ∀ n, (P136730991088581217.a n : ℤ) = A124167 n

end A124167

/-! ## A124167.P3025807861980036190

`∑[and(-n, Δ[10^n])]`
-/

namespace A124167.P3025807861980036190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(n : ℤ)) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124167.P3025807861980036190

namespace A124167

/-- `∑[and(-n, Δ[10^n])]` -/
def P3025807861980036190.Spec : Prop :=
  ∀ n, P3025807861980036190.a n = A124167 n

end A124167

/-! ## A124167.P17426938084768243369

`∑[9*and(10^n, -2)]`
-/

namespace A124167.P17426938084768243369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * Int.land (10 ^ n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124167.P17426938084768243369

namespace A124167

/-- `∑[9*and(10^n, -2)]` -/
def P17426938084768243369.Spec : Prop :=
  ∀ n, P17426938084768243369.a n = A124167 n

end A124167

/-! ## A124167.P9722775541603848478

`∑[lcm(9, and(10^n, -2))]`
-/

namespace A124167.P9722775541603848478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 9 (Int.land (10 ^ n : ℤ) (-2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124167.P9722775541603848478

namespace A124167

/-- `∑[lcm(9, and(10^n, -2))]` -/
def P9722775541603848478.Spec : Prop :=
  ∀ n, (P9722775541603848478.a n : ℤ) = A124167 n

end A124167

/-! ## A124167.P17818073147466066783

`∑[10*a(n-1)]` with `a(0)=0, a(1)=90`
-/

namespace A124167.P17818073147466066783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 90] fun n f1 =>
  10 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124167.P17818073147466066783

namespace A124167

/-- `∑[10*a(n-1)]` -/
def P17818073147466066783.Spec : Prop :=
  ∀ n, (P17818073147466066783.a n : ℤ) = A124167 n

end A124167

/-! ## A124167.P4786752473854956167

`record[10^abs(1-n)-10]`
-/

namespace A124167.P4786752473854956167
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (10 : ℚ) ^ (|1 - (n : ℤ)| : ℤ) - 10

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124167.P4786752473854956167

namespace A124167

/-- `record[10^abs(1-n)-10]` -/
def P4786752473854956167.Spec : Prop :=
  ∀ n, P4786752473854956167.a n = (A124167 n : ℚ)

end A124167

/-! ## A124167.P6614661243983964680

`∑[A085952(n)-1]`
-/

namespace A124167.P6614661243983964680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085952 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124167.P6614661243983964680

namespace A124167

/-- `∑[A085952(n)-1]` -/
def P6614661243983964680.Spec : Prop :=
  ∀ n, P6614661243983964680.a n = A124167 n

end A124167

/-!
# A124168: Union of all n-Fibonacci sequences, that is, all sequences s(0) = s(1) = ... = s(n-2) = 0, s(n-1) = 1 and for k >= n, s(k) = s(k-1) + ... + s(k-n).

The programs for A124168, there is no canonical definition to state claims against.
-/

/-! ## A124168.P12714015604349712393

`lt[0, char[A048887(n+1)]]`
-/

namespace A124168.P12714015604349712393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048887 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124168.P12714015604349712393

/-! ## A124168.P13533001235046698051

`eq[1, char[A126198(n+1)]]`
-/

namespace A124168.P13533001235046698051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126198 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124168.P13533001235046698051

/-! ## A124168.P13608507863244721083

`eq[char[A092921(n)], A054977(n)]`
-/

namespace A124168.P13608507863244721083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A124168.P13608507863244721083

/-! ## A124168.P12239406832848434654

`eq[char[A092921(n)], A057427(n)]`
-/

namespace A124168.P12239406832848434654
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A124168.P12239406832848434654

/-! ## A124168.P1539417511249485756

`eq[1, A000038(n)+char[A092921(n)]]`
-/

namespace A124168.P1539417511249485756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + ((if ∃ j, f3 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124168.P1539417511249485756

/-!
# A124171: Sequence obtained by reading the triangles shown below by rows.

The programs for A124171, the canonical program `A124171.P12265873392764522970` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124171 has offset 1).

The definition of A124171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124171.P1464023907562004561

`n+1-C(∑[char[C(n, 3)]]+1, 3)`
-/

namespace A124171.P1464023907562004561
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1) 3 : ℤ)

end

end A124171.P1464023907562004561

namespace A124171

/-- `n+1-C(∑[char[C(n, 3)]]+1, 3)` -/
def P1464023907562004561.Spec : Prop :=
  ∀ n, P1464023907562004561.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P13402274275658352736

`(1-char[C(n, 3)])*a(n-1)+1` with `a(0)=1`
-/

namespace A124171.P13402274275658352736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) * a (n - 1) + 1

end

end A124171.P13402274275658352736

namespace A124171

/-- `(1-char[C(n, 3)])*a(n-1)+1` -/
def P13402274275658352736.Spec : Prop :=
  ∀ n, P13402274275658352736.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P10672277619290992693

`1-(char[C(n, 3)]-1)*a(n-1)` with `a(0)=1`
-/

namespace A124171.P10672277619290992693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) * a (n - 1)

end

end A124171.P10672277619290992693

namespace A124171

/-- `1-(char[C(n, 3)]-1)*a(n-1)` -/
def P10672277619290992693.Spec : Prop :=
  ∀ n, P10672277619290992693.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P10900344460436396763

`(a(n-1)+1)^(1-char[C(n, 3)])` with `a(0)=1`
-/

namespace A124171.P10900344460436396763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℤ)

end

end A124171.P10900344460436396763

namespace A124171

/-- `(a(n-1)+1)^(1-char[C(n, 3)])` -/
def P10900344460436396763.Spec : Prop :=
  ∀ n, P10900344460436396763.a n = (A124171 (n + 1) : ℚ)

end A124171

/-! ## A124171.P3979751646965440971

`lcm(char[C(n, 3)]-1, a(n-1))+1` with `a(0)=1`
-/

namespace A124171.P3979751646965440971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - 1) (a (n - 1) : ℤ) + 1

end

end A124171.P3979751646965440971

namespace A124171

/-- `lcm(char[C(n, 3)]-1, a(n-1))+1` -/
def P3979751646965440971.Spec : Prop :=
  ∀ n, (P3979751646965440971.a n : ℤ) = A124171 (n + 1)

end A124171

/-! ## A124171.P9106831060622008945

`(a(n-1)+1)^((char[∑[∑[n]]]+1)%2)` with `a(0)=1`
-/

namespace A124171.P9106831060622008945
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + 1) ^ (((if ∃ j, f1 j = n then 1 else 0) + 1) % 2)

end

end A124171.P9106831060622008945

namespace A124171

/-- `(a(n-1)+1)^((char[∑[∑[n]]]+1)%2)` -/
def P9106831060622008945.Spec : Prop :=
  ∀ n, (P9106831060622008945.a n : ℤ) = A124171 (n + 1)

end A124171

/-! ## A124171.P1990123377788443802

`A332663(n)+1`
-/

namespace A124171.P1990123377788443802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332663 n + 1

end

end A124171.P1990123377788443802

namespace A124171

/-- `A332663(n)+1` -/
def P1990123377788443802.Spec : Prop :=
  ∀ n, P1990123377788443802.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P7609375484962023147

`A332662(2*n)+1`
-/

namespace A124171.P7609375484962023147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332662 (2 * n) + 1

end

end A124171.P7609375484962023147

namespace A124171

/-- `A332662(2*n)+1` -/
def P7609375484962023147.Spec : Prop :=
  ∀ n, P7609375484962023147.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P12265873392764522970

`a(n-1)*A014306(n)+1` with `a(0)=1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124171

/-- `a(n-1)*A014306(n)+1` -/
def P12265873392764522970.Spec : Prop :=
  ∀ n, P12265873392764522970.a n = A124171 (n + 1)

theorem P12265873392764522970.correct : P12265873392764522970.Spec := by
  intro n
  simp only [A124171, Nat.add_sub_cancel]

end A124171

/-! ## A124171.P15970594918058574806

`n+1-A000292(A056556(n))`
-/

namespace A124171.P15970594918058574806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A000292 (A056556 n).toNat

end

end A124171.P15970594918058574806

namespace A124171

/-- `n+1-A000292(A056556(n))` -/
def P15970594918058574806.Spec : Prop :=
  ∀ n, P15970594918058574806.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P13122722836757017583

`A375216(A014311(n+1))`
-/

namespace A124171.P13122722836757017583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A014311 (n + 1)).toNat

end

end A124171.P13122722836757017583

namespace A124171

/-- `A375216(A014311(n+1))` -/
def P13122722836757017583.Spec : Prop :=
  ∀ n, P13122722836757017583.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P18227275417466507371

`A375216(A379267(n+1))`
-/

namespace A124171.P18227275417466507371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375216 (A379267 (n + 1)).toNat

end

end A124171.P18227275417466507371

namespace A124171

/-- `A375216(A379267(n+1))` -/
def P18227275417466507371.Spec : Prop :=
  ∀ n, P18227275417466507371.a n = A124171 (n + 1)

end A124171

/-! ## A124171.P13819142213100029560

`A124757(A238246(n+1))`
-/

namespace A124171.P13819142213100029560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A238246 (n + 1)).toNat

end

end A124171.P13819142213100029560

namespace A124171

/-- `A124757(A238246(n+1))` -/
def P13819142213100029560.Spec : Prop :=
  ∀ n, P13819142213100029560.a n = A124171 (n + 1)

end A124171

/-!
# A124173: Primes with palindromic primes indices.

The programs for A124173, there is no canonical definition to state claims against.
-/

/-! ## A124173.P16950216919544777808

`A006450(A075807(n+1))`
-/

namespace A124173.P16950216919544777808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A075807 (n + 1)).toNat

end

end A124173.P16950216919544777808

/-! ## A124173.P11794180184684844905

`A064988(A002385(n+1))`
-/

namespace A124173.P11794180184684844905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A002385 (n + 1)).toNat

end

end A124173.P11794180184684844905

/-! ## A124173.P5792166863428396855

`A064988(A069217(n+2))`
-/

namespace A124173.P5792166863428396855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (A069217 (n + 2)).toNat

end

end A124173.P5792166863428396855

/-! ## A124173.P17672332043942268002

`A064988(p?[A002113(n+1)])`
-/

namespace A124173.P17672332043942268002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064988 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A124173.P17672332043942268002

/-!
# A124174: Sophie Germain triangular numbers tr: 2*tr+1 is also a triangular number.

The programs for A124174, the canonical program `A124174.P3616789106235713467` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124174 has offset 1).

The definition of A124174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124174.P3616789106235713467

`34*a(n-2)-a(n-4)+11` with `a(0)=0, a(1)=1, a(2)=10, a(3)=45`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124174

/-- `34*a(n-2)-a(n-4)+11` -/
def P3616789106235713467.Spec : Prop :=
  ∀ n, P3616789106235713467.a n = A124174 (n + 1)

theorem P3616789106235713467.correct : P3616789106235713467.Spec := by
  intro n
  simp only [A124174, Nat.add_sub_cancel]

end A124174

/-! ## A124174.P9439684896376946121

`(A124124(n+1)²+A124124(n+1)-2)/4`
-/

namespace A124174.P9439684896376946121
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124124 (n + 1) ^ 2 + A124124 (n + 1) - 2 : ℚ) / 4

end

end A124174.P9439684896376946121

namespace A124174

/-- `(A124124(n+1)²+A124124(n+1)-2)/4` -/
def P9439684896376946121.Spec : Prop :=
  ∀ n, P9439684896376946121.a n = (A124174 (n + 1) : ℚ)

end A124174

/-! ## A124174.P11198533249764146673

`A217278(2*n)`
-/

namespace A124174.P11198533249764146673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (2 * n)

end

end A124174.P11198533249764146673

namespace A124174

/-- `A217278(2*n)` -/
def P11198533249764146673.Spec : Prop :=
  ∀ n, P11198533249764146673.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P2779807933216530853

`floor(A069017(n+1)/2)`
-/

namespace A124174.P2779807933216530853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A069017 (n + 1) : ℚ) / 2⌋

end

end A124174.P2779807933216530853

namespace A124174

/-- `floor(A069017(n+1)/2)` -/
def P2779807933216530853.Spec : Prop :=
  ∀ n, P2779807933216530853.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P2506921804965667299

`floor((round((A077442(n)/2)²)+1)/2)`
-/

namespace A124174.P2506921804965667299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.roundAway (((A077442 n : ℚ) / 2) ^ 2) + 1 : ℚ) / 2⌋

end

end A124174.P2506921804965667299

namespace A124174

/-- `floor((round((A077442(n)/2)²)+1)/2)` -/
def P2506921804965667299.Spec : Prop :=
  ∀ n, P2506921804965667299.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P10321781517435969767

`record[A217278(A026741(n)+1)]`
-/

namespace A124174.P10321781517435969767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A026741 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124174.P10321781517435969767

namespace A124174

/-- `record[A217278(A026741(n)+1)]` -/
def P10321781517435969767.Spec : Prop :=
  ∀ n, P10321781517435969767.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P300870204487496290

`record[A217278(A029579(n)-1)]`
-/

namespace A124174.P300870204487496290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A029579 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124174.P300870204487496290

namespace A124174

/-- `record[A217278(A029579(n)-1)]` -/
def P300870204487496290.Spec : Prop :=
  ∀ n, P300870204487496290.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P26109222051643708

`(A216134(n)+A216134(n)²)/2`
-/

namespace A124174.P26109222051643708
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216134 n + A216134 n ^ 2 : ℚ) / 2

end

end A124174.P26109222051643708

namespace A124174

/-- `(A216134(n)+A216134(n)²)/2` -/
def P26109222051643708.Spec : Prop :=
  ∀ n, P26109222051643708.a n = (A124174 (n + 1) : ℚ)

end A124174

/-! ## A124174.P14893745902433129035

`∑[A079496(n)/2]*A216134(n)`
-/

namespace A124174.P14893745902433129035
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079496 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A216134 n : ℚ)

end

end A124174.P14893745902433129035

namespace A124174

/-- `∑[A079496(n)/2]*A216134(n)` -/
def P14893745902433129035.Spec : Prop :=
  ∀ n, P14893745902433129035.a n = (A124174 (n + 1) : ℚ)

end A124174

/-! ## A124174.P8377892469850925816

`record[A217278(A008611(A029579(n)))]`
-/

namespace A124174.P8377892469850925816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A008611 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124174.P8377892469850925816

namespace A124174

/-- `record[A217278(A008611(A029579(n)))]` -/
def P8377892469850925816.Spec : Prop :=
  ∀ n, P8377892469850925816.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P12463718676322798212

`record[A217278(A004275(A110658(n)))]`
-/

namespace A124174.P12463718676322798212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A004275 (A110658 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124174.P12463718676322798212

namespace A124174

/-- `record[A217278(A004275(A110658(n)))]` -/
def P12463718676322798212.Spec : Prop :=
  ∀ n, P12463718676322798212.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P11248069370710871484

`record[A217278(A004275(A061395(n+1)))]`
-/

namespace A124174.P11248069370710871484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A004275 (A061395 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124174.P11248069370710871484

namespace A124174

/-- `record[A217278(A004275(A061395(n+1)))]` -/
def P11248069370710871484.Spec : Prop :=
  ∀ n, P11248069370710871484.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P10996366972647764202

`C(∑[A079496(n)], 2)`
-/

namespace A124174.P10996366972647764202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079496 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A124174.P10996366972647764202

namespace A124174

/-- `C(∑[A079496(n)], 2)` -/
def P10996366972647764202.Spec : Prop :=
  ∀ n, (P10996366972647764202.a n : ℤ) = A124174 (n + 1)

end A124174

/-! ## A124174.P12684490889181292254

`floor(A077442(n)²/8)`
-/

namespace A124174.P12684490889181292254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A077442 n ^ 2 : ℚ) / 8⌋

end

end A124174.P12684490889181292254

namespace A124174

/-- `floor(A077442(n)²/8)` -/
def P12684490889181292254.Spec : Prop :=
  ∀ n, P12684490889181292254.a n = A124174 (n + 1)

end A124174

/-! ## A124174.P16802087368055425518

`floor((A077443(n+1)/2)²/4)`
-/

namespace A124174.P16802087368055425518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((A077443 (n + 1) : ℚ) / 2) ^ 2 / 4⌋

end

end A124174.P16802087368055425518

namespace A124174

/-- `floor((A077443(n+1)/2)²/4)` -/
def P16802087368055425518.Spec : Prop :=
  ∀ n, P16802087368055425518.a n = A124174 (n + 1)

end A124174

/-!
# A124179: a(n) = prime(R(prime(n))) where prime(i) is the i-th prime and R(p) is the value of the reverse of the digits of p.

The programs for A124179, there is no canonical definition to state claims against.
-/

/-! ## A124179.P12155188303855860862

`A000040(A004087(n+1))`
-/

namespace A124179.P12155188303855860862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004087 (n + 1)).toNat

end

end A124179.P12155188303855860862

/-! ## A124179.P1018652370292405961

`A000040(A004086(p?[comp[n²]]))`
-/

namespace A124179.P1018652370292405961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004086 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))).toNat

end

end A124179.P1018652370292405961

/-! ## A124179.P10483110853242264649

`A008578(A004087(n+1)+1)`
-/

namespace A124179.P10483110853242264649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004087 (n + 1) + 1).toNat

end

end A124179.P10483110853242264649

/-! ## A124179.P45983247417328172

`A182986(A004087(n+1)+1)`
-/

namespace A124179.P45983247417328172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A004087 (n + 1) + 1).toNat

end

end A124179.P45983247417328172

/-! ## A124179.P11109277354154999104

`A000040(A004086(A000040(n+1)))`
-/

namespace A124179.P11109277354154999104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004086 (A000040 (n + 1)).toNat).toNat

end

end A124179.P11109277354154999104

/-! ## A124179.P16732812220177166597

`A000040(A061227(n)-A000040(n+1))`
-/

namespace A124179.P16732812220177166597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A061227 n - A000040 (n + 1)).toNat

end

end A124179.P16732812220177166597

/-! ## A124179.P17018537580385779828

`A000040(A000040(n+1)-A068396(n+1))`
-/

namespace A124179.P17018537580385779828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000040 (n + 1) - A068396 (n + 1)).toNat

end

end A124179.P17018537580385779828

/-! ## A124179.P13771050090393454667

`A000040(A133019(n+1)/A000040(n+1))`
-/

namespace A124179.P13771050090393454667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.roundAway ((A133019 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ))).toNat

end

end A124179.P13771050090393454667

/-! ## A124179.P9440729051274276181

`A075643(A004087(n+1)+1)`
-/

namespace A124179.P9440729051274276181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A004087 (n + 1) + 1).toNat

end

end A124179.P9440729051274276181

/-!
# A124180: Prime(R(n)) where Prime(i) is the i-th prime and R(n) is the value of the reverse of the digits of n.

The programs for A124180, there is no canonical definition to state claims against.
-/

/-! ## A124180.P8516785315662575792

`A000040(A004086(n+1))`
-/

namespace A124180.P8516785315662575792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004086 (n + 1)).toNat

end

end A124180.P8516785315662575792

/-! ## A124180.P11540076895528336633

`A000040(A345110(n+1))`
-/

namespace A124180.P11540076895528336633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A345110 (n + 1)).toNat

end

end A124180.P11540076895528336633

/-! ## A124180.P13197886984173126500

`p?[A008578(A004086(n)+1)]`
-/

namespace A124180.P13197886984173126500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004086 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124180.P13197886984173126500

/-! ## A124180.P7436215065975456041

`A008578(A004086(n+1)+1)`
-/

namespace A124180.P7436215065975456041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004086 (n + 1) + 1).toNat

end

end A124180.P7436215065975456041

/-! ## A124180.P819980851263416443

`A182986(A004086(n+1)+1)`
-/

namespace A124180.P819980851263416443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A004086 (n + 1) + 1).toNat

end

end A124180.P819980851263416443

/-! ## A124180.P8791044576345292640

`A324050(A004086(n+1)+1)`
-/

namespace A124180.P8791044576345292640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324050 (A004086 (n + 1) + 1).toNat

end

end A124180.P8791044576345292640

/-! ## A124180.P11077078253646024298

`A000040(A135020(2*(n+1)))`
-/

namespace A124180.P11077078253646024298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A135020 (2 * (n + 1))).toNat

end

end A124180.P11077078253646024298

/-! ## A124180.P3460703267266801815

`A207790(2*A004086(n+1))`
-/

namespace A124180.P3460703267266801815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A004086 (n + 1)).toNat

end

end A124180.P3460703267266801815

/-! ## A124180.P8213442965154511147

`A000040(n+1-A056965(n+1))`
-/

namespace A124180.P8213442965154511147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((n + 1 : ℤ) - A056965 (n + 1)).toNat

end

end A124180.P8213442965154511147

/-! ## A124180.P12938392749141933779

`A000040(A056964(n+1)-(n+1))`
-/

namespace A124180.P12938392749141933779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056964 (n + 1) - (n + 1 : ℤ)).toNat

end

end A124180.P12938392749141933779

/-!
# A124181: Numbers n such that 1 + n + n^3 + n^5 + n^7 + n^9 + n^11 + n^13 + n^15 + n^17 + n^19 + n^21 + n^23 is prime.

The programs for A124181, there is no canonical definition to state claims against.
-/

/-! ## A124181.P5270269932764548340

`A001973(∑[A185996(n+2)^n])`
-/

namespace A124181.P5270269932764548340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185996 (n + 2) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001973 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124181.P5270269932764548340

/-!
# A124182: A skewed version of triangular array A081277.

The programs for A124182, there is no canonical definition to state claims against.
-/

/-! ## A124182.P17985035188813539248

`A201701(A061579(n))`
-/

namespace A124182.P17985035188813539248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A061579 n).toNat

end

end A124182.P17985035188813539248

/-! ## A124182.P8677559288783029871

`A201701(A114327(n)+n)`
-/

namespace A124182.P8677559288783029871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A114327 n + (n : ℤ)).toNat

end

end A124182.P8677559288783029871

/-! ## A124182.P4040187437726107148

`A201701(∑[A198954(n)-1])`
-/

namespace A124182.P4040187437726107148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198954 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A124182.P4040187437726107148

/-! ## A124182.P12047471776663036810

`A201701(A038722(n+1)-1)`
-/

namespace A124182.P12047471776663036810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A038722 (n + 1) - 1).toNat

end

end A124182.P12047471776663036810

/-! ## A124182.P18304830922553176051

`A201701(A093995(n+1)-(n+1))`
-/

namespace A124182.P18304830922553176051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A093995 (n + 1) - (n + 1 : ℤ)).toNat

end

end A124182.P18304830922553176051

/-! ## A124182.P14541887149498132158

`A201701(A023443(A038722(n+1)))`
-/

namespace A124182.P14541887149498132158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A023443 (A038722 (n + 1)).toNat).toNat

end

end A124182.P14541887149498132158

/-! ## A124182.P4576130670503999637

`A201701(A057944(n)+A025581(n))`
-/

namespace A124182.P4576130670503999637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201701 (A057944 n + A025581 n).toNat

end

end A124182.P4576130670503999637

/-!
# A124184: Positive integers not divisible by any of their own prime-factorization exponents.

The programs for A124184, the canonical program `A124184.P7724869670540839885` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124184 has offset 1).

The definition of A124184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 159 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124184.P7724869670540839885

`eq[0, A136176(n+1)]+1`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A124184

/-- `eq[0, A136176(n+1)]+1` -/
def P7724869670540839885.Spec : Prop :=
  ∀ n, (P7724869670540839885.a n : ℤ) = A124184 (n + 1)

theorem P7724869670540839885.correct : P7724869670540839885.Spec := by
  intro n
  simp only [A124184, Nat.add_sub_cancel]

end A124184

/-! ## A124184.P16871025528734198304

`A093178(2*(n+1))+lt[A136176(n+1), 1]`
-/

namespace A124184.P16871025528734198304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 (2 * (n + 1)) + (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n : ℤ)

end

end A124184.P16871025528734198304

namespace A124184

/-- `A093178(2*(n+1))+lt[A136176(n+1), 1]` -/
def P16871025528734198304.Spec : Prop :=
  ∀ n, P16871025528734198304.a n = A124184 (n + 1)

end A124184

/-! ## A124184.P16912678490646050381

`lt[n*A136176(A028310(n)), n]`
-/

namespace A124184.P16912678490646050381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A136176 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A124184.P16912678490646050381

namespace A124184

/-- `lt[n*A136176(A028310(n)), n]` -/
def P16912678490646050381.Spec : Prop :=
  ∀ n, (P16912678490646050381.a n : ℤ) = A124184 (n + 1)

end A124184

/-! ## A124184.P14565531815074358899

`lt[A136176(A028310(n+1)), 1]+1`
-/

namespace A124184.P14565531815074358899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A028310 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124184.P14565531815074358899

namespace A124184

/-- `lt[A136176(A028310(n+1)), 1]+1` -/
def P14565531815074358899.Spec : Prop :=
  ∀ n, (P14565531815074358899.a n : ℤ) = A124184 (n + 1)

end A124184

/-! ## A124184.P119844542197152098

`eq[A000007(n), A136176(A028310(n))]`
-/

namespace A124184.P119844542197152098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124184.P119844542197152098

namespace A124184

/-- `eq[A000007(n), A136176(A028310(n))]` -/
def P119844542197152098.Spec : Prop :=
  ∀ n, (P119844542197152098.a n : ℤ) = A124184 (n + 1)

end A124184

/-! ## A124184.P896743681525681147

`eq[A000038(n), A136176(A028310(n))]`
-/

namespace A124184.P896743681525681147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124184.P896743681525681147

namespace A124184

/-- `eq[A000038(n), A136176(A028310(n))]` -/
def P896743681525681147.Spec : Prop :=
  ∀ n, (P896743681525681147.a n : ℤ) = A124184 (n + 1)

end A124184

/-! ## A124184.P10833160149480958831

`lt[A136176(n+1), A050320(A256276(n+1)+1)]+1`
-/

namespace A124184.P10833160149480958831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050320 (A256276 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A124184.P10833160149480958831

namespace A124184

/-- `lt[A136176(n+1), A050320(A256276(n+1)+1)]+1` -/
def P10833160149480958831.Spec : Prop :=
  ∀ n, (P10833160149480958831.a n : ℤ) = A124184 (n + 1)

end A124184

/-!
# A124188: Number of 3-good permutations on {1,2,...,n}, i.e., permutations that contain each of the six patterns {123, 132, 213, 231, 312, 321} as a subsequence.

The programs for A124188, there is no canonical definition to state claims against.
-/

/-! ## A124188.P8296207807868243184

`A339166(2^n)`
-/

namespace A124188.P8296207807868243184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339166 (2 ^ n)

end

end A124188.P8296207807868243184

/-! ## A124188.P11999721303729723513

`and(-6, A071881(n))`
-/

namespace A124188.P11999721303729723513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-6) (A071881 n)

end

end A124188.P11999721303729723513

/-!
# A124190: a(n) is the largest prime < 4*a(n-1) for n > 1, with a(1) = 2.

The programs for A124190, there is no canonical definition to state claims against.
-/

/-! ## A124190.P6306590026515314472

`A000040(A000720(4*a(n-1)))` with `a(0)=2`
-/

namespace A124190.P6306590026515314472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (4 * a (n - 1)).toNat).toNat

end

end A124190.P6306590026515314472

/-! ## A124190.P6768921842857104157

`A000040(A000720(a(n-1)/(1/2)²))` with `a(0)=2`
-/

namespace A124190.P6768921842857104157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A000040 (A000720 (SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / ((1 : ℚ) / 2) ^ 2)).toNat).toNat

end

end A124190.P6768921842857104157

/-!
# A124191: a(n) = ((2 + 3*sqrt(2))^n - (2 - 3*sqrt(2))^n)/(2*sqrt(2)).

The programs for A124191, the canonical program `A124191.P17168617819133654608` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124191 has offset 1).

The definition of A124191 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A124191.P17168617819133654608

`4*a(n-1)+14*a(n-2)` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124191

/-- `4*a(n-1)+14*a(n-2)` -/
def P17168617819133654608.Spec : Prop :=
  ∀ n, (P17168617819133654608.a n : ℤ) = A124191 (n + 1)

theorem P17168617819133654608.correct : P17168617819133654608.Spec := by
  intro n
  simp only [A124191, Nat.add_sub_cancel]

end A124191

/-! ## A124191.P6194990445265171204

`((2+3*sqrt(2))^n-(2-3*sqrt(2))^n)/(2*sqrt(2))`
-/

namespace A124191.P6194990445265171204
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 + 3 * Real.sqrt (2 : ℝ)) ^ n - (2 - 3 * Real.sqrt (2 : ℝ)) ^ n) / (2 * Real.sqrt (2 : ℝ))

end

end A124191.P6194990445265171204

namespace A124191

/-- `((2+3*sqrt(2))^n-(2-3*sqrt(2))^n)/(2*sqrt(2))` -/
def P6194990445265171204.Spec : Prop :=
  ∀ n, P6194990445265171204.a n = (A124191 (n + 1) : ℝ)

end A124191

/-!
# A124192: Numbers k for which 8*k + 3 and 8*k + 5 are twin primes.

The programs for A124192, the canonical program `A124192.P10155367062783563682` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124192 has offset 1).

The definition of A124192 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1147 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124192.P10155367062783563682

`floor(p?[A186301(n+1)]/8)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A124192

/-- `floor(p?[A186301(n+1)]/8)` -/
def P10155367062783563682.Spec : Prop :=
  ∀ n, P10155367062783563682.a n = A124192 (n + 1)

theorem P10155367062783563682.correct : P10155367062783563682.Spec := by
  intro n
  simp only [A124192, Nat.add_sub_cancel]

end A124192

/-! ## A124192.P8153619811771725522

`round(p?[A186301(n+1)]/8)%A003185(n)`
-/

namespace A124192.P8153619811771725522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8)) (A003185 n)

end

end A124192.P8153619811771725522

namespace A124192

/-- `round(p?[A186301(n+1)]/8)%A003185(n)` -/
def P8153619811771725522.Spec : Prop :=
  ∀ n, P8153619811771725522.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P14878380662663703220

`∩[A005124(n+1), A105133(n+1)]`
-/

namespace A124192.P14878380662663703220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124192.P14878380662663703220

namespace A124192

/-- `∩[A005124(n+1), A105133(n+1)]` -/
def P14878380662663703220.Spec : Prop :=
  ∀ n, (P14878380662663703220.a n : ℤ) = A124192 (n + 1)

end A124192

/-! ## A124192.P7706595518113499116

`round(p?[A186301(n+1)]/8*A014963(12*n+6))`
-/

namespace A124192.P7706595518113499116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8 * (A014963 (12 * n + 6) : ℚ))

end

end A124192.P7706595518113499116

namespace A124192

/-- `round(p?[A186301(n+1)]/8*A014963(12*n+6))` -/
def P7706595518113499116.Spec : Prop :=
  ∀ n, P7706595518113499116.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P11125806640669735743

`record[A273943(A273943(A243811(n+1)))]`
-/

namespace A124192.P11125806640669735743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A273943 (A243811 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124192.P11125806640669735743

namespace A124192

/-- `record[A273943(A273943(A243811(n+1)))]` -/
def P11125806640669735743.Spec : Prop :=
  ∀ n, P11125806640669735743.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P342026643513742436

`eq[A010873(2*n+1), A171487(2*(n+1))]/2`
-/

namespace A124192.P342026643513742436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171487 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A124192.P342026643513742436

namespace A124192

/-- `eq[A010873(2*n+1), A171487(2*(n+1))]/2` -/
def P342026643513742436.Spec : Prop :=
  ∀ n, P342026643513742436.a n = (A124192 (n + 1) : ℚ)

end A124192

/-! ## A124192.P4232275420838053243

`record[A249122(A045753(n+1))]`
-/

namespace A124192.P4232275420838053243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249122 (A045753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124192.P4232275420838053243

namespace A124192

/-- `record[A249122(A045753(n+1))]` -/
def P4232275420838053243.Spec : Prop :=
  ∀ n, P4232275420838053243.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P16665527192133671387

`record[A103391(A071699(n+1))-2]`
-/

namespace A124192.P16665527192133671387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A071699 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124192.P16665527192133671387

namespace A124192

/-- `record[A103391(A071699(n+1))-2]` -/
def P16665527192133671387.Spec : Prop :=
  ∀ n, P16665527192133671387.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P18092099136381475218

`A175126(record[A000265(A045753(n+1))])`
-/

namespace A124192.P18092099136381475218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A045753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124192.P18092099136381475218

namespace A124192

/-- `A175126(record[A000265(A045753(n+1))])` -/
def P18092099136381475218.Spec : Prop :=
  ∀ n, P18092099136381475218.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P15667682311740085225

`A057353(record[A009531(A002822(n+1))])`
-/

namespace A124192.P15667682311740085225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A002822 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124192.P15667682311740085225

namespace A124192

/-- `A057353(record[A009531(A002822(n+1))])` -/
def P15667682311740085225.Spec : Prop :=
  ∀ n, P15667682311740085225.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P432997023879329846

`eq[2, A116982(2*n+1)]`
-/

namespace A124192.P432997023879329846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116982 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124192.P432997023879329846

namespace A124192

/-- `eq[2, A116982(2*n+1)]` -/
def P432997023879329846.Spec : Prop :=
  ∀ n, (P432997023879329846.a n : ℤ) = A124192 (n + 1)

end A124192

/-! ## A124192.P11066451873404216153

`eq[3, A258811(2*n+1)]`
-/

namespace A124192.P11066451873404216153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258811 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124192.P11066451873404216153

namespace A124192

/-- `eq[3, A258811(2*n+1)]` -/
def P11066451873404216153.Spec : Prop :=
  ∀ n, (P11066451873404216153.a n : ℤ) = A124192 (n + 1)

end A124192

/-! ## A124192.P18195117373453651943

`A004525(record[A029578(A045753(n+1))])`
-/

namespace A124192.P18195117373453651943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A045753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124192.P18195117373453651943

namespace A124192

/-- `A004525(record[A029578(A045753(n+1))])` -/
def P18195117373453651943.Spec : Prop :=
  ∀ n, P18195117373453651943.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P7497863179048540899

`A029578(record[A029578(A045753(n+1))])`
-/

namespace A124192.P7497863179048540899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A045753 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A124192.P7497863179048540899

namespace A124192

/-- `A029578(record[A029578(A045753(n+1))])` -/
def P7497863179048540899.Spec : Prop :=
  ∀ n, P7497863179048540899.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P15939535363974662010

`record[A025480(A014682(A153196(n+1)))]`
-/

namespace A124192.P15939535363974662010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A014682 (A153196 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124192.P15939535363974662010

namespace A124192

/-- `record[A025480(A014682(A153196(n+1)))]` -/
def P15939535363974662010.Spec : Prop :=
  ∀ n, P15939535363974662010.a n = A124192 (n + 1)

end A124192

/-! ## A124192.P7709112736984127371

`eq[A009531(2*n+1), A171487(2*(n+1))]/2`
-/

namespace A124192.P7709112736984127371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171487 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A124192.P7709112736984127371

namespace A124192

/-- `eq[A009531(2*n+1), A171487(2*(n+1))]/2` -/
def P7709112736984127371.Spec : Prop :=
  ∀ n, P7709112736984127371.a n = (A124192 (n + 1) : ℚ)

end A124192

/-!
# A124195: a(1)=1. a(n) = n - GCD(a(n-1),n).

The programs for A124195, the canonical program `A124195.P5292708127076547899` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124195 has offset 1).

The definition of A124195 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124195.P5292708127076547899

`1-gcd(n+1, a(n-1))+n` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124195

/-- `1-gcd(n+1, a(n-1))+n` -/
def P5292708127076547899.Spec : Prop :=
  ∀ n, P5292708127076547899.a n = A124195 (n + 1)

theorem P5292708127076547899.correct : P5292708127076547899.Spec := by
  intro n
  simp only [A124195, Nat.add_sub_cancel]

end A124195

/-! ## A124195.P14012346801882333366

`a(n-1)-Δ[gcd(n, -a(n-1))-n]` with `a(0)=1, a(1)=1`
-/

namespace A124195.P14012346801882333366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  (Int.gcd (n : ℤ) (-f1 (n - 1)) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) - (f1 (n + 1) - f1 n)

end

end A124195.P14012346801882333366

namespace A124195

/-- `a(n-1)-Δ[gcd(n, -a(n-1))-n]` -/
def P14012346801882333366.Spec : Prop :=
  ∀ n, P14012346801882333366.a n = A124195 (n + 1)

end A124195

/-! ## A124195.P7014221273654919606

`1-(gcd(1-(a(n-1)-n), floor(a(n-1)))-n)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A124195.P7014221273654919606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ((Int.gcd (1 - (a (n - 1) - (n : ℤ))) (a (n - 1)) : ℤ) - (n : ℤ))

end

end A124195.P7014221273654919606

namespace A124195

/-- `1-(gcd(1-(a(n-1)-n), floor(a(n-1)))-n)` -/
def P7014221273654919606.Spec : Prop :=
  ∀ n, P7014221273654919606.a n = A124195 (n + 1)

end A124195

/-! ## A124195.P1507469614996531354

`1-A137866(n+1)+n`
-/

namespace A124195.P1507469614996531354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A137866 (n + 1) + (n : ℤ)

end

end A124195.P1507469614996531354

namespace A124195

/-- `1-A137866(n+1)+n` -/
def P1507469614996531354.Spec : Prop :=
  ∀ n, P1507469614996531354.a n = A124195 (n + 1)

end A124195

/-! ## A124195.P8692378080415534593

`2-A099427(n+1)+n`
-/

namespace A124195.P8692378080415534593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A099427 (n + 1) + (n : ℤ)

end

end A124195.P8692378080415534593

namespace A124195

/-- `2-A099427(n+1)+n` -/
def P8692378080415534593.Spec : Prop :=
  ∀ n, P8692378080415534593.a n = A124195 (n + 1)

end A124195

/-! ## A124195.P14730283006431674977

`A004736(A099427(n+1)+∑[n])`
-/

namespace A124195.P14730283006431674977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A099427 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A124195.P14730283006431674977

namespace A124195

/-- `A004736(A099427(n+1)+∑[n])` -/
def P14730283006431674977.Spec : Prop :=
  ∀ n, P14730283006431674977.a n = A124195 (n + 1)

end A124195

/-! ## A124195.P8671590363911847719

`A004736(A137866(n+1)+A000124(n))`
-/

namespace A124195.P8671590363911847719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A137866 (n + 1) + A000124 n).toNat

end

end A124195.P8671590363911847719

namespace A124195

/-- `A004736(A137866(n+1)+A000124(n))` -/
def P8671590363911847719.Spec : Prop :=
  ∀ n, P8671590363911847719.a n = A124195 (n + 1)

end A124195

/-!
# A124197: Number of subsets S of {1,2,3,...,n}, including the empty subset, such that if x and y are in S with x

The programs for A124197, there is no canonical definition to state claims against.
-/

/-! ## A124197.P5836987075735126485

`∑[∑[∑{d}[1-n, #%2]]]`
-/

namespace A124197.P5836987075735126485
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, d % 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P5836987075735126485

/-! ## A124197.P218531871836326835

`∑[∑[∑{d}[1-n, and(1, #)]]]`
-/

namespace A124197.P218531871836326835
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, Nat.land 1 d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P218531871836326835

/-! ## A124197.P11889491064776706934

`∑[∑[∑{d}[1-n, 2-gcd(2, #)]]]`
-/

namespace A124197.P11889491064776706934
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, (2 - (Nat.gcd 2 d : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P11889491064776706934

/-! ## A124197.P14088602786411054355

`∑[A060831(abs(1-n))]+n`
-/

namespace A124197.P14088602786411054355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A124197.P14088602786411054355

/-! ## A124197.P17241108507952911273

`∑[∑[∑{d}[1-n, A000035(#)]]]`
-/

namespace A124197.P17241108507952911273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, A000035 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P17241108507952911273

/-! ## A124197.P4920153728698990484

`∑[∑[∑{d}[2*(n-1), A296066(#)]]]`
-/

namespace A124197.P4920153728698990484
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n).natAbs, A296066 d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P4920153728698990484

/-! ## A124197.P9450349119066763397

`∑[∑[A069283(abs(1-n))]+n]+1`
-/

namespace A124197.P9450349119066763397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A124197.P9450349119066763397

/-! ## A124197.P3086501283507554955

`∑[∑[A299480(A004281(n))]]`
-/

namespace A124197.P3086501283507554955
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299480 (A004281 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P3086501283507554955

/-! ## A124197.P5065728529047613116

`∑[∑[A277322(A074845(n+1))]]`
-/

namespace A124197.P5065728529047613116
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277322 (A074845 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P5065728529047613116

/-! ## A124197.P5623039157884568677

`∑[A060831(A004273(n)-n)+1]`
-/

namespace A124197.P5623039157884568677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060831 (A004273 n - (n : ℤ)).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A124197.P5623039157884568677

/-!
# A124198: Numbers k such that 21*k + 1 is prime.

The programs for A124198, the canonical program `A124198.P10962644063931018871` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A124198 has offset 1).

The definition of A124198 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6530 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A124198.P10962644063931018871

`floor(p?[a(n-1)+21]/21)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A124198

/-- `floor(p?[a(n-1)+21]/21)` -/
def P10962644063931018871.Spec : Prop :=
  ∀ n, P10962644063931018871.a n = A124198 (n + 1)

theorem P10962644063931018871.correct : P10962644063931018871.Spec := by
  intro n
  simp only [A124198, Nat.add_sub_cancel]

end A124198

/-! ## A124198.P7526249919943523141

`eq[1, ∑{e}[3*7*n+1, #]]`
-/

namespace A124198.P7526249919943523141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (7 * n) + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124198.P7526249919943523141

namespace A124198

/-- `eq[1, ∑{e}[3*7*n+1, #]]` -/
def P7526249919943523141.Spec : Prop :=
  ∀ n, (P7526249919943523141.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P15884165305975608672

`eq[1, A001222(21*n+1)]`
-/

namespace A124198.P15884165305975608672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (21 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124198.P15884165305975608672

namespace A124198

/-- `eq[1, A001222(21*n+1)]` -/
def P15884165305975608672.Spec : Prop :=
  ∀ n, (P15884165305975608672.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P7284002597103096099

`eq[2, A000005(21*n+1)]`
-/

namespace A124198.P7284002597103096099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (21 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124198.P7284002597103096099

namespace A124198

/-- `eq[2, A000005(21*n+1)]` -/
def P7284002597103096099.Spec : Prop :=
  ∀ n, (P7284002597103096099.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P1895616771472989082

`lt[A001222(3*7*(n+1)+1), 2]+1`
-/

namespace A124198.P1895616771472989082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (7 * (n + 1)) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A124198.P1895616771472989082

namespace A124198

/-- `lt[A001222(3*7*(n+1)+1), 2]+1` -/
def P1895616771472989082.Spec : Prop :=
  ∀ n, (P1895616771472989082.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P12007123181769066351

`lt[2*n+3, A020639(3*7*n+1)]`
-/

namespace A124198.P12007123181769066351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * (7 * n) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A124198.P12007123181769066351

namespace A124198

/-- `lt[2*n+3, A020639(3*7*n+1)]` -/
def P12007123181769066351.Spec : Prop :=
  ∀ n, (P12007123181769066351.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P4265226571577159885

`eq[1, A001222(A215146(n))²]`
-/

namespace A124198.P4265226571577159885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A215146 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124198.P4265226571577159885

namespace A124198

/-- `eq[1, A001222(A215146(n))²]` -/
def P4265226571577159885.Spec : Prop :=
  ∀ n, (P4265226571577159885.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P1799112682490951685

`lt[A349180(n+1), A006530(21*n+1)]`
-/

namespace A124198.P1799112682490951685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (21 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A124198.P1799112682490951685

namespace A124198

/-- `lt[A349180(n+1), A006530(21*n+1)]` -/
def P1799112682490951685.Spec : Prop :=
  ∀ n, (P1799112682490951685.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P6845479933950389666

`eq[A000005(A215146(n)), A020639(n+2)]`
-/

namespace A124198.P6845479933950389666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A215146 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A124198.P6845479933950389666

namespace A124198

/-- `eq[A000005(A215146(n)), A020639(n+2)]` -/
def P6845479933950389666.Spec : Prop :=
  ∀ n, (P6845479933950389666.a n : ℤ) = A124198 (n + 1)

end A124198

/-! ## A124198.P17652616808404177638

`eq[2, A331296(2*A215146(n))]`
-/

namespace A124198.P17652616808404177638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331296 (2 * A215146 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A124198.P17652616808404177638

namespace A124198

/-- `eq[2, A331296(2*A215146(n))]` -/
def P17652616808404177638.Spec : Prop :=
  ∀ n, (P17652616808404177638.a n : ℤ) = A124198 (n + 1)

end A124198

/-!
# A124199: Primes of the form k(k+1)/2-2 (i.e., two less than triangular numbers).

The programs for A124199, there is no canonical definition to state claims against.
-/

/-! ## A124199.P9808709226375808044

`A171569(n+1)-2`
-/

namespace A124199.P9808709226375808044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171569 (n + 1) - 2

end

end A124199.P9808709226375808044

/-! ## A124199.P9661039182340904577

`∩[A034856(n+1), A065384(n+2)]`
-/

namespace A124199.P9661039182340904577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124199.P9661039182340904577

/-! ## A124199.P2602531746977878032

`∩[A186752(n+1), A065384(n+2)]`
-/

namespace A124199.P2602531746977878032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186752 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124199.P2602531746977878032

/-! ## A124199.P17413166429649096901

`∩[A186347(n+1), A065384(n+2)]`
-/

namespace A124199.P17413166429649096901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124199.P17413166429649096901

/-! ## A124199.P15842038023021131774

`∩[A275660(n+1), A065384(n+2)]`
-/

namespace A124199.P15842038023021131774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275660 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065384 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A124199.P15842038023021131774

/-! ## A124199.P7960243531835188559

`p?[∑[n]-2]`
-/

namespace A124199.P7960243531835188559
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A124199.P7960243531835188559

/-! ## A124199.P13560336587501203283

`∏{p}[p?[C(n, 2)-2], #]`
-/

namespace A124199.P13560336587501203283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A124199.P13560336587501203283

/-! ## A124199.P10684287993569463074

`or(1, p?[∑[n+1]+n])`
-/

namespace A124199.P10684287993569463074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A124199.P10684287993569463074

/-! ## A124199.P219050202881918477

`∏{d}[p?[∑[n+1]+n], #]`
-/

namespace A124199.P219050202881918477
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d

end

end A124199.P219050202881918477

/-! ## A124199.P9379353542403003314

`∑{p}[p?[∑[n+1]+n], #]`
-/

namespace A124199.P9379353542403003314
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), p

end

end A124199.P9379353542403003314

/-! ## A124199.P1096275838210299758

`∏{p}[p?[∑[n+1]+n], #]`
-/

namespace A124199.P1096275838210299758
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A124199.P1096275838210299758

/-! ## A124199.P9011800615123024583

`∑{d}[p?[C(n, 2)-2], #]-1`
-/

namespace A124199.P9011800615123024583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A124199.P9011800615123024583

/-! ## A124199.P10909796634315989324

`root(p?[∑[n+1]+n], 2)²`
-/

namespace A124199.P10909796634315989324
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A124199.P10909796634315989324

/-! ## A124199.P15471002313109462544

`lcm(3, p?[abs(2-C(n+2, 2))])/3`
-/

namespace A124199.P15471002313109462544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (Nat.choose (n + 2) 2 : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 3 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) : ℚ) / 3

end

end A124199.P15471002313109462544

/-! ## A124199.P8219837460871661034

`record[p?[A236999(n+1)]]`
-/

namespace A124199.P8219837460871661034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236999 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124199.P8219837460871661034

/-! ## A124199.P17286167385457302465

`record[p?[A008795(n)-2]]`
-/

namespace A124199.P17286167385457302465
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008795 n - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124199.P17286167385457302465

/-! ## A124199.P8972597258643085800

`record[p?[A246276(n+1)+n]]`
-/

namespace A124199.P8972597258643085800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246276 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124199.P8972597258643085800

/-! ## A124199.P14856267992274097145

`record[p?[A249742(n+1)+n]]`
-/

namespace A124199.P14856267992274097145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249742 (n + 1) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124199.P14856267992274097145

/-! ## A124199.P17186356072967118604

`record[p?[A000217(A028242(n))-2]]`
-/

namespace A124199.P17186356072967118604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A028242 n).toNat - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A124199.P17186356072967118604

