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
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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

/-!
# A296200: Harary index of the n X n white bishop graph.

The programs for A296200, the canonical program `A296200.P13666537993982254084` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296200 has offset 2).

The definition of A296200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296200.P15945635706767573960

`∑[(∑[n+2]-1)*∑[char[2*n]]]`
-/

namespace A296200.P15945635706767573960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1) * ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296200.P15945635706767573960

namespace A296200

/-- `∑[(∑[n+2]-1)*∑[char[2*n]]]` -/
def P15945635706767573960.Spec : Prop :=
  ∀ n, P15945635706767573960.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P13666537993982254084

`∑[(A027379(n)+1)*A008619(n)]-1`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296200

/-- `∑[(A027379(n)+1)*A008619(n)]-1` -/
def P13666537993982254084.Spec : Prop :=
  ∀ n, P13666537993982254084.a n = A296200 (n + 2)

theorem P13666537993982254084.correct : P13666537993982254084.Spec := by
  intro n
  simp only [A296200, Nat.add_sub_cancel]

end A296200

/-! ## A296200.P12722572328715525670

`a(n-1)+A008619(n)*A034856(n+1)` with `a(0)=1`
-/

namespace A296200.P12722572328715525670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A008619 n * A034856 (n + 1)

end

end A296200.P12722572328715525670

namespace A296200

/-- `a(n-1)+A008619(n)*A034856(n+1)` -/
def P12722572328715525670.Spec : Prop :=
  ∀ n, P12722572328715525670.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P16897759747830151036

`∑[A008619(n)*A034856(n+1)]%A046301(n+1)`
-/

namespace A296200.P16897759747830151036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A034856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A046301 (n + 1))

end

end A296200.P16897759747830151036

namespace A296200

/-- `∑[A008619(n)*A034856(n+1)]%A046301(n+1)` -/
def P16897759747830151036.Spec : Prop :=
  ∀ n, P16897759747830151036.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P10902959811250421910

`A049778(n+1)+A087811(n+1)²-A087811(n+1)`
-/

namespace A296200.P10902959811250421910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049778 (n + 1) + (A087811 (n + 1) ^ 2 - A087811 (n + 1))

end

end A296200.P10902959811250421910

namespace A296200

/-- `A049778(n+1)+A087811(n+1)²-A087811(n+1)` -/
def P10902959811250421910.Spec : Prop :=
  ∀ n, P10902959811250421910.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P10147957030024054846

`A000045((-1)^(2*n))*∑[A008619(n)*A034856(n+1)]`
-/

namespace A296200.P10147957030024054846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A034856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((-1) ^ (2 * n)).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296200.P10147957030024054846

namespace A296200

/-- `A000045((-1)^(2*n))*∑[A008619(n)*A034856(n+1)]` -/
def P10147957030024054846.Spec : Prop :=
  ∀ n, P10147957030024054846.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P13985665781445804884

`a(n-1)+A034856(n+1)*A065033(n+1)` with `a(0)=1`
-/

namespace A296200.P13985665781445804884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A034856 (n + 1) * A065033 (n + 1)

end

end A296200.P13985665781445804884

namespace A296200

/-- `a(n-1)+A034856(n+1)*A065033(n+1)` -/
def P13985665781445804884.Spec : Prop :=
  ∀ n, P13985665781445804884.a n = A296200 (n + 2)

end A296200

/-! ## A296200.P10619391268597681144

`A000027(∑[A008619(n)*A034856(n+1)])`
-/

namespace A296200.P10619391268597681144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A034856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A296200.P10619391268597681144

namespace A296200

/-- `A000027(∑[A008619(n)*A034856(n+1)])` -/
def P10619391268597681144.Spec : Prop :=
  ∀ n, P10619391268597681144.a n = A296200 (n + 2)

end A296200

/-!
# A296201: Expansion of 1/(1 - x/(1 - x/(1 - x^2/(1 - x/(1 - x^3/(1 - x/(1 - x^4/(1 - ...)))))))), a continued fraction.

The programs for A296201, there is no canonical definition to state claims against.
-/

/-! ## A296201.P17989308283774906383

`A057360(A238436(n+1))+1`
-/

namespace A296201.P17989308283774906383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057360 (A238436 (n + 1)).toNat + 1

end

end A296201.P17989308283774906383

/-! ## A296201.P17823673019146158132

`A171842(A046469(n))+A036639(n)`
-/

namespace A296201.P17823673019146158132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 (A046469 n).toNat + A036639 n

end

end A296201.P17823673019146158132

/-! ## A296201.P12032744304916088950

`A178798(A227309(n))+A027826(n)`
-/

namespace A296201.P12032744304916088950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A227309 n).toNat + A027826 n

end

end A296201.P12032744304916088950

/-! ## A296201.P2205037930920076748

`A027826(n)-A010894(A313522(n))`
-/

namespace A296201.P2205037930920076748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 n - A010894 ((A313522 n).toNat + 21)

end

end A296201.P2205037930920076748

/-! ## A296201.P15196540189698789150

`A027826(n)-A025466(A000032(2*n))`
-/

namespace A296201.P15196540189698789150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027826 n - A025466 (A000032 (2 * n)).toNat

end

end A296201.P15196540189698789150

/-!
# A296204: Numbers k such that Product_{d|k, gcd(d,k/d) is prime} gcd(d,k/d) = k; the fixed points of A295666.

The programs for A296204, there is no canonical definition to state claims against.
-/

/-! ## A296204.P17948875599153333993

`A296205(n+1)²`
-/

namespace A296204.P17948875599153333993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296205 (n + 1) ^ 2

end

end A296204.P17948875599153333993

/-! ## A296204.P9990447204990514723

`(eq[1, A257099(n+1)]+1)²`
-/

namespace A296204.P9990447204990514723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257099 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) ^ 2

end

end A296204.P9990447204990514723

/-! ## A296204.P17807333386660774549

`(lt[0, A328729(n+1)]+1)²`
-/

namespace A296204.P17807333386660774549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328729 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) ^ 2

end

end A296204.P17807333386660774549

/-! ## A296204.P8696193483855065832

`record[gcd(n+1, A262202(n+1)-1)]²`
-/

namespace A296204.P8696193483855065832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A262202 (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A296204.P8696193483855065832

/-! ## A296204.P7263731113240450698

`A000463(2*A296205(n+1))`
-/

namespace A296204.P7263731113240450698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A296205 (n + 1)).toNat

end

end A296204.P7263731113240450698

/-! ## A296204.P358300000212377807

`A002620(2*A296205(n+1))`
-/

namespace A296204.P358300000212377807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A296205 (n + 1)).toNat

end

end A296204.P358300000212377807

/-! ## A296204.P8198153991733610563

`filter[A392365(n+1), A359464(#)]`
-/

namespace A296204.P8198153991733610563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359464 (f1 j).toNat = 1) n)

end

end A296204.P8198153991733610563

/-! ## A296204.P11722614142690647526

`filter[A392365(n+1), A374471(#)]`
-/

namespace A296204.P11722614142690647526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392365 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374471 (f1 j).toNat = 1) n)

end

end A296204.P11722614142690647526

/-! ## A296204.P10512091164283170230

`record[A007948(A000379(n+1))²]`
-/

namespace A296204.P10512091164283170230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A000379 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296204.P10512091164283170230

/-! ## A296204.P4775572973349593956

`∩[A374472(n+1), A392365(n+1)]`
-/

namespace A296204.P4775572973349593956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374472 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296204.P4775572973349593956

/-!
# A296205: Numbers k such that Product_{d|k^2, gcd(d,k^2/d) is prime} gcd(d,k^2/d) = k^2.

The programs for A296205, the canonical program `A296205.P11309458384694614981` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296205 has offset 1).

The definition of A296205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8344 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296205.P15058458735531004256

`A000196(A296204(n+1))`
-/

namespace A296205.P15058458735531004256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A296204 (n + 1)).toNat

end

end A296205.P15058458735531004256

namespace A296205

/-- `A000196(A296204(n+1))` -/
def P15058458735531004256.Spec : Prop :=
  ∀ n, P15058458735531004256.a n = A296205 (n + 1)

end A296205

/-! ## A296205.P11309458384694614981

`filter[A267114(n+1), A212793(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A296205

/-- `filter[A267114(n+1), A212793(#)]` -/
def P11309458384694614981.Spec : Prop :=
  ∀ n, P11309458384694614981.a n = A296205 (n + 1)

theorem P11309458384694614981.correct : P11309458384694614981.Spec := by
  intro n
  simp only [A296205, Nat.add_sub_cancel]

end A296205

/-! ## A296205.P4489002294174684121

`record[A030231(n+1)/A328856(A030231(n+1))]`
-/

namespace A296205.P4489002294174684121
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030231 (n + 1) : ℚ) / (A328856 (A030231 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296205.P4489002294174684121

namespace A296205

/-- `record[A030231(n+1)/A328856(A030231(n+1))]` -/
def P4489002294174684121.Spec : Prop :=
  ∀ n, P4489002294174684121.a n = (A296205 (n + 1) : ℚ)

end A296205

/-! ## A296205.P9412674328870997160

`∩[A004709(n+1), A267114(n+1)]`
-/

namespace A296205.P9412674328870997160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296205.P9412674328870997160

namespace A296205

/-- `∩[A004709(n+1), A267114(n+1)]` -/
def P9412674328870997160.Spec : Prop :=
  ∀ n, (P9412674328870997160.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P4756173070174009440

`∩[A212167(n+1), A267114(n+1)]`
-/

namespace A296205.P4756173070174009440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296205.P4756173070174009440

namespace A296205

/-- `∩[A212167(n+1), A267114(n+1)]` -/
def P4756173070174009440.Spec : Prop :=
  ∀ n, (P4756173070174009440.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P13282676819062028983

`record[gcd(n+1, A262202(n+1)-1)]`
-/

namespace A296205.P13282676819062028983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A262202 (n + 1) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296205.P13282676819062028983

namespace A296205

/-- `record[gcd(n+1, A262202(n+1)-1)]` -/
def P13282676819062028983.Spec : Prop :=
  ∀ n, (P13282676819062028983.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P18021626480351040979

`eq[A057427(n), A262202(n+1)]+1`
-/

namespace A296205.P18021626480351040979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296205.P18021626480351040979

namespace A296205

/-- `eq[A057427(n), A262202(n+1)]+1` -/
def P18021626480351040979.Spec : Prop :=
  ∀ n, (P18021626480351040979.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P8003384048041799991

`eq[A076479(n+1), A328856(n+1)]+1`
-/

namespace A296205.P8003384048041799991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076479 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328856 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296205.P8003384048041799991

namespace A296205

/-- `eq[A076479(n+1), A328856(n+1)]+1` -/
def P8003384048041799991.Spec : Prop :=
  ∀ n, (P8003384048041799991.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P12899821621385673989

`eq[A060576(n), A262202(A028310(n))]`
-/

namespace A296205.P12899821621385673989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296205.P12899821621385673989

namespace A296205

/-- `eq[A060576(n), A262202(A028310(n))]` -/
def P12899821621385673989.Spec : Prop :=
  ∀ n, (P12899821621385673989.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P13955344222713648595

`lt[A318471(n+1), A347093(A014963(n+1))+1]+1`
-/

namespace A296205.P13955344222713648595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347093 (A014963 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296205.P13955344222713648595

namespace A296205

/-- `lt[A318471(n+1), A347093(A014963(n+1))+1]+1` -/
def P13955344222713648595.Spec : Prop :=
  ∀ n, (P13955344222713648595.a n : ℤ) = A296205 (n + 1)

end A296205

/-! ## A296205.P5950468310285914989

`eq[A060576(n), A262202(A233583(n+1))]`
-/

namespace A296205.P5950468310285914989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262202 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296205.P5950468310285914989

namespace A296205

/-- `eq[A060576(n), A262202(A233583(n+1))]` -/
def P5950468310285914989.Spec : Prop :=
  ∀ n, (P5950468310285914989.a n : ℤ) = A296205 (n + 1)

end A296205

/-!
# A296206: Xor-Moebius transform applied twice to natural numbers.

The programs for A296206, the canonical program `A296206.P7932008658707431913` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296206 has offset 1).

The definition of A296206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296206.P6034851494840491587

`xor(A063658(n+1), A277821(A277820(n+1)))`
-/

namespace A296206.P6034851494840491587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063658 (n + 1)) (A277821 (A277820 (n + 1)).toNat)

end

end A296206.P6034851494840491587

namespace A296206

/-- `xor(A063658(n+1), A277821(A277820(n+1)))` -/
def P6034851494840491587.Spec : Prop :=
  ∀ n, P6034851494840491587.a n = A296206 (n + 1)

end A296206

/-! ## A296206.P7932008658707431913

`xor(A011262(A011262(n+1)), A063658(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A296206

/-- `xor(A011262(A011262(n+1)), A063658(n+1))` -/
def P7932008658707431913.Spec : Prop :=
  ∀ n, P7932008658707431913.a n = A296206 (n + 1)

theorem P7932008658707431913.correct : P7932008658707431913.Spec := by
  intro n
  simp only [A296206, Nat.add_sub_cancel]

end A296206

/-! ## A296206.P7855697678438830155

`xor(A002260(A001844(n)), A063658(n+1))`
-/

namespace A296206.P7855697678438830155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A002260 (A001844 n).toNat) (A063658 (n + 1))

end

end A296206.P7855697678438830155

namespace A296206

/-- `xor(A002260(A001844(n)), A063658(n+1))` -/
def P7855697678438830155.Spec : Prop :=
  ∀ n, P7855697678438830155.a n = A296206 (n + 1)

end A296206

/-! ## A296206.P13045483739532523331

`xor(A063658(n+1), A132674(A132674(n+1)))`
-/

namespace A296206.P13045483739532523331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A063658 (n + 1)) (A132674 (A132674 (n + 1)).toNat)

end

end A296206.P13045483739532523331

namespace A296206

/-- `xor(A063658(n+1), A132674(A132674(n+1)))` -/
def P13045483739532523331.Spec : Prop :=
  ∀ n, P13045483739532523331.a n = A296206 (n + 1)

end A296206

/-!
# A296207: Xor-Moebius transform of A227320, binary XOR of proper divisors of n.

The programs for A296207, there is no canonical definition to state claims against.
-/

/-! ## A296207.P6837795984815117505

`xor(n+1, A256739(n+1))`
-/

namespace A296207.P6837795984815117505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A256739 (n + 1))

end

end A296207.P6837795984815117505

/-! ## A296207.P630830812101358996

`xor(n+1, A003188(A297110(n+1)))`
-/

namespace A296207.P630830812101358996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n + 1 : ℤ) (A003188 (A297110 (n + 1)).toNat)

end

end A296207.P630830812101358996

/-! ## A296207.P11425939335400727606

`xor(A227320(n+1), A248663(A300830(n+1)))`
-/

namespace A296207.P11425939335400727606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A227320 (n + 1)) (A248663 (A300830 (n + 1)).toNat)

end

end A296207.P11425939335400727606

/-! ## A296207.P622752758860286088

`A248663(A300831(n+1)*A300832(n+1))`
-/

namespace A296207.P622752758860286088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (A300831 (n + 1) * A300832 (n + 1)).toNat

end

end A296207.P622752758860286088

/-! ## A296207.P7663708908224713931

`A248663(A293214(n+1)/A300830(n+1))`
-/

namespace A296207.P7663708908224713931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248663 (SequenceMachineLib.roundAway ((A293214 (n + 1) : ℚ) / (A300830 (n + 1) : ℚ))).toNat

end

end A296207.P7663708908224713931

/-!
# A296209: a(n) = 1 if n is a pentanacci number, 0 otherwise; characteristic function for A001591.

The programs for A296209, the canonical program `A296209.P15000456844671825511` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296209 has offset 0).

The definition of A296209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296209.P15000456844671825511

`char[A001591(n)]`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A296209

/-- `char[A001591(n)]` -/
def P15000456844671825511.Spec : Prop :=
  ∀ n, (P15000456844671825511.a n : ℤ) = A296209 n

theorem P15000456844671825511.correct : P15000456844671825511.Spec := by
  intro n
  simp only [A296209]

end A296209

/-! ## A296209.P14731768039385762353

`char[Δ[A001949(n)]]`
-/

namespace A296209.P14731768039385762353
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P14731768039385762353

namespace A296209

/-- `char[Δ[A001949(n)]]` -/
def P14731768039385762353.Spec : Prop :=
  ∀ n, (P14731768039385762353.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P12139856770725449456

`char[∑[A124312(n+1)]]`
-/

namespace A296209.P12139856770725449456
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P12139856770725449456

namespace A296209

/-- `char[∑[A124312(n+1)]]` -/
def P12139856770725449456.Spec : Prop :=
  ∀ n, (P12139856770725449456.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P4102376201840801107

`char[A001949(n+1)-A001949(n)]`
-/

namespace A296209.P4102376201840801107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 1) - A001949 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P4102376201840801107

namespace A296209

/-- `char[A001949(n+1)-A001949(n)]` -/
def P4102376201840801107.Spec : Prop :=
  ∀ n, (P4102376201840801107.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P288935300529943112

`char[A124312(n+1)-A251653(n)]`
-/

namespace A296209.P288935300529943112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124312 (n + 1) - A251653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296209.P288935300529943112

namespace A296209

/-- `char[A124312(n+1)-A251653(n)]` -/
def P288935300529943112.Spec : Prop :=
  ∀ n, (P288935300529943112.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P5102485934491602625

`C(A079208(2*n+1)!, A079210(2*n))`
-/

namespace A296209.P5102485934491602625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial (A079208 (2 * n + 1)).toNat) (A079210 (2 * n)).toNat

end

end A296209.P5102485934491602625

namespace A296209

/-- `C(A079208(2*n+1)!, A079210(2*n))` -/
def P5102485934491602625.Spec : Prop :=
  ∀ n, (P5102485934491602625.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P18289105664350895964

`C(A079208(2*n), A001222(A079210(2*n)))`
-/

namespace A296209.P18289105664350895964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A079208 (2 * n)).toNat (A001222 (A079210 (2 * n)).toNat).toNat

end

end A296209.P18289105664350895964

namespace A296209

/-- `C(A079208(2*n), A001222(A079210(2*n)))` -/
def P18289105664350895964.Spec : Prop :=
  ∀ n, (P18289105664350895964.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P3086958313827647427

`C(2, A079228(A079210(2*n)))`
-/

namespace A296209.P3086958313827647427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A079228 (A079210 (2 * n)).toNat).toNat

end

end A296209.P3086958313827647427

namespace A296209

/-- `C(2, A079228(A079210(2*n)))` -/
def P3086958313827647427.Spec : Prop :=
  ∀ n, (P3086958313827647427.a n : ℤ) = A296209 n

end A296209

/-! ## A296209.P14624963234552615266

`A284002(comp[A283969(n+4)])%2`
-/

namespace A296209.P14624963234552615266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283969 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284002 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)) 2

end

end A296209.P14624963234552615266

namespace A296209

/-- `A284002(comp[A283969(n+4)])%2` -/
def P14624963234552615266.Spec : Prop :=
  ∀ n, P14624963234552615266.a n = A296209 n

end A296209

/-!
# A296210: Characteristic function for A104210: a(n) = 1 if n is divisible by at least 2 consecutive primes, 0 otherwise.

The programs for A296210, the canonical program `A296210.P2007591430484132709` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296210 has offset 1).

The definition of A296210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296210.P15415697142546178069

`1-A356173(n+1)`
-/

namespace A296210.P15415697142546178069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A356173 (n + 1)

end

end A296210.P15415697142546178069

namespace A296210

/-- `1-A356173(n+1)` -/
def P15415697142546178069.Spec : Prop :=
  ∀ n, P15415697142546178069.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P2007591430484132709

`char[A104210(n+1)-1]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A296210

/-- `char[A104210(n+1)-1]` -/
def P2007591430484132709.Spec : Prop :=
  ∀ n, (P2007591430484132709.a n : ℤ) = A296210 (n + 1)

theorem P2007591430484132709.correct : P2007591430484132709.Spec := by
  intro n
  simp only [A296210, Nat.add_sub_cancel]

end A296210

/-! ## A296210.P6408547593560462223

`char[eq[1, A297173(n+1)]]`
-/

namespace A296210.P6408547593560462223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P6408547593560462223

namespace A296210

/-- `char[eq[1, A297173(n+1)]]` -/
def P6408547593560462223.Spec : Prop :=
  ∀ n, (P6408547593560462223.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P8694780803394290357

`char[lt[1, A300820(n+1)]]`
-/

namespace A296210.P8694780803394290357
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P8694780803394290357

namespace A296210

/-- `char[lt[1, A300820(n+1)]]` -/
def P8694780803394290357.Spec : Prop :=
  ∀ n, (P8694780803394290357.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P2085056000616799012

`char[lt[1, A322361(n+1)]]`
-/

namespace A296210.P2085056000616799012
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322361 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P2085056000616799012

namespace A296210

/-- `char[lt[1, A322361(n+1)]]` -/
def P2085056000616799012.Spec : Prop :=
  ∀ n, (P2085056000616799012.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P18281527126180536925

`char[lt[1, A330749(n+1)]]`
-/

namespace A296210.P18281527126180536925
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330749 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P18281527126180536925

namespace A296210

/-- `char[lt[1, A330749(n+1)]]` -/
def P18281527126180536925.Spec : Prop :=
  ∀ n, (P18281527126180536925.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P6439228010112517398

`char[lt[A319626(n+1), n]]`
-/

namespace A296210.P6439228010112517398
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319626 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P6439228010112517398

namespace A296210

/-- `char[lt[A319626(n+1), n]]` -/
def P6439228010112517398.Spec : Prop :=
  ∀ n, (P6439228010112517398.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P3418703445329615785

`char[lt[A348990(n+1), n]]`
-/

namespace A296210.P3418703445329615785
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296210.P3418703445329615785

namespace A296210

/-- `char[lt[A348990(n+1), n]]` -/
def P3418703445329615785.Spec : Prop :=
  ∀ n, (P3418703445329615785.a n : ℤ) = A296210 (n + 1)

end A296210

/-! ## A296210.P2852661683445340117

`A005171(A322361(n+1)+1)`
-/

namespace A296210.P2852661683445340117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A322361 (n + 1) + 1).toNat

end

end A296210.P2852661683445340117

namespace A296210

/-- `A005171(A322361(n+1)+1)` -/
def P2852661683445340117.Spec : Prop :=
  ∀ n, P2852661683445340117.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P5154228728665371455

`1-A356172(A328915(n+1))`
-/

namespace A296210.P5154228728665371455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A356172 (A328915 (n + 1)).toNat

end

end A296210.P5154228728665371455

namespace A296210

/-- `1-A356172(A328915(n+1))` -/
def P5154228728665371455.Spec : Prop :=
  ∀ n, P5154228728665371455.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P9500718546100217518

`A000124(n)%A322361(n+1)`
-/

namespace A296210.P9500718546100217518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000124 n) (A322361 (n + 1))

end

end A296210.P9500718546100217518

namespace A296210

/-- `A000124(n)%A322361(n+1)` -/
def P9500718546100217518.Spec : Prop :=
  ∀ n, P9500718546100217518.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P14288809039281461793

`A000290(n)%A322361(n+1)`
-/

namespace A296210.P14288809039281461793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 n) (A322361 (n + 1))

end

end A296210.P14288809039281461793

namespace A296210

/-- `A000290(n)%A322361(n+1)` -/
def P14288809039281461793.Spec : Prop :=
  ∀ n, P14288809039281461793.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P17526115434449378447

`A000583(n)%A322361(n+1)`
-/

namespace A296210.P17526115434449378447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A322361 (n + 1))

end

end A296210.P17526115434449378447

namespace A296210

/-- `A000583(n)%A322361(n+1)` -/
def P17526115434449378447.Spec : Prop :=
  ∀ n, P17526115434449378447.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P832314885973810675

`A001014(n)%A322361(n+1)`
-/

namespace A296210.P832314885973810675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001014 n) (A322361 (n + 1))

end

end A296210.P832314885973810675

namespace A296210

/-- `A001014(n)%A322361(n+1)` -/
def P832314885973810675.Spec : Prop :=
  ∀ n, P832314885973810675.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P14169181165630334980

`A001016(n)%A322361(n+1)`
-/

namespace A296210.P14169181165630334980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001016 n) (A322361 (n + 1))

end

end A296210.P14169181165630334980

namespace A296210

/-- `A001016(n)%A322361(n+1)` -/
def P14169181165630334980.Spec : Prop :=
  ∀ n, P14169181165630334980.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P6681234064619026210

`A001844(n)%A322361(n+1)`
-/

namespace A296210.P6681234064619026210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001844 n) (A322361 (n + 1))

end

end A296210.P6681234064619026210

namespace A296210

/-- `A001844(n)%A322361(n+1)` -/
def P6681234064619026210.Spec : Prop :=
  ∀ n, P6681234064619026210.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P9678377038925813956

`A002593(n)%A322361(n+1)`
-/

namespace A296210.P9678377038925813956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002593 n) (A322361 (n + 1))

end

end A296210.P9678377038925813956

namespace A296210

/-- `A002593(n)%A322361(n+1)` -/
def P9678377038925813956.Spec : Prop :=
  ∀ n, P9678377038925813956.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P15067902627100227883

`A003215(n)%A322361(n+1)`
-/

namespace A296210.P15067902627100227883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) (A322361 (n + 1))

end

end A296210.P15067902627100227883

namespace A296210

/-- `A003215(n)%A322361(n+1)` -/
def P15067902627100227883.Spec : Prop :=
  ∀ n, P15067902627100227883.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P12300692627824305710

`A004768(n)%A322361(n+1)`
-/

namespace A296210.P12300692627824305710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004768 n) (A322361 (n + 1))

end

end A296210.P12300692627824305710

namespace A296210

/-- `A004768(n)%A322361(n+1)` -/
def P12300692627824305710.Spec : Prop :=
  ∀ n, P12300692627824305710.a n = A296210 (n + 1)

end A296210

/-! ## A296210.P12761634848735539534

`A005449(n)%A322361(n+1)`
-/

namespace A296210.P12761634848735539534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005449 n) (A322361 (n + 1))

end

end A296210.P12761634848735539534

namespace A296210

/-- `A005449(n)%A322361(n+1)` -/
def P12761634848735539534.Spec : Prop :=
  ∀ n, P12761634848735539534.a n = A296210 (n + 1)

end A296210

/-!
# A296211: a(n) = 1 if sigma(n)-1 is a prime, 0 otherwise.

The programs for A296211, the canonical program `A296211.P11261666539531221570` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296211 has offset 1).

The definition of A296211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296211.P11855733474751519101

`char[A248792(n+1)-1]`
-/

namespace A296211.P11855733474751519101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248792 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296211.P11855733474751519101

namespace A296211

/-- `char[A248792(n+1)-1]` -/
def P11855733474751519101.Spec : Prop :=
  ∀ n, (P11855733474751519101.a n : ℤ) = A296211 (n + 1)

end A296211

/-! ## A296211.P16367856528237610962

`char[eq[2, A296091(n+1)]]`
-/

namespace A296211.P16367856528237610962
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296091 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A296211.P16367856528237610962

namespace A296211

/-- `char[eq[2, A296091(n+1)]]` -/
def P16367856528237610962.Spec : Prop :=
  ∀ n, (P16367856528237610962.a n : ℤ) = A296211 (n + 1)

end A296211

/-! ## A296211.P16099042824241662849

`A010051(A296091(n+1))`
-/

namespace A296211.P16099042824241662849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A296091 (n + 1)).toNat

end

end A296211.P16099042824241662849

namespace A296211

/-- `A010051(A296091(n+1))` -/
def P16099042824241662849.Spec : Prop :=
  ∀ n, P16099042824241662849.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P7286902888851940137

`A010051(A325651(n+1))`
-/

namespace A296211.P7286902888851940137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A325651 (n + 1)).toNat

end

end A296211.P7286902888851940137

namespace A296211

/-- `A010051(A325651(n+1))` -/
def P7286902888851940137.Spec : Prop :=
  ∀ n, P7286902888851940137.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P2275935453885240321

`A323513(A296091(n+1)+1)`
-/

namespace A296211.P2275935453885240321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A296091 (n + 1) + 1).toNat

end

end A296211.P2275935453885240321

namespace A296211

/-- `A323513(A296091(n+1)+1)` -/
def P2275935453885240321.Spec : Prop :=
  ∀ n, P2275935453885240321.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P11261666539531221570

`A010051(A048050(n+1)+1+n)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A296211

/-- `A010051(A048050(n+1)+1+n)` -/
def P11261666539531221570.Spec : Prop :=
  ∀ n, P11261666539531221570.a n = A296211 (n + 1)

theorem P11261666539531221570.correct : P11261666539531221570.Spec := by
  intro n
  simp only [A296211, Nat.add_sub_cancel]

end A296211

/-! ## A296211.P6843748111834072597

`A010051(A028310(n)+A001065(n+1))`
-/

namespace A296211.P6843748111834072597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A028310 n + A001065 (n + 1)).toNat

end

end A296211.P6843748111834072597

namespace A296211

/-- `A010051(A028310(n)+A001065(n+1))` -/
def P6843748111834072597.Spec : Prop :=
  ∀ n, P6843748111834072597.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P3511477454703186025

`A010051(A039653(n+1)+A010051(2*(n+1)))`
-/

namespace A296211.P3511477454703186025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039653 (n + 1) + A010051 (2 * (n + 1))).toNat

end

end A296211.P3511477454703186025

namespace A296211

/-- `A010051(A039653(n+1)+A010051(2*(n+1)))` -/
def P3511477454703186025.Spec : Prop :=
  ∀ n, P3511477454703186025.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P14029539219616934903

`A010051((A000203(n+1)-2)%A000203(n+1)+1)`
-/

namespace A296211.P14029539219616934903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (Int.tmod (A000203 (n + 1) - 2) (A000203 (n + 1)) + 1).toNat

end

end A296211.P14029539219616934903

namespace A296211

/-- `A010051((A000203(n+1)-2)%A000203(n+1)+1)` -/
def P14029539219616934903.Spec : Prop :=
  ∀ n, P14029539219616934903.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P2353840952159344648

`A010051(A000203(n+1)-gcd(2, A000010(n+1))+1)`
-/

namespace A296211.P2353840952159344648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A000203 (n + 1) - (Int.gcd 2 (A000010 (n + 1)) : ℤ) + 1).toNat

end

end A296211.P2353840952159344648

namespace A296211

/-- `A010051(A000203(n+1)-gcd(2, A000010(n+1))+1)` -/
def P2353840952159344648.Spec : Prop :=
  ∀ n, P2353840952159344648.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P17444636875538660220

`A063524(A074206(A001065(n+1)+n))`
-/

namespace A296211.P17444636875538660220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A074206 (A001065 (n + 1) + (n : ℤ)).toNat).toNat

end

end A296211.P17444636875538660220

namespace A296211

/-- `A063524(A074206(A001065(n+1)+n))` -/
def P17444636875538660220.Spec : Prop :=
  ∀ n, P17444636875538660220.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P17355500887907432634

`∑{d}[1-A000203(n+1), A143519(#)]`
-/

namespace A296211.P17355500887907432634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A143519 d

end

end A296211.P17355500887907432634

namespace A296211

/-- `∑{d}[1-A000203(n+1), A143519(#)]` -/
def P17355500887907432634.Spec : Prop :=
  ∀ n, P17355500887907432634.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P18309021249824339346

`A063524(A001065(A048050(n+1)+n+1))`
-/

namespace A296211.P18309021249824339346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A001065 (A048050 (n + 1) + (n + 1 : ℤ)).toNat).toNat

end

end A296211.P18309021249824339346

namespace A296211

/-- `A063524(A001065(A048050(n+1)+n+1))` -/
def P18309021249824339346.Spec : Prop :=
  ∀ n, P18309021249824339346.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P10729536918936205487

`A046926(2*∑{d}[n+1, #])`
-/

namespace A296211.P10729536918936205487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * (∑ d ∈ Nat.divisors (f1 n), d))

end

end A296211.P10729536918936205487

namespace A296211

/-- `A046926(2*∑{d}[n+1, #])` -/
def P10729536918936205487.Spec : Prop :=
  ∀ n, P10729536918936205487.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P10802587082033117155

`A046924(A074400(n+1))`
-/

namespace A296211.P10802587082033117155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (A074400 (n + 1)).toNat

end

end A296211.P10802587082033117155

namespace A296211

/-- `A046924(A074400(n+1))` -/
def P10802587082033117155.Spec : Prop :=
  ∀ n, P10802587082033117155.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P1358808036841604239

`A046924(2*A000203(n+1))`
-/

namespace A296211.P1358808036841604239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046924 (2 * A000203 (n + 1)).toNat

end

end A296211.P1358808036841604239

namespace A296211

/-- `A046924(2*A000203(n+1))` -/
def P1358808036841604239.Spec : Prop :=
  ∀ n, P1358808036841604239.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P10397063495064476712

`A046926(2*A000203(n+1))`
-/

namespace A296211.P10397063495064476712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046926 (2 * A000203 (n + 1)).toNat

end

end A296211.P10397063495064476712

namespace A296211

/-- `A046926(2*A000203(n+1))` -/
def P10397063495064476712.Spec : Prop :=
  ∀ n, P10397063495064476712.a n = A296211 (n + 1)

end A296211

/-! ## A296211.P13625690746305859711

`val(A289147(∑{e}[(1-A000203(n+1))², #]), 34)`
-/

namespace A296211.P13625690746305859711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000203 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A289147 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)).toNat 34

end

end A296211.P13625690746305859711

namespace A296211

/-- `val(A289147(∑{e}[(1-A000203(n+1))², #]), 34)` -/
def P13625690746305859711.Spec : Prop :=
  ∀ n, (P13625690746305859711.a n : ℤ) = A296211 (n + 1)

end A296211

/-! ## A296211.P5685015557794837943

`A302048((1-A000203(n+1))²)`
-/

namespace A296211.P5685015557794837943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 ((1 - A000203 (n + 1)) ^ 2).toNat

end

end A296211.P5685015557794837943

namespace A296211

/-- `A302048((1-A000203(n+1))²)` -/
def P5685015557794837943.Spec : Prop :=
  ∀ n, P5685015557794837943.a n = A296211 (n + 1)

end A296211

/-!
# A296212: a(n) = 1 if sigma(n) + 1 is prime, 0 otherwise.

The programs for A296212, the canonical program `A296212.P15502952494172924929` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296212 has offset 1).

The definition of A296212 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A010051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A296212.P15502952494172924929

`A010051(A088580(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A296212

/-- `A010051(A088580(n+1))` -/
def P15502952494172924929.Spec : Prop :=
  ∀ n, P15502952494172924929.a n = A296212 (n + 1)

theorem P15502952494172924929.correct : P15502952494172924929.Spec := by
  intro n
  simp only [A296212, Nat.add_sub_cancel]

end A296212

/-! ## A296212.P6245567682192693932

`A010051(1+A000203(n+1))`
-/

namespace A296212.P6245567682192693932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (1 + A000203 (n + 1)).toNat

end

end A296212.P6245567682192693932

namespace A296212

/-- `A010051(1+A000203(n+1))` -/
def P6245567682192693932.Spec : Prop :=
  ∀ n, P6245567682192693932.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P4070542811402263287

`C(2, A296092(n+1))`
-/

namespace A296212.P4070542811402263287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A296092 (n + 1)).toNat

end

end A296212.P4070542811402263287

namespace A296212

/-- `C(2, A296092(n+1))` -/
def P4070542811402263287.Spec : Prop :=
  ∀ n, (P4070542811402263287.a n : ℤ) = A296212 (n + 1)

end A296212

/-! ## A296212.P10219753151490483105

`floor(1/A066421(n+1))`
-/

namespace A296212.P10219753151490483105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A066421 (n + 1) : ℚ)⌋

end

end A296212.P10219753151490483105

namespace A296212

/-- `floor(1/A066421(n+1))` -/
def P10219753151490483105.Spec : Prop :=
  ∀ n, P10219753151490483105.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P5772858678733912912

`floor(1/A072341(n+1))`
-/

namespace A296212.P5772858678733912912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A072341 (n + 1) : ℚ)⌋

end

end A296212.P5772858678733912912

namespace A296212

/-- `floor(1/A072341(n+1))` -/
def P5772858678733912912.Spec : Prop :=
  ∀ n, P5772858678733912912.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P17663892232633754893

`floor(1/A072918(n+1))`
-/

namespace A296212.P17663892232633754893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A072918 (n + 1) : ℚ)⌋

end

end A296212.P17663892232633754893

namespace A296212

/-- `floor(1/A072918(n+1))` -/
def P17663892232633754893.Spec : Prop :=
  ∀ n, P17663892232633754893.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P4369842611386801195

`C(2, A000005(∑{d}[n+1, #]+1))`
-/

namespace A296212.P4369842611386801195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (∑ d ∈ Nat.divisors (f1 n), d + 1)).toNat

end

end A296212.P4369842611386801195

namespace A296212

/-- `C(2, A000005(∑{d}[n+1, #]+1))` -/
def P4369842611386801195.Spec : Prop :=
  ∀ n, (P4369842611386801195.a n : ℤ) = A296212 (n + 1)

end A296212

/-! ## A296212.P15566678401514055600

`C(2, A337135(∑{d}[n+1, #]+1)+1)`
-/

namespace A296212.P15566678401514055600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A337135 (∑ d ∈ Nat.divisors (f1 n), d + 1) + 1).toNat

end

end A296212.P15566678401514055600

namespace A296212

/-- `C(2, A337135(∑{d}[n+1, #]+1)+1)` -/
def P15566678401514055600.Spec : Prop :=
  ∀ n, (P15566678401514055600.a n : ℤ) = A296212 (n + 1)

end A296212

/-! ## A296212.P14618176095914599436

`A063524(A072341(n+1))`
-/

namespace A296212.P14618176095914599436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A072341 (n + 1)).toNat

end

end A296212.P14618176095914599436

namespace A296212

/-- `A063524(A072341(n+1))` -/
def P14618176095914599436.Spec : Prop :=
  ∀ n, P14618176095914599436.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P11169528472054411070

`A010051(A296092(n+1))`
-/

namespace A296212.P11169528472054411070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A296092 (n + 1)).toNat

end

end A296212.P11169528472054411070

namespace A296212

/-- `A010051(A296092(n+1))` -/
def P11169528472054411070.Spec : Prop :=
  ∀ n, P11169528472054411070.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P9406792396165859901

`A323152(A000203(n+1)+1)`
-/

namespace A296212.P9406792396165859901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323152 (A000203 (n + 1) + 1).toNat

end

end A296212.P9406792396165859901

namespace A296212

/-- `A323152(A000203(n+1)+1)` -/
def P9406792396165859901.Spec : Prop :=
  ∀ n, P9406792396165859901.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P11585283379582771803

`A323153(A000203(n+1)+1)`
-/

namespace A296212.P11585283379582771803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323153 (A000203 (n + 1) + 1).toNat

end

end A296212.P11585283379582771803

namespace A296212

/-- `A323153(A000203(n+1)+1)` -/
def P11585283379582771803.Spec : Prop :=
  ∀ n, P11585283379582771803.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P7395507131221768650

`A323513(A296092(n+1)+1)`
-/

namespace A296212.P7395507131221768650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323513 (A296092 (n + 1) + 1).toNat

end

end A296212.P7395507131221768650

namespace A296212

/-- `A323513(A296092(n+1)+1)` -/
def P7395507131221768650.Spec : Prop :=
  ∀ n, P7395507131221768650.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P13121391314026464210

`A010051(A039653(n+1)+2)`
-/

namespace A296212.P13121391314026464210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A039653 (n + 1) + 2).toNat

end

end A296212.P13121391314026464210

namespace A296212

/-- `A010051(A039653(n+1)+2)` -/
def P13121391314026464210.Spec : Prop :=
  ∀ n, P13121391314026464210.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P11849752058165867311

`A378998(A296092(n+1)-1)`
-/

namespace A296212.P11849752058165867311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378998 (A296092 (n + 1) - 1).toNat

end

end A296212.P11849752058165867311

namespace A296212

/-- `A378998(A296092(n+1)-1)` -/
def P11849752058165867311.Spec : Prop :=
  ∀ n, P11849752058165867311.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P9011731043634161674

`A296211(2*A072341(n+1)²)`
-/

namespace A296212.P9011731043634161674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296211 (2 * A072341 (n + 1) ^ 2).toNat

end

end A296212.P9011731043634161674

namespace A296212

/-- `A296211(2*A072341(n+1)²)` -/
def P9011731043634161674.Spec : Prop :=
  ∀ n, P9011731043634161674.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P13378308494148756178

`and(1, A072918(A072918(n+1)²))`
-/

namespace A296212.P13378308494148756178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A072918 (A072918 (n + 1) ^ 2).toNat)

end

end A296212.P13378308494148756178

namespace A296212

/-- `and(1, A072918(A072918(n+1)²))` -/
def P13378308494148756178.Spec : Prop :=
  ∀ n, P13378308494148756178.a n = A296212 (n + 1)

end A296212

/-! ## A296212.P18017985291741242635

`C(2, A000005(A000203(n+1)+1))`
-/

namespace A296212.P18017985291741242635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (A000203 (n + 1) + 1).toNat).toNat

end

end A296212.P18017985291741242635

namespace A296212

/-- `C(2, A000005(A000203(n+1)+1))` -/
def P18017985291741242635.Spec : Prop :=
  ∀ n, (P18017985291741242635.a n : ℤ) = A296212 (n + 1)

end A296212

/-! ## A296212.P5291886397234638622

`C(2, A089389(A000203(n+1)+1))`
-/

namespace A296212.P5291886397234638622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A089389 (A000203 (n + 1) + 1).toNat).toNat

end

end A296212.P5291886397234638622

namespace A296212

/-- `C(2, A089389(A000203(n+1)+1))` -/
def P5291886397234638622.Spec : Prop :=
  ∀ n, (P5291886397234638622.a n : ℤ) = A296212 (n + 1)

end A296212

/-! ## A296212.P15998105067403587862

`A010051(A001065(n+1)+n+2)`
-/

namespace A296212.P15998105067403587862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A001065 (n + 1) + (n + 2 : ℤ)).toNat

end

end A296212.P15998105067403587862

namespace A296212

/-- `A010051(A001065(n+1)+n+2)` -/
def P15998105067403587862.Spec : Prop :=
  ∀ n, P15998105067403587862.a n = A296212 (n + 1)

end A296212

/-!
# A296213: a(n) = 1 if both 1+phi(k) and 1+sigma(k) are squares, 0 otherwise.

The programs for A296213, the canonical program `A296213.P8375901246265267104` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296213 has offset 1).

The definition of A296213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296213.P8375901246265267104

`char[A063532(n+1)-1]`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A296213

/-- `char[A063532(n+1)-1]` -/
def P8375901246265267104.Spec : Prop :=
  ∀ n, (P8375901246265267104.a n : ℤ) = A296213 (n + 1)

theorem P8375901246265267104.correct : P8375901246265267104.Spec := by
  intro n
  simp only [A296213, Nat.add_sub_cancel]

end A296213

/-! ## A296213.P10620305281005067148

`char[A023443(A063532(n+1))]`
-/

namespace A296213.P10620305281005067148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A063532 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P10620305281005067148

namespace A296213

/-- `char[A023443(A063532(n+1))]` -/
def P10620305281005067148.Spec : Prop :=
  ∀ n, (P10620305281005067148.a n : ℤ) = A296213 (n + 1)

end A296213

/-! ## A296213.P15371497592811843470

`char[∩[A063530(n+1), A063531(n+1)]-1]`
-/

namespace A296213.P15371497592811843470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063530 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063531 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A296213.P15371497592811843470

namespace A296213

/-- `char[∩[A063530(n+1), A063531(n+1)]-1]` -/
def P15371497592811843470.Spec : Prop :=
  ∀ n, (P15371497592811843470.a n : ℤ) = A296213 (n + 1)

end A296213

/-! ## A296213.P10750066299327229210

`A331470(n)%A321271(A039649(n+1))`
-/

namespace A296213.P10750066299327229210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331470 n) (A321271 (A039649 (n + 1)).toNat)

end

end A296213.P10750066299327229210

namespace A296213

/-- `A331470(n)%A321271(A039649(n+1))` -/
def P10750066299327229210.Spec : Prop :=
  ∀ n, P10750066299327229210.a n = A296213 (n + 1)

end A296213

/-! ## A296213.P759981218351666195

`A000005(A088580(n+1))%A321271(A039649(n+1))`
-/

namespace A296213.P759981218351666195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A088580 (n + 1)).toNat) (A321271 (A039649 (n + 1)).toNat)

end

end A296213.P759981218351666195

namespace A296213

/-- `A000005(A088580(n+1))%A321271(A039649(n+1))` -/
def P759981218351666195.Spec : Prop :=
  ∀ n, P759981218351666195.a n = A296213 (n + 1)

end A296213

/-! ## A296213.P12987308249713211285

`A000005(A000203(n+1)+1)%A328919(A000010(n+1)+1)`
-/

namespace A296213.P12987308249713211285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A000203 (n + 1) + 1).toNat) (A328919 (A000010 (n + 1) + 1).toNat)

end

end A296213.P12987308249713211285

namespace A296213

/-- `A000005(A000203(n+1)+1)%A328919(A000010(n+1)+1)` -/
def P12987308249713211285.Spec : Prop :=
  ∀ n, P12987308249713211285.a n = A296213 (n + 1)

end A296213

/-! ## A296213.P2481604874972382166

`and(A002262(A051467(n)), A024360(n+1))`
-/

namespace A296213.P2481604874972382166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002262 (A051467 n).toNat) (A024360 (n + 1))

end

end A296213.P2481604874972382166

namespace A296213

/-- `and(A002262(A051467(n)), A024360(n+1))` -/
def P2481604874972382166.Spec : Prop :=
  ∀ n, P2481604874972382166.a n = A296213 (n + 1)

end A296213

/-! ## A296213.P15992326740207722217

`A293162(and(A033951(n), A291637(n+1)))`
-/

namespace A296213.P15992326740207722217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293162 (Int.land (A033951 n) (A291637 (n + 1))).toNat

end

end A296213.P15992326740207722217

namespace A296213

/-- `A293162(and(A033951(n), A291637(n+1)))` -/
def P15992326740207722217.Spec : Prop :=
  ∀ n, P15992326740207722217.a n = A296213 (n + 1)

end A296213

/-! ## A296213.P752691422714036918

`A044941(A329608(n+1))^A329588(n+1)`
-/

namespace A296213.P752691422714036918
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A044941 (A329608 (n + 1)).toNat : ℚ) ^ (A329588 (n + 1) : ℤ)

end

end A296213.P752691422714036918

namespace A296213

/-- `A044941(A329608(n+1))^A329588(n+1)` -/
def P752691422714036918.Spec : Prop :=
  ∀ n, P752691422714036918.a n = (A296213 (n + 1) : ℚ)

end A296213

/-! ## A296213.P3479693726810696196

`A104557(n)%A063062(n)`
-/

namespace A296213.P3479693726810696196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104557 n) (A063062 n)

end

end A296213.P3479693726810696196

namespace A296213

/-- `A104557(n)%A063062(n)` -/
def P3479693726810696196.Spec : Prop :=
  ∀ n, P3479693726810696196.a n = A296213 (n + 1)

end A296213

/-!
# A296214: Numbers k for which there is at least one x < k such that phi(x) = phi(k).

The programs for A296214, there is no canonical definition to state claims against.
-/

/-! ## A296214.P7521431808604844094

`lt[0, A171934(n+1)]+1`
-/

namespace A296214.P7521431808604844094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296214.P7521431808604844094

/-! ## A296214.P9044628275822262060

`lt[1, A081373(n+1)]+1`
-/

namespace A296214.P9044628275822262060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081373 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296214.P9044628275822262060

/-! ## A296214.P2291072320173503

`comp[A002181(n+1)-1]+1`
-/

namespace A296214.P2291072320173503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A296214.P2291072320173503

/-! ## A296214.P14012197523388059448

`lt[gcd(2, n), A303757(n+1)+1]+1`
-/

namespace A296214.P14012197523388059448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303757 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A296214.P14012197523388059448

/-! ## A296214.P6981849841557150319

`lt[A015126(n+1), n+1]+1`
-/

namespace A296214.P6981849841557150319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A296214.P6981849841557150319

/-! ## A296214.P15049248887080461180

`A061070(a(n-1)+1)+n+1` with `a(0)=2`
-/

namespace A296214.P15049248887080461180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A061070 (a (n - 1) + 1).toNat + (n + 1 : ℤ)

end

end A296214.P15049248887080461180

/-! ## A296214.P12328799982407131052

`lt[0, A171934(A028310(n))]`
-/

namespace A296214.P12328799982407131052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171934 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A296214.P12328799982407131052

/-! ## A296214.P8846155133855173059

`eq[1, char[A049283(n+1)]+1]`
-/

namespace A296214.P8846155133855173059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A296214.P8846155133855173059

/-! ## A296214.P6307308796245141167

`lt[n*char[A015126(n+1)], n]`
-/

namespace A296214.P6307308796245141167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015126 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A296214.P6307308796245141167

/-! ## A296214.P16987921747352629189

`comp[A049283(n+1)]%A049307(n+1)`
-/

namespace A296214.P16987921747352629189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049283 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A049307 (n + 1))

end

end A296214.P16987921747352629189

/-! ## A296214.P17611556363186799940

`eq[n+1, A066659(A262603(n+1))]+1`
-/

namespace A296214.P17611556363186799940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066659 (A262603 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296214.P17611556363186799940

/-! ## A296214.P6134840482890855780

`eq[A008683((n+1)*(n+1)), char[A002181(n+1)]]`
-/

namespace A296214.P6134840482890855780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) * (n + 1))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002181 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A296214.P6134840482890855780

/-!
# A296215: Solution of the complementary equation a(n) = a(1)*b(n-2) + a(2)*b(n-3) + ... + a(n-1)*b(0), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296215, there is no canonical definition to state claims against.
-/

/-! ## A296215.P15435302162180896367

`∑[A038568(A000225(3*n))+n]`
-/

namespace A296215.P15435302162180896367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A000225 (3 * n)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296215.P15435302162180896367

/-! ## A296215.P15812346591123619637

`xor(floor(n/3), A081386(A218134(n)))`
-/

namespace A296215.P15812346591123619637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊(n : ℚ) / 3⌋ (A081386 (A218134 n).toNat)

end

end A296215.P15812346591123619637

/-!
# A296217: Solution of the complementary equation a(n) = a(1)*b(n-2) + a(2)*b(n-3) + ... + a(n-1)*b(0), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296217, there is no canonical definition to state claims against.
-/

/-! ## A296217.P12488102781167708902

`A008620(A228569(n)-A270954(n))`
-/

namespace A296217.P12488102781167708902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A228569 n - A270954 n).toNat

end

end A296217.P12488102781167708902

/-! ## A296217.P15907751628499933223

`A107037(A150285(n))`
-/

namespace A296217.P15907751628499933223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107037 (A150285 n).toNat

end

end A296217.P15907751628499933223

/-!
# A296219: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296219, there is no canonical definition to state claims against.
-/

/-! ## A296219.P5056618899766147607

`∑[dr(A116028(A034583(n)))]`
-/

namespace A296219.P5056618899766147607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A116028 (A034583 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296219.P5056618899766147607

/-! ## A296219.P5648449272777989968

`A145197(n+2)+A095049(A095054(2*n+1))`
-/

namespace A296219.P5648449272777989968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145197 (n + 2) + A095049 (A095054 (2 * n + 1)).toNat

end

end A296219.P5648449272777989968

/-! ## A296219.P15049325638629753616

`lt[A216831(A347224(n+2)), A347223(2*(n+2))]`
-/

namespace A296219.P15049325638629753616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216831 (A347224 (n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347223 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A296219.P15049325638629753616

/-!
# A296220: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296220, there is no canonical definition to state claims against.
-/

/-! ## A296220.P17087531074417774805

`A297964(n)+4*n`
-/

namespace A296220.P17087531074417774805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297964 n + (4 * n : ℤ)

end

end A296220.P17087531074417774805

/-! ## A296220.P7456270397773787047

`(A297964(n)+A008586(n))^C(2, C(2, n²))`
-/

namespace A296220.P7456270397773787047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A297964 n + A008586 n) ^ Nat.choose 2 (Nat.choose 2 (n ^ 2))

end

end A296220.P7456270397773787047

/-! ## A296220.P2663002241312874493

`A000027(A297964(n)+A008586(n))`
-/

namespace A296220.P2663002241312874493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A297964 n + A008586 n).toNat

end

end A296220.P2663002241312874493

/-! ## A296220.P10128517851575549476

`A005843(n)+A297964(n)+A005843(n)`
-/

namespace A296220.P10128517851575549476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + (A297964 n + A005843 n)

end

end A296220.P10128517851575549476

/-! ## A296220.P216505311335308430

`(A297964(n)+A008586(n))%A000040(n+1)²`
-/

namespace A296220.P216505311335308430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297964 n + A008586 n) (A000040 (n + 1) ^ 2)

end

end A296220.P216505311335308430

/-! ## A296220.P3057449935887547879

`(A297964(n)+A008586(n))^A000108(C(2, n+1))`
-/

namespace A296220.P3057449935887547879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297964 n + A008586 n : ℚ) ^ (A000108 (Nat.choose 2 (n + 1)) : ℤ)

end

end A296220.P3057449935887547879

/-! ## A296220.P9263321791947226310

`A106610(A297964(n)+A008586(n))`
-/

namespace A296220.P9263321791947226310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 (A297964 n + A008586 n).toNat

end

end A296220.P9263321791947226310

/-! ## A296220.P17280837083061491359

`A051176(A297964(n)+A008586(n))`
-/

namespace A296220.P17280837083061491359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A297964 n + A008586 n).toNat

end

end A296220.P17280837083061491359

/-! ## A296220.P2680283612406118959

`(A297964(n)+A008586(n))%p?[A004207(n)]`
-/

namespace A296220.P2680283612406118959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297964 n + A008586 n) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A296220.P2680283612406118959

/-!
# A296221: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0) + 1, where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296221, there is no canonical definition to state claims against.
-/

/-! ## A296221.P8586816597971064638

`A152489(A047074(n))+A052941(n)`
-/

namespace A296221.P8586816597971064638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152489 (A047074 n).toNat + A052941 n

end

end A296221.P8586816597971064638

/-! ## A296221.P4374790130944602147

`A178798(A052959(n))+A052941(n)`
-/

namespace A296221.P4374790130944602147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A052959 n).toNat + A052941 n

end

end A296221.P4374790130944602147

/-! ## A296221.P8312516966888721731

`A052941(n)-A178798(A120707(n))`
-/

namespace A296221.P8312516966888721731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052941 n - A178798 (A120707 n).toNat

end

end A296221.P8312516966888721731

/-! ## A296221.P8552698654835815725

`A178798(A212804(n+2))+A052941(n)`
-/

namespace A296221.P8552698654835815725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A212804 (n + 2)).toNat + A052941 n

end

end A296221.P8552698654835815725

/-!
# A296223: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296223, there is no canonical definition to state claims against.
-/

/-! ## A296223.P1028249771740897846

`∑[A162371(A052936(n))]`
-/

namespace A296223.P1028249771740897846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162371 (A052936 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296223.P1028249771740897846

/-!
# A296225: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0) + n, where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296225, there is no canonical definition to state claims against.
-/

/-! ## A296225.P18160969916017057816

`A134119(A116520(n)+A010905(n))`
-/

namespace A296225.P18160969916017057816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134119 (A116520 n + A010905 n).toNat

end

end A296225.P18160969916017057816

/-! ## A296225.P2419884314813106795

`A165205(n)-A000035(A054765(n))`
-/

namespace A296225.P2419884314813106795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165205 n - A000035 (A054765 n).toNat

end

end A296225.P2419884314813106795

/-!
# A296227: Solution of the complementary equation a(n) = a(0)*b(n-1) + a(1)*b(n-2) + ... + a(n-1)*b(0) - n, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296227, there is no canonical definition to state claims against.
-/

/-! ## A296227.P107623906411892454

`A004277(A095940(n))+A000393(n+1)`
-/

namespace A296227.P107623906411892454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A095940 n).toNat + A000393 (n + 1)

end

end A296227.P107623906411892454

/-! ## A296227.P16060423987769682856

`floor(A313893(round(ϕ*a(n-1)))/2)` with `a(0)=1, a(1)=2`
-/

namespace A296227.P16060423987769682856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ⌊(A313893 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat : ℚ) / 2⌋

end

end A296227.P16060423987769682856

/-! ## A296227.P16113943066112655662

`A029928(A095939(n))`
-/

namespace A296227.P16113943066112655662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029928 (A095939 n).toNat

end

end A296227.P16113943066112655662

/-!
# A296229: Triangle read by rows: Eulerian triangle that produces sums of even powers.

The programs for A296229, there is no canonical definition to state claims against.
-/

/-! ## A296229.P14960376231642675280

`2*A257609(n)`
-/

namespace A296229.P14960376231642675280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A257609 n

end

end A296229.P14960376231642675280

/-! ## A296229.P11514852712953272129

`∏[char[∑[n]]+1]*A008292(n+1)`
-/

namespace A296229.P11514852712953272129
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A008292 (n + 1)

end

end A296229.P11514852712953272129

/-! ## A296229.P7338103254254673017

`∏[char[∑[n]]+1]*A123125(comp[∑[n]])`
-/

namespace A296229.P7338103254254673017
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123125 (SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n)

end

end A296229.P7338103254254673017

/-! ## A296229.P16399523568668558761

`(A176200(n)+1)*∏[char[∑[n+1]]+1]`
-/

namespace A296229.P16399523568668558761
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A176200 n + 1) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A296229.P16399523568668558761

/-! ## A296229.P2540205548738590252

`A008292(n+1)*A140513(n)`
-/

namespace A296229.P2540205548738590252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (n + 1) * A140513 n

end

end A296229.P2540205548738590252

/-! ## A296229.P17966271181831509253

`A090988(n+1)*A142075(n+1)`
-/

namespace A296229.P17966271181831509253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090988 (n + 1) * A142075 (n + 1)

end

end A296229.P17966271181831509253

/-! ## A296229.P10709083385555128054

`2*A008292(n+1)*A137688(n)`
-/

namespace A296229.P10709083385555128054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008292 (n + 1) * A137688 n)

end

end A296229.P10709083385555128054

/-! ## A296229.P6445326313208071211

`2*A142075(n+1)*A130321(n)`
-/

namespace A296229.P6445326313208071211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A142075 (n + 1) * A130321 n

end

end A296229.P6445326313208071211

/-! ## A296229.P17077082781210366710

`(A141690(n)+A007318(n))*A137688(n)`
-/

namespace A296229.P17077082781210366710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A141690 n + A007318 n) * A137688 n

end

end A296229.P17077082781210366710

/-! ## A296229.P9149259823130679686

`A101842(2*n+1)+A101842(2*(n+1))`
-/

namespace A296229.P9149259823130679686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101842 (2 * n + 1) + A101842 (2 * (n + 1))

end

end A296229.P9149259823130679686

/-! ## A296229.P17192171068509798066

`sqrt(A177823(n+1))*∏[char[∑[n]]+1]`
-/

namespace A296229.P17192171068509798066
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A177823 (n + 1) : ℝ) * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)

end

end A296229.P17192171068509798066

/-!
# A296231: G.f. A(x) satisfies: 1 = Sum_{n>=0} x^n / (1-x)^( n*(n+1) ) / A(x)^( (n+1)*(n+2)/2 ).

The programs for A296231, there is no canonical definition to state claims against.
-/

/-! ## A296231.P3400374163072815871

`A103372(eq[A002262(n), A114153(n)])`
-/

namespace A296231.P3400374163072815871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296231.P3400374163072815871

/-! ## A296231.P14827960147577623826

`A110656(A274295(n)+A077739(n+1))`
-/

namespace A296231.P14827960147577623826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A274295 n + A077739 (n + 1)).toNat

end

end A296231.P14827960147577623826

/-! ## A296231.P6837093094405640425

`A103372(C(A077739(n+1), A000008(n)))`
-/

namespace A296231.P6837093094405640425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103372 (Nat.choose (A077739 (n + 1)).toNat (A000008 n).toNat)

end

end A296231.P6837093094405640425

/-! ## A296231.P3625929010102369085

`xor(A037957(n), A298538(A032305(n+1)))`
-/

namespace A296231.P3625929010102369085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A037957 n) (A298538 (A032305 (n + 1)).toNat)

end

end A296231.P3625929010102369085

/-!
# A296232: a(n) = [x^n/n!] G(x)^((n+1)^2) / (n+1)^2 for n>=0, where G(x) is the e.g.f. of A296170.

The programs for A296232, there is no canonical definition to state claims against.
-/

/-! ## A296232.P9644625748956003576

`A003052(A133952(record[∏{p}[n+1, #+1]]))`
-/

namespace A296232.P9644625748956003576
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (p + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003052 (A133952 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A296232.P9644625748956003576

/-!
# A296233: Numbers k such that U(i) is not isomorphic to U(k) for all i < k, where U(k) is the multiplicative group of integers modulo k.

The programs for A296233, there is no canonical definition to state claims against.
-/

/-! ## A296233.P12795959334416288401

`eq[1, A303755(n+1)]+1`
-/

namespace A296233.P12795959334416288401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303755 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A296233.P12795959334416288401

/-! ## A296233.P11867593624390670994

`record[A000027(n+1)/A303755(n+1)]`
-/

namespace A296233.P11867593624390670994
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A303755 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296233.P11867593624390670994

/-! ## A296233.P6575687921843436464

`record[(n+1)*A069851(2*A303755(n+1))]`
-/

namespace A296233.P6575687921843436464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A069851 (2 * A303755 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296233.P6575687921843436464

/-! ## A296233.P12853686790137467661

`record[A320045(n+1)]`
-/

namespace A296233.P12853686790137467661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296233.P12853686790137467661

/-! ## A296233.P9827909794482330448

`A320045(eq[n+1, A320045(n+1)]+1)`
-/

namespace A296233.P9827909794482330448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320045 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A296233.P9827909794482330448

/-!
# A296236: Prime-slideable numbers: such that a prime can be obtained by moving each digit d by d places either to the left or right, without creating a hole or overlap.

The programs for A296236, there is no canonical definition to state claims against.
-/

/-! ## A296236.P8826300768492714093

`A367306(A007500(n+1))`
-/

namespace A296236.P8826300768492714093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A007500 (n + 1)).toNat

end

end A296236.P8826300768492714093

/-! ## A296236.P17783732515562395765

`A367306(A061461(n+1))`
-/

namespace A296236.P17783732515562395765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A061461 (n + 1)).toNat

end

end A296236.P17783732515562395765

/-! ## A296236.P1178716332435170544

`A367306(A068652(n+1))`
-/

namespace A296236.P1178716332435170544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A068652 (n + 1)).toNat

end

end A296236.P1178716332435170544

/-! ## A296236.P11775946714159181807

`A367306(A069706(n+1))`
-/

namespace A296236.P11775946714159181807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A069706 (n + 1)).toNat

end

end A296236.P11775946714159181807

/-! ## A296236.P11174167704147499403

`A367306(A090933(n+1))`
-/

namespace A296236.P11174167704147499403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367306 (A090933 (n + 1)).toNat

end

end A296236.P11174167704147499403

/-!
# A296238: Expansion of Product_{k>0} (1 + x^(k*(3*k+1)/2)).

The programs for A296238, there is no canonical definition to state claims against.
-/

/-! ## A296238.P2271281980144553929

`A291749(A156301(2*n))^p?[A109202(n)]`
-/

namespace A296238.P2271281980144553929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109202 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291749 (A156301 (2 * n)).toNat : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A296238.P2271281980144553929

/-! ## A296238.P6418729029994844095

`A291749(A156301(2*n))^A297026(n+1)`
-/

namespace A296238.P6418729029994844095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A291749 (A156301 (2 * n)).toNat : ℚ) ^ (A297026 (n + 1) : ℤ)

end

end A296238.P6418729029994844095

/-! ## A296238.P502634637084142981

`A212582(A006512(n+1))%A294647(2*(n+2))`
-/

namespace A296238.P502634637084142981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212582 (A006512 (n + 1)).toNat) (A294647 (2 * (n + 2)))

end

end A296238.P502634637084142981

/-! ## A296238.P2879687711799033871

`A010054(A325770(3*n+1)+A035103(3*n+5))`
-/

namespace A296238.P2879687711799033871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A325770 (3 * n + 1) + A035103 (3 * n + 5)).toNat

end

end A296238.P2879687711799033871

/-! ## A296238.P6082407633535821939

`A333229(A078477(n+3))%A294647(2*(n+2))`
-/

namespace A296238.P6082407633535821939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333229 (A078477 (n + 3)).toNat) (A294647 (2 * (n + 2)))

end

end A296238.P6082407633535821939

/-!
# A296239: a(n) = distance from n to nearest Fibonacci number.

The programs for A296239, the canonical program `A296239.P16154602574454060367` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A296239 has offset 0).

The definition of A296239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A296239.P16154602574454060367

`abs(A087172(a(n-1)+n)-n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A296239

/-- `abs(A087172(a(n-1)+n)-n)` -/
def P16154602574454060367.Spec : Prop :=
  ∀ n, P16154602574454060367.a n = A296239 n

theorem P16154602574454060367.correct : P16154602574454060367.Spec := by
  intro n
  simp only [A296239]

end A296239

/-! ## A296239.P7466202111218182018

`A355690(A298685(n+3))+A309416(n)`
-/

namespace A296239.P7466202111218182018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355690 (A298685 (n + 3)).toNat + A309416 n

end

end A296239.P7466202111218182018

namespace A296239

/-- `A355690(A298685(n+3))+A309416(n)` -/
def P7466202111218182018.Spec : Prop :=
  ∀ n, P7466202111218182018.a n = A296239 n

end A296239

/-! ## A296239.P1690139383667472738

`A309416(A001222(2^n))`
-/

namespace A296239.P1690139383667472738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309416 (A001222 (2 ^ n)).toNat

end

end A296239.P1690139383667472738

namespace A296239

/-- `A309416(A001222(2^n))` -/
def P1690139383667472738.Spec : Prop :=
  ∀ n, P1690139383667472738.a n = A296239 n

end A296239

/-! ## A296239.P9168633749597497630

`A309414(9^A309416(n))`
-/

namespace A296239.P9168633749597497630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309414 (SequenceMachineLib.roundAway ((9 : ℚ) ^ (A309416 n : ℤ))).toNat

end

end A296239.P9168633749597497630

namespace A296239

/-- `A309414(9^A309416(n))` -/
def P9168633749597497630.Spec : Prop :=
  ∀ n, P9168633749597497630.a n = A296239 n

end A296239

/-! ## A296239.P9958491563213915874

`A087436(13^A309416(n))`
-/

namespace A296239.P9958491563213915874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (SequenceMachineLib.roundAway ((13 : ℚ) ^ (A309416 n : ℤ))).toNat

end

end A296239.P9958491563213915874

namespace A296239

/-- `A087436(13^A309416(n))` -/
def P9958491563213915874.Spec : Prop :=
  ∀ n, P9958491563213915874.a n = A296239 n

end A296239

/-!
# A296240: Pisano quotients: a(n) = (p-1)/k(p) if p == +- 1 mod 5, = (2*p+2)/k(p) if p == +- 2 mod 5, where p = prime(n) and k(p) = Pisano period(p).

The programs for A296240, there is no canonical definition to state claims against.
-/

/-! ## A296240.P7405992901419185038

`gcd(A064427(A007089(3*n+2)), A109374(n+1))`
-/

namespace A296240.P7405992901419185038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064427 (A007089 (3 * n + 2)).toNat) (A109374 (n + 1))

end

end A296240.P7405992901419185038

/-! ## A296240.P13089609659175209143

`A236859(ceil((A299755(3*(n+1))+A242424(3*n+1))/4))`
-/

namespace A296240.P13089609659175209143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236859 ⌈(A299755 (3 * (n + 1)) + A242424 (3 * n + 1) : ℚ) / 4⌉.toNat

end

end A296240.P13089609659175209143

/-! ## A296240.P9014705526727437474

`A091887(A120861(n+1)+4)`
-/

namespace A296240.P9014705526727437474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091887 (A120861 (n + 1) + 4).toNat

end

end A296240.P9014705526727437474

/-! ## A296240.P12860421138119242003

`A344912(and(A109393(3*n), A109649(3*(n+1))))`
-/

namespace A296240.P12860421138119242003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344912 (Int.land (A109393 (3 * n)) (A109649 (3 * (n + 1)))).toNat

end

end A296240.P12860421138119242003

/-! ## A296240.P2458429627564946583

`gcd(A138298(n), A335845(n))%4`
-/

namespace A296240.P2458429627564946583
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138298 n) (A335845 n) % 4

end

end A296240.P2458429627564946583

/-!
# A296241: Finite number of units in a commutative ring; nonnegative even numbers together with products of Mersenne numbers.

The programs for A296241, there is no canonical definition to state claims against.
-/

/-! ## A296241.P17470247899141333546

`comp[A295584(n+1)]`
-/

namespace A296241.P17470247899141333546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295584 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A296241.P17470247899141333546

/-! ## A296241.P11605027020377121831

`∪[2*n, A070932(n+1)]`
-/

namespace A296241.P11605027020377121831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P11605027020377121831

/-! ## A296241.P4106524323114292648

`∪[2*n, A282572(n+1)]`
-/

namespace A296241.P4106524323114292648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P4106524323114292648

/-! ## A296241.P16681413341482062397

`∪[A070932(n+2), comp[or(1, n)]]`
-/

namespace A296241.P16681413341482062397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A296241.P16681413341482062397

/-! ## A296241.P4851672995896191581

`eq[char[A246674(n)], A000035(n)]`
-/

namespace A296241.P4851672995896191581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246674 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A296241.P4851672995896191581

/-! ## A296241.P8728135569545197180

`∪[A070932(n+1), A004271(n)]`
-/

namespace A296241.P8728135569545197180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P8728135569545197180

/-! ## A296241.P708503914214975323

`∪[A070932(n+1), A004275(n)]`
-/

namespace A296241.P708503914214975323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P708503914214975323

/-! ## A296241.P4169381432260090146

`∪[A070932(n+1), A004277(n)]`
-/

namespace A296241.P4169381432260090146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P4169381432260090146

/-! ## A296241.P12488870568414217989

`∪[A070932(n+1), A005843(n)]`
-/

namespace A296241.P12488870568414217989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P12488870568414217989

/-! ## A296241.P14677153349722855606

`∪[A070932(n+1), A020739(n)]`
-/

namespace A296241.P14677153349722855606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A296241.P14677153349722855606

/-!
# A296242: Slideable numbers: each digit d can be displaced by d positions either to the left or to the right, without creating a hole or an "overlap".

The programs for A296242, there is no canonical definition to state claims against.
-/

/-! ## A296242.P17107159616316857426

`eq[1, A024430(A151950(n))]`
-/

namespace A296242.P17107159616316857426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024430 (A151950 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296242.P17107159616316857426

/-! ## A296242.P3509938179840891238

`eq[1, A000166(A347689(n))]`
-/

namespace A296242.P3509938179840891238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (A347689 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296242.P3509938179840891238

/-! ## A296242.P11981702814596914571

`eq[1, A372168(A040115(n))]`
-/

namespace A296242.P11981702814596914571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372168 (A040115 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296242.P11981702814596914571

/-! ## A296242.P7227371894170864791

`lt[A352513(A151949(n)), 2]`
-/

namespace A296242.P7227371894170864791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352513 (A151949 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A296242.P7227371894170864791

/-! ## A296242.P14393149814085572041

`eq[1, A193592(A151949(n)²)]`
-/

namespace A296242.P14393149814085572041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A151949 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296242.P14393149814085572041

/-!
# A296243: Numbers k such that the multiplicative order of 2 modulo k is even.

The programs for A296243, there is no canonical definition to state claims against.
-/

/-! ## A296243.P6249836589415072858

`A005408(eq[2, A020639(A002326(n))])`
-/

namespace A296243.P6249836589415072858
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A002326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296243.P6249836589415072858

/-! ## A296243.P3471141800966345412

`A005408(lt[A302141(n), A002326(n)])`
-/

namespace A296243.P3471141800966345412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296243.P3471141800966345412

/-! ## A296243.P11831726246089441808

`A005408(eq[A002326(n), A055388(n+1)])`
-/

namespace A296243.P11831726246089441808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296243.P11831726246089441808

/-! ## A296243.P16357951705376520250

`A005408(eq[1, A000034(A002326(n))])`
-/

namespace A296243.P16357951705376520250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A002326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A296243.P16357951705376520250

/-! ## A296243.P684389828788056547

`eq[2, A020639(A007733(A093178(n)))]`
-/

namespace A296243.P684389828788056547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007733 (A093178 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A296243.P684389828788056547

/-! ## A296243.P8726083171497940005

`eq[A000035(A204987(n+1)), A001511(n+1)]+1`
-/

namespace A296243.P8726083171497940005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A204987 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296243.P8726083171497940005

/-! ## A296243.P1212211336082826835

`eq[2*A217521(n+2), A217519(n+2)]+2`
-/

namespace A296243.P1212211336082826835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217521 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217519 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A296243.P1212211336082826835

/-!
# A296244: Odd numbers k such that A007733(k) is even but 2^x == -1 (mod k) is insoluble.

The programs for A296244, there is no canonical definition to state claims against.
-/

/-! ## A296244.P8138933173153847970

`2*lt[A053447(n), A003558(n)]+1`
-/

namespace A296244.P8138933173153847970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A296244.P8138933173153847970

/-! ## A296244.P12357969191489578926

`∩[A014659(n+1), A296243(n+1)]`
-/

namespace A296244.P12357969191489578926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014659 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296244.P12357969191489578926

/-! ## A296244.P11392316611761011481

`∩[A014661(n+1), A296243(n+1)]`
-/

namespace A296244.P11392316611761011481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014661 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A296244.P11392316611761011481

/-! ## A296244.P13848991417953675321

`2*eq[A003558(n), A055388(n+1)]+1`
-/

namespace A296244.P13848991417953675321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A296244.P13848991417953675321

/-! ## A296244.P14985902908146344081

`A005408(lt[A053447(n), A003558(n)])`
-/

namespace A296244.P14985902908146344081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296244.P14985902908146344081

/-! ## A296244.P4746704192888070665

`A144396(lt[A053447(n), A003558(n)])`
-/

namespace A296244.P4746704192888070665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A296244.P4746704192888070665

/-! ## A296244.P2122636490790872011

`A005408(eq[A003558(n), A055388(n+1)])`
-/

namespace A296244.P2122636490790872011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296244.P2122636490790872011

/-! ## A296244.P11404419688951398711

`A144396(eq[A003558(n), A055388(n+1)])`
-/

namespace A296244.P11404419688951398711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296244.P11404419688951398711

/-! ## A296244.P10076979968055895396

`A267872(eq[A003558(n), A055388(n+1)])`
-/

namespace A296244.P10076979968055895396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267872 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296244.P10076979968055895396

/-! ## A296244.P10476981265751419079

`A267873(eq[A003558(n), A055388(n+1)])`
-/

namespace A296244.P10476981265751419079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A296244.P10476981265751419079

/-!
# A296245: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296245, there is no canonical definition to state claims against.
-/

/-! ## A296245.P3028875965674440947

`A296248(n)-A183335(∑[n+1])`
-/

namespace A296245.P3028875965674440947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296248 n - A183335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296245.P3028875965674440947

/-! ## A296245.P12913504372088487508

`A296246(n)-Δ[A183335(A000124(n))]`
-/

namespace A296245.P12913504372088487508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183335 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296246 n - (f1 (n + 1) - f1 n)

end

end A296245.P12913504372088487508

/-! ## A296245.P16897795877889818960

`A296249(n)-A183335(A000124(n+1))`
-/

namespace A296245.P16897795877889818960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n - A183335 (A000124 (n + 1)).toNat

end

end A296245.P16897795877889818960

/-! ## A296245.P389927169292218118

`A000007(A016826(n))+A296248(n)-A000045(n+1)`
-/

namespace A296245.P389927169292218118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A016826 n).toNat + (A296248 n - A000045 (n + 1))

end

end A296245.P389927169292218118

/-! ## A296245.P18378007399895257372

`A296246(n)-A001489(A212804(n))-A000045(n+1)`
-/

namespace A296245.P18378007399895257372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296246 n - A001489 (A212804 n).toNat - A000045 (n + 1)

end

end A296245.P18378007399895257372

/-!
# A296246: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296246, there is no canonical definition to state claims against.
-/

/-! ## A296246.P9369585707660995615

`A296249(n)-A183335(A000124(n))`
-/

namespace A296246.P9369585707660995615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n - A183335 (A000124 n).toNat

end

end A296246.P9369585707660995615

/-! ## A296246.P1482634925754388151

`A296249(n)-A305516(A000124(n+1))`
-/

namespace A296246.P1482634925754388151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n - A305516 (A000124 (n + 1)).toNat

end

end A296246.P1482634925754388151

/-! ## A296246.P9936753681689185511

`A000038(A092081(n))+A296248(n)-A212804(n)`
-/

namespace A296246.P9936753681689185511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A092081 n).toNat + (A296248 n - A212804 n)

end

end A296246.P9936753681689185511

/-! ## A296246.P3759845021897291191

`A023416(A118681(n+1))*A296248(n)-A212804(n)`
-/

namespace A296246.P3759845021897291191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A118681 (n + 1)).toNat * A296248 n - A212804 n

end

end A296246.P3759845021897291191

/-! ## A296246.P6728015956968041623

`(A296248(n)-A212804(n))%A188136(A000124(n+5)+5)`
-/

namespace A296246.P6728015956968041623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296248 n - A212804 n) (A188136 (A000124 (n + 5) + 5).toNat)

end

end A296246.P6728015956968041623

/-!
# A296247: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296247, there is no canonical definition to state claims against.
-/

/-! ## A296247.P5159126433815576209

`A000045(n)+A296249(n)-A305516(A000124(n+1))`
-/

namespace A296247.P5159126433815576209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296249 n - A305516 (A000124 (n + 1)).toNat)

end

end A296247.P5159126433815576209

/-! ## A296247.P14278386120140935831

`A212804(n+1)+A296249(n)-A305516(A000124(n+1))`
-/

namespace A296247.P14278386120140935831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (A296249 n - A305516 (A000124 (n + 1)).toNat)

end

end A296247.P14278386120140935831

/-! ## A296247.P17959226057218869990

`A001611(n)-1+A296249(n)-A305516(A000124(n+1))`
-/

namespace A296247.P17959226057218869990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1 + (A296249 n - A305516 (A000124 (n + 1)).toNat)

end

end A296247.P17959226057218869990

/-! ## A296247.P18143652010981786124

`A157725(n)-2+A296249(n)-A305516(A000124(n+1))`
-/

namespace A296247.P18143652010981786124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2 + (A296249 n - A305516 (A000124 (n + 1)).toNat)

end

end A296247.P18143652010981786124

/-! ## A296247.P2140204250628086941

`A103609(2*n)+A296249(n)-A305516(A000124(n+1))`
-/

namespace A296247.P2140204250628086941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (A296249 n - A305516 (A000124 (n + 1)).toNat)

end

end A296247.P2140204250628086941

/-!
# A296248: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296248, there is no canonical definition to state claims against.
-/

/-! ## A296248.P745072892727648497

`A296249(n)-A305516(A000124(n))`
-/

namespace A296248.P745072892727648497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n - A305516 (A000124 n).toNat

end

end A296248.P745072892727648497

/-! ## A296248.P10162803735909036975

`A296250(n)-A183335(A000124(n))`
-/

namespace A296248.P10162803735909036975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296250 n - A183335 (A000124 n).toNat

end

end A296248.P10162803735909036975

/-! ## A296248.P15104824130259772994

`A296245(n)+A183335(∑[n+1])`
-/

namespace A296248.P15104824130259772994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296245 n + A183335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296248.P15104824130259772994

/-! ## A296248.P4836768081539756329

`A296246(n)-A001489(A212804(n))`
-/

namespace A296248.P4836768081539756329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296246 n - A001489 (A212804 n).toNat

end

end A296248.P4836768081539756329

/-! ## A296248.P2207910299905778212

`A296249(n)+A001489(A000045(n))`
-/

namespace A296248.P2207910299905778212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296249 n + A001489 (A000045 n).toNat

end

end A296248.P2207910299905778212

/-!
# A296249: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296249, there is no canonical definition to state claims against.
-/

/-! ## A296249.P16784917844015560693

`A305516(A000124(n))+A296248(n)`
-/

namespace A296249.P16784917844015560693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A000124 n).toNat + A296248 n

end

end A296249.P16784917844015560693

/-! ## A296249.P14586445332348679897

`A296246(n)+A183335(A000124(n))`
-/

namespace A296249.P14586445332348679897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296246 n + A183335 (A000124 n).toNat

end

end A296249.P14586445332348679897

/-! ## A296249.P16718256390078144422

`A296246(n)+A183335(∑[n+1])`
-/

namespace A296249.P16718256390078144422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296246 n + A183335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296249.P16718256390078144422

/-! ## A296249.P6377368577077118035

`A296245(n)+A183335(A000124(n+1))`
-/

namespace A296249.P6377368577077118035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296245 n + A183335 (A000124 (n + 1)).toNat

end

end A296249.P6377368577077118035

/-! ## A296249.P347346270963715820

`A000045(n)+A296246(n)-A001489(A212804(n))`
-/

namespace A296249.P347346270963715820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296246 n - A001489 (A212804 n).toNat)

end

end A296249.P347346270963715820

/-!
# A296250: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n)^2, where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296250, there is no canonical definition to state claims against.
-/

/-! ## A296250.P9999096870547540607

`A296248(n)+A183335(A000124(n))`
-/

namespace A296250.P9999096870547540607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296248 n + A183335 (A000124 n).toNat

end

end A296250.P9999096870547540607

/-! ## A296250.P4379670598937268353

`A305516(A000124(n+1))+A296248(n)`
-/

namespace A296250.P4379670598937268353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305516 (A000124 (n + 1)).toNat + A296248 n

end

end A296250.P4379670598937268353

/-! ## A296250.P3577575344917053298

`A296248(n)+A183335(∑[n+1])`
-/

namespace A296250.P3577575344917053298
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296248 n + A183335 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A296250.P3577575344917053298

/-! ## A296250.P1463385469465161303

`A006355(n+2)+A000007(A016826(n))+A296248(n)-A000045(n+1)`
-/

namespace A296250.P1463385469465161303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 2) + (A000007 (A016826 n).toNat + (A296248 n - A000045 (n + 1)))

end

end A296250.P1463385469465161303

/-! ## A296250.P3180469061615669220

`A118658(n+2)+(A296248(n)-A000045(n+1))%A075954(n)`
-/

namespace A296250.P3180469061615669220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 2) + Int.tmod (A296248 n - A000045 (n + 1)) (A075954 n)

end

end A296250.P3180469061615669220

/-!
# A296251: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296251, there is no canonical definition to state claims against.
-/

/-! ## A296251.P3317120572151476880

`A296254(n)-A197896(A000124(n))`
-/

namespace A296251.P3317120572151476880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296254 n - A197896 (A000124 n).toNat

end

end A296251.P3317120572151476880

/-! ## A296251.P13782530004319396820

`A296254(n)-A048680(A011782(n))`
-/

namespace A296251.P13782530004319396820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296254 n - A048680 (A011782 n).toNat

end

end A296251.P13782530004319396820

/-! ## A296251.P2208023153895564872

`A296266(n)+A000071(A187829(n+1))`
-/

namespace A296251.P2208023153895564872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296266 n + A000071 (A187829 (n + 1)).toNat

end

end A296251.P2208023153895564872

/-! ## A296251.P1957025574649298979

`A296254(n)-A000045(A187829(n+1))`
-/

namespace A296251.P1957025574649298979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296254 n - A000045 (A187829 (n + 1)).toNat

end

end A296251.P1957025574649298979

/-! ## A296251.P14773217172444383615

`A028310(A296252(n)-A000045(n))`
-/

namespace A296251.P14773217172444383615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A296252 n - A000045 n).toNat

end

end A296251.P14773217172444383615

/-!
# A296252: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296252, there is no canonical definition to state claims against.
-/

/-! ## A296252.P8640989030084693804

`A000045(n)+A296254(n)-A197896(A000124(n))`
-/

namespace A296252.P8640989030084693804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296254 n - A197896 (A000124 n).toNat)

end

end A296252.P8640989030084693804

/-! ## A296252.P12337327436638661918

`A212804(n+1)+A296254(n)-A197896(A000124(n))`
-/

namespace A296252.P12337327436638661918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) + (A296254 n - A197896 (A000124 n).toNat)

end

end A296252.P12337327436638661918

/-! ## A296252.P1440634563212870085

`A001611(n)-1+A296254(n)-A197896(A000124(n))`
-/

namespace A296252.P1440634563212870085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n - 1 + (A296254 n - A197896 (A000124 n).toNat)

end

end A296252.P1440634563212870085

/-! ## A296252.P17089677445078255793

`A157725(n)-2+A296254(n)-A197896(A000124(n))`
-/

namespace A296252.P17089677445078255793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - 2 + (A296254 n - A197896 (A000124 n).toNat)

end

end A296252.P17089677445078255793

/-! ## A296252.P15646490103518536574

`A103609(2*n)+A296254(n)-A197896(A000124(n))`
-/

namespace A296252.P15646490103518536574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) + (A296254 n - A197896 (A000124 n).toNat)

end

end A296252.P15646490103518536574

/-!
# A296253: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296253, there is no canonical definition to state claims against.
-/

/-! ## A296253.P8739865007655110930

`A296255(n)-A122285(A005043(n))`
-/

namespace A296253.P8739865007655110930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296255 n - A122285 (A005043 n).toNat

end

end A296253.P8739865007655110930

/-! ## A296253.P1325253216970691440

`A108378(∑[C(n, 2)+1])+n^3+n`
-/

namespace A296253.P1325253216970691440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108378 (∑ j ∈ Finset.range (n + 1), f1 j) + (n ^ 3 + n : ℤ)

end

end A296253.P1325253216970691440

/-!
# A296254: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296254, there is no canonical definition to state claims against.
-/

/-! ## A296254.P2660750379036757085

`A296251(n)+A197896(A000124(n))`
-/

namespace A296254.P2660750379036757085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296251 n + A197896 (A000124 n).toNat

end

end A296254.P2660750379036757085

/-! ## A296254.P9857201390954370897

`A296251(n)+A048680(A011782(n))`
-/

namespace A296254.P9857201390954370897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296251 n + A048680 (A011782 n).toNat

end

end A296254.P9857201390954370897

/-! ## A296254.P8592122426171544413

`A296251(n)+A000045(A187829(n+1))`
-/

namespace A296254.P8592122426171544413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296251 n + A000045 (A187829 (n + 1)).toNat

end

end A296254.P8592122426171544413

/-! ## A296254.P2974911467638599130

`A000045(n+1)+A296266(n)+A000071(A187829(n+1))`
-/

namespace A296254.P2974911467638599130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1) + (A296266 n + A000071 (A187829 (n + 1)).toNat)

end

end A296254.P2974911467638599130

/-! ## A296254.P17435466709007589023

`A000071(n+1)+1+A296266(n)+A000071(A187829(n+1))`
-/

namespace A296254.P17435466709007589023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1) + 1 + (A296266 n + A000071 (A187829 (n + 1)).toNat)

end

end A296254.P17435466709007589023

/-!
# A296255: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296255, there is no canonical definition to state claims against.
-/

/-! ## A296255.P9616048858395808889

`A296253(n)+A012265(A000045(n+2))`
-/

namespace A296255.P9616048858395808889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296253 n + A012265 (A000045 (n + 2)).toNat

end

end A296255.P9616048858395808889

/-! ## A296255.P3058752862829789657

`∑[A320055(A070211(2*n))]+1`
-/

namespace A296255.P3058752862829789657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320055 (A070211 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A296255.P3058752862829789657

/-!
# A296256: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)^2, where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296256, there is no canonical definition to state claims against.
-/

/-! ## A296256.P5457336279276237023

`A052333(A323583(n))+n²`
-/

namespace A296256.P5457336279276237023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052333 (A323583 n).toNat + (n ^ 2 : ℤ)

end

end A296256.P5457336279276237023

/-! ## A296256.P1152158009661448894

`A296269(n)+A140187(A048099(n+1))`
-/

namespace A296256.P1152158009661448894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296269 n + A140187 (A048099 (n + 1)).toNat

end

end A296256.P1152158009661448894

/-!
# A296257: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)^2, where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296257, there is no canonical definition to state claims against.
-/

/-! ## A296257.P14841881119293107318

`A296291(A062399(n))-1`
-/

namespace A296257.P14841881119293107318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 (A062399 n).toNat - 1

end

end A296257.P14841881119293107318

/-! ## A296257.P10626418203611128687

`A296291(A120126(n))-1`
-/

namespace A296257.P10626418203611128687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 (A120126 n).toNat - 1

end

end A296257.P10626418203611128687

/-! ## A296257.P5775894076770055477

`A238593(A296291(n))-1`
-/

namespace A296257.P5775894076770055477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238593 (A296291 n).toNat - 1

end

end A296257.P5775894076770055477

/-! ## A296257.P11673488998416262875

`A296291(A351870(n))-1`
-/

namespace A296257.P11673488998416262875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 (A351870 n).toNat - 1

end

end A296257.P11673488998416262875

/-! ## A296257.P4850540091093419553

`A059169(4*A296291(n))`
-/

namespace A296257.P4850540091093419553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (4 * A296291 n).toNat

end

end A296257.P4850540091093419553

/-!
# A296258: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)^2, where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296258, there is no canonical definition to state claims against.
-/

/-! ## A296258.P12016823319770690434

`A046522(A254469(n+1))+n`
-/

namespace A296258.P12016823319770690434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046522 (A254469 (n + 1)).toNat + (n : ℤ)

end

end A296258.P12016823319770690434

/-! ## A296258.P18152027053386477868

`A227097(n)-A211225(A375224(n))`
-/

namespace A296258.P18152027053386477868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227097 n - A211225 (A375224 n).toNat

end

end A296258.P18152027053386477868

/-!
# A296259: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)^2, where a(0) = 2, a(1) = 3, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296259, there is no canonical definition to state claims against.
-/

/-! ## A296259.P11840062449498427515

`record[A001293(n+1)%A001259(n+1)]`
-/

namespace A296259.P11840062449498427515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001293 (n + 1)) (A001259 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A296259.P11840062449498427515

/-! ## A296259.P4150124622282712019

`A159070(xor(n+1, A336032(2*(n+2))))`
-/

namespace A296259.P4150124622282712019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159070 (Int.xor (n + 1 : ℤ) (A336032 (2 * (n + 2)))).toNat

end

end A296259.P4150124622282712019

/-!
# A296260: Number of preference profiles with 4 alternatives and n agents (IANC model).

The programs for A296260, there is no canonical definition to state claims against.
-/

/-! ## A296260.P1485716609551308676

`A094109(A150914(n))`
-/

namespace A296260.P1485716609551308676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094109 (A150914 n).toNat

end

end A296260.P1485716609551308676

/-!
# A296261: Least non-constructible integer after addition or multiplication.

The programs for A296261, there is no canonical definition to state claims against.
-/

/-! ## A296261.P3952682016311370605

`A096878(a(n-1))-3` with `a(0)=2, a(1)=3, a(2)=5`
-/

namespace A296261.P3952682016311370605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 5] fun n a =>
  A096878 (a (n - 1)).toNat - 3

end

end A296261.P3952682016311370605

/-! ## A296261.P255399713626664433

`A140401(A046630(n+1))`
-/

namespace A296261.P255399713626664433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140401 (A046630 (n + 1)).toNat

end

end A296261.P255399713626664433

/-!
# A296262: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296262, there is no canonical definition to state claims against.
-/

/-! ## A296262.P10347638222007970317

`A133212(n)-A001222(A294363(n))`
-/

namespace A296262.P10347638222007970317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133212 n - A001222 (A294363 n).toNat

end

end A296262.P10347638222007970317

/-! ## A296262.P17356636908216603049

`A223133(A324221(n))`
-/

namespace A296262.P17356636908216603049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223133 (A324221 n).toNat

end

end A296262.P17356636908216603049

/-!
# A296263: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296263, there is no canonical definition to state claims against.
-/

/-! ## A296263.P4986782177667998083

`A352830(A158842(n))+A000005(n+1)`
-/

namespace A296263.P4986782177667998083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352830 (A158842 n).toNat + A000005 (n + 1)

end

end A296263.P4986782177667998083

/-!
# A296264: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296264, there is no canonical definition to state claims against.
-/

/-! ## A296264.P10254323508920128668

`A109199(A002450(n))+A000578(n)`
-/

namespace A296264.P10254323508920128668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109199 (A002450 n).toNat + A000578 n

end

end A296264.P10254323508920128668

/-! ## A296264.P3139780280693234096

`A143182(A052918(n))+A001787(n)`
-/

namespace A296264.P3139780280693234096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143182 (A052918 n).toNat + A001787 n

end

end A296264.P3139780280693234096

/-!
# A296265: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1), where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296265, there is no canonical definition to state claims against.
-/

/-! ## A296265.P16483929330459091927

`A094138(A025082(n+1))+C(∑[n], 2)`
-/

namespace A296265.P16483929330459091927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094138 (A025082 (n + 1)).toNat + (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)

end

end A296265.P16483929330459091927

/-! ## A296265.P16394892053911177144

`A330118(A022812(n))+A000122(n)`
-/

namespace A296265.P16394892053911177144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330118 (A022812 n).toNat + A000122 n

end

end A296265.P16394892053911177144

/-!
# A296266: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296266, there is no canonical definition to state claims against.
-/

/-! ## A296266.P12417962981402162698

`A296251(n)+1-A048680(A011782(n))`
-/

namespace A296266.P12417962981402162698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296251 n + (1 - A048680 (A011782 n).toNat)

end

end A296266.P12417962981402162698

/-! ## A296266.P7792310640467155345

`A296251(n)-A000071(A187829(n+1))`
-/

namespace A296266.P7792310640467155345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296251 n - A000071 (A187829 (n + 1)).toNat

end

end A296266.P7792310640467155345

/-! ## A296266.P5722191156865472974

`A296254(n)-(A000071(n+1)+A000045(A187829(n+1)))`
-/

namespace A296266.P5722191156865472974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296254 n - (A000071 (n + 1) + A000045 (A187829 (n + 1)).toNat)

end

end A296266.P5722191156865472974

/-! ## A296266.P2696883535754989586

`A005843(A296275(n))-A296250(n)`
-/

namespace A296266.P2696883535754989586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A296275 n).toNat - A296250 n

end

end A296266.P2696883535754989586

/-!
# A296267: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296267, there is no canonical definition to state claims against.
-/

/-! ## A296267.P11028577366140866058

`A104737(A081662(n))`
-/

namespace A296267.P11028577366140866058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104737 (A081662 n).toNat

end

end A296267.P11028577366140866058

/-! ## A296267.P783508721552739922

`∑[∑[A004159(A340474(n))]]`
-/

namespace A296267.P783508721552739922
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (A340474 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296267.P783508721552739922

/-!
# A296268: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296268, there is no canonical definition to state claims against.
-/

/-! ## A296268.P2189738213843766519

`∑[A203076(∑[A330378(n+4)])]`
-/

namespace A296268.P2189738213843766519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330378 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296268.P2189738213843766519

/-!
# A296269: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296269, there is no canonical definition to state claims against.
-/

/-! ## A296269.P11383027464319739277

`A298536(A100779(n))+A203413(n)`
-/

namespace A296269.P11383027464319739277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298536 (A100779 n).toNat + A203413 n

end

end A296269.P11383027464319739277

/-! ## A296269.P18306324822237029269

`A258348(n)+A258254(A258313(n))`
-/

namespace A296269.P18306324822237029269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258348 n + A258254 (A258313 n).toNat

end

end A296269.P18306324822237029269

/-!
# A296270: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296270, there is no canonical definition to state claims against.
-/

/-! ## A296270.P17009603152740273358

`A334922(A328532(n+1))`
-/

namespace A296270.P17009603152740273358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334922 (A328532 (n + 1)).toNat

end

end A296270.P17009603152740273358

/-! ## A296270.P15695564852570426972

`A319337(2*A008544(n))`
-/

namespace A296270.P15695564852570426972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319337 (2 * A008544 n).toNat

end

end A296270.P15695564852570426972

/-!
# A296271: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n), where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296271, there is no canonical definition to state claims against.
-/

/-! ## A296271.P1240063374789114763

`A316265(A082548(n+1)+A000041(n))`
-/

namespace A296271.P1240063374789114763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (A082548 (n + 1) + A000041 n).toNat

end

end A296271.P1240063374789114763

/-! ## A296271.P16593633072998992713

`A316265(A344782(n+1)+2+n)`
-/

namespace A296271.P16593633072998992713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316265 (A344782 (n + 1) + 2 + (n : ℤ)).toNat

end

end A296271.P16593633072998992713

/-!
# A296272: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296272, there is no canonical definition to state claims against.
-/

/-! ## A296272.P18362886814306204081

`A296273(n)-A317072(A000124(n))`
-/

namespace A296272.P18362886814306204081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296273 n - A317072 (A000124 n).toNat

end

end A296272.P18362886814306204081

/-! ## A296272.P3012309564703535827

`A296273(n)-A004526(A118658(n+1))`
-/

namespace A296272.P3012309564703535827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296273 n - A004526 (A118658 (n + 1)).toNat

end

end A296272.P3012309564703535827

/-! ## A296272.P2598291915918420357

`A296275(n)-A000045(A242474(n+1))`
-/

namespace A296272.P2598291915918420357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296275 n - A000045 (A242474 (n + 1)).toNat

end

end A296272.P2598291915918420357

/-! ## A296272.P11197759151674040563

`A296273(n)-A212804(A242474(n+1))`
-/

namespace A296272.P11197759151674040563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296273 n - A212804 (A242474 (n + 1)).toNat

end

end A296272.P11197759151674040563

/-! ## A296272.P4170326391957450123

`A296275(n)-A004526(A118658(n+2))`
-/

namespace A296272.P4170326391957450123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296275 n - A004526 (A118658 (n + 2)).toNat

end

end A296272.P4170326391957450123

/-!
# A296273: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296273, there is no canonical definition to state claims against.
-/

/-! ## A296273.P3511389878293590674

`A296275(n)-A004526(A118658(n))`
-/

namespace A296273.P3511389878293590674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296275 n - A004526 (A118658 n).toNat

end

end A296273.P3511389878293590674

/-! ## A296273.P15373670377790877228

`A000027(A296275(n)-A212804(n))`
-/

namespace A296273.P15373670377790877228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A296275 n - A212804 n).toNat

end

end A296273.P15373670377790877228

/-! ## A296273.P17551975181485656889

`(A296275(n)-A212804(n))^∑[A151722(n)]`
-/

namespace A296273.P17551975181485656889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151722 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296275 n - A212804 n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)

end

end A296273.P17551975181485656889

/-! ## A296273.P3846138150151355542

`(A296275(n)-A212804(n))^A014963(A100466(n+1))`
-/

namespace A296273.P3846138150151355542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296275 n - A212804 n : ℚ) ^ (A014963 (A100466 (n + 1)).toNat : ℤ)

end

end A296273.P3846138150151355542

/-! ## A296273.P10705885864926860895

`(A296275(n)-A212804(n))%A224905(A000040(n+1))`
-/

namespace A296273.P10705885864926860895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A296275 n - A212804 n) (A224905 (A000040 (n + 1)).toNat)

end

end A296273.P10705885864926860895

/-!
# A296274: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296274, there is no canonical definition to state claims against.
-/

/-! ## A296274.P10908397833032698650

`A327802(A248492(n+1))`
-/

namespace A296274.P10908397833032698650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327802 (A248492 (n + 1)).toNat

end

end A296274.P10908397833032698650

/-!
# A296275: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296275, there is no canonical definition to state claims against.
-/

/-! ## A296275.P420246373811366528

`A296273(n)+A004526(A118658(n))`
-/

namespace A296275.P420246373811366528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296273 n + A004526 (A118658 n).toNat

end

end A296275.P420246373811366528

/-! ## A296275.P17505322907410137822

`A212804(n)+A000027(A296273(n))`
-/

namespace A296275.P17505322907410137822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n + A000027 (A296273 n).toNat

end

end A296275.P17505322907410137822

/-! ## A296275.P3173001721241457440

`A000027(A296273(n)+Δ[A000045(n)])`
-/

namespace A296275.P3173001721241457440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A296273 n + (f1 (n + 1) - f1 n)).toNat

end

end A296275.P3173001721241457440

/-! ## A296275.P12968963522044534804

`A296272(n)+A000045(A242474(n+1))`
-/

namespace A296275.P12968963522044534804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296272 n + A000045 (A242474 (n + 1)).toNat

end

end A296275.P12968963522044534804

/-! ## A296275.P3216858645791360572

`A296272(n)+A004526(A118658(n+2))`
-/

namespace A296275.P3216858645791360572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296272 n + A004526 (A118658 (n + 2)).toNat

end

end A296275.P3216858645791360572

/-!
# A296276: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296276, there is no canonical definition to state claims against.
-/

/-! ## A296276.P18277006859186332298

`A296274(n)+A089053(A051093(n+1))`
-/

namespace A296276.P18277006859186332298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296274 n + A089053 (A051093 (n + 1)).toNat

end

end A296276.P18277006859186332298

/-! ## A296276.P15032968671216925052

`A320226(A000217(2*n))+A264812(n)`
-/

namespace A296276.P15032968671216925052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320226 (A000217 (2 * n)).toNat + A264812 n

end

end A296276.P15032968671216925052

/-!
# A296277: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1)*b(n), where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296277, there is no canonical definition to state claims against.
-/

/-! ## A296277.P14034448410517326885

`A184425(A235626(n+1))`
-/

namespace A296277.P14034448410517326885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184425 (A235626 (n + 1)).toNat

end

end A296277.P14034448410517326885

/-!
# A296278: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1)*b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296278, there is no canonical definition to state claims against.
-/

/-! ## A296278.P9166371266801885478

`A256946(A256917(n+1)²*2^n)`
-/

namespace A296278.P9166371266801885478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256946 (A256917 (n + 1) ^ 2 * (2 ^ n : ℤ)).toNat

end

end A296278.P9166371266801885478

/-!
# A296281: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1)*b(n), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296281, there is no canonical definition to state claims against.
-/

/-! ## A296281.P17362660431103630950

`A306353(A036691(n))+A102942(n+1)`
-/

namespace A296281.P17362660431103630950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306353 (A036691 n).toNat + A102942 (n + 1)

end

end A296281.P17362660431103630950

/-!
# A296282: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1)*b(n), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296282, there is no canonical definition to state claims against.
-/

/-! ## A296282.P15070249469191245253

`A080053(A295030(n+2))`
-/

namespace A296282.P15070249469191245253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080053 (A295030 (n + 2)).toNat

end

end A296282.P15070249469191245253

/-!
# A296283: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-2)*b(n-1)*b(n), where a(0) = 3, a(1) = 4, b(0) = 1, b(1) = 2, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296283, there is no canonical definition to state claims against.
-/

/-! ## A296283.P4608950592849407463

`A000005(n+1)+Δ[A106275(2*n+1)]`
-/

namespace A296283.P4608950592849407463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106275 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) + (f1 (n + 1) - f1 n)

end

end A296283.P4608950592849407463

/-!
# A296284: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296284, there is no canonical definition to state claims against.
-/

/-! ## A296284.P6400464601962177782

`A295613(n+1)-A000005(A006125(n))`
-/

namespace A296284.P6400464601962177782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295613 (n + 1) - A000005 (A006125 n).toNat

end

end A296284.P6400464601962177782

/-! ## A296284.P10460308960989160700

`A329165(A294545(n))`
-/

namespace A296284.P10460308960989160700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329165 (A294545 n).toNat

end

end A296284.P10460308960989160700

/-!
# A296285: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-2), where a(0) = 1, a(1) = 2, b(0) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296285, there is no canonical definition to state claims against.
-/

/-! ## A296285.P6456597262158480649

`A231014(∑[2^n]-char[∑[n+1]])`
-/

namespace A296285.P6456597262158480649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231014 (∑ j ∈ Finset.range (n + 1), f1 j - (if ∃ j, f2 j = n then 1 else 0))

end

end A296285.P6456597262158480649

/-! ## A296285.P9873962797860177734

`A068949(A052967(n))+n`
-/

namespace A296285.P9873962797860177734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068949 (A052967 n).toNat + (n : ℤ)

end

end A296285.P9873962797860177734

/-!
# A296286: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-2), where a(0) = 1, a(1) = 3, b(0) = 2, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296286, there is no canonical definition to state claims against.
-/

/-! ## A296286.P11987565360934707535

`∑[A166111(Δ[A281866(n+6)])]`
-/

namespace A296286.P11987565360934707535
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281866 (n + 6)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166111 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296286.P11987565360934707535

/-! ## A296286.P6985112144208006787

`A244307(n+1)+A090963(A034943(n))`
-/

namespace A296286.P6985112144208006787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244307 (n + 1) + A090963 (A034943 n).toNat

end

end A296286.P6985112144208006787

/-! ## A296286.P2187889831434127249

`A261104(A000579(2*(n+2)))+A131830(n)`
-/

namespace A296286.P2187889831434127249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A000579 (2 * (n + 2))).toNat + A131830 n

end

end A296286.P2187889831434127249

/-!
# A296287: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-2), where a(0) = 2, a(1) = 3, b(0) = 1, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296287, there is no canonical definition to state claims against.
-/

/-! ## A296287.P17070754658978547726

`A048265(A348414(n+1))+A003277((1-n)²+n)`
-/

namespace A296287.P17070754658978547726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048265 (A348414 (n + 1)).toNat + A003277 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat

end

end A296287.P17070754658978547726

/-! ## A296287.P2181788758679517789

`A112798(A000079(2*n+3))+A005900(n)`
-/

namespace A296287.P2181788758679517789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A000079 (2 * n + 3)).toNat + A005900 n

end

end A296287.P2181788758679517789

/-!
# A296288: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-1), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296288, there is no canonical definition to state claims against.
-/

/-! ## A296288.P13583331021783246328

`A296291(n)-A000045(A032555(n+1))`
-/

namespace A296288.P13583331021783246328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 n - A000045 (A032555 (n + 1)).toNat

end

end A296288.P13583331021783246328

/-! ## A296288.P11898680664293476050

`A296291(n)-A000045(A032559(n+1))`
-/

namespace A296288.P11898680664293476050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 n - A000045 (A032559 (n + 1)).toNat

end

end A296288.P11898680664293476050

/-! ## A296288.P1989972431439671068

`A296291(n)-A000045(A077739(n+1))`
-/

namespace A296288.P1989972431439671068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 n - A000045 (A077739 (n + 1)).toNat

end

end A296288.P1989972431439671068

/-! ## A296288.P4646751657803948198

`A296291(n)-A000045(A121939(n+1))`
-/

namespace A296288.P4646751657803948198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296291 n - A000045 (A121939 (n + 1)).toNat

end

end A296288.P4646751657803948198

/-! ## A296288.P9310098660053442338

`A192972(A032555(n+1))-A192957(n)`
-/

namespace A296288.P9310098660053442338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192972 (A032555 (n + 1)).toNat - A192957 n

end

end A296288.P9310098660053442338

/-!
# A296289: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-1), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296289, there is no canonical definition to state claims against.
-/

/-! ## A296289.P12053401890191337014

`A000045(n)+A296291(n)-A000045(A032555(n+1))`
-/

namespace A296289.P12053401890191337014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296291 n - A000045 (A032555 (n + 1)).toNat)

end

end A296289.P12053401890191337014

/-! ## A296289.P8631910686374043577

`A000045(n)+A296291(n)-A000045(A032559(n+1))`
-/

namespace A296289.P8631910686374043577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296291 n - A000045 (A032559 (n + 1)).toNat)

end

end A296289.P8631910686374043577

/-! ## A296289.P10735552796420362532

`A000045(n)+A296291(n)-A000045(A077739(n+1))`
-/

namespace A296289.P10735552796420362532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296291 n - A000045 (A077739 (n + 1)).toNat)

end

end A296289.P10735552796420362532

/-! ## A296289.P16846190670360233562

`A000045(n)+A296291(n)-A000045(A121939(n+1))`
-/

namespace A296289.P16846190670360233562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296291 n - A000045 (A121939 (n + 1)).toNat)

end

end A296289.P16846190670360233562

/-!
# A296290: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-1), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296290, there is no canonical definition to state claims against.
-/

/-! ## A296290.P17285080683243636199

`∑[∑[A000009(n)*A301337(3*n+1)]]`
-/

namespace A296290.P17285080683243636199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A301337 (3 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296290.P17285080683243636199

/-! ## A296290.P2496572170156858199

`A007998(A273750(n))`
-/

namespace A296290.P2496572170156858199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007998 (A273750 n).toNat

end

end A296290.P2496572170156858199

/-!
# A296291: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-1), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296291, there is no canonical definition to state claims against.
-/

/-! ## A296291.P14194998754497334546

`A296257(A062399(n))+1`
-/

namespace A296291.P14194998754497334546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296257 (A062399 n).toNat + 1

end

end A296291.P14194998754497334546

/-! ## A296291.P11507908236403510429

`A296257(A120126(n))+1`
-/

namespace A296291.P11507908236403510429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296257 (A120126 n).toNat + 1

end

end A296291.P11507908236403510429

/-! ## A296291.P4405321158050222673

`A238593(A296257(n)+1)`
-/

namespace A296291.P4405321158050222673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238593 (A296257 n + 1).toNat

end

end A296291.P4405321158050222673

/-! ## A296291.P17687564449908705960

`A008611(3*A296257(n))`
-/

namespace A296291.P17687564449908705960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * A296257 n).toNat

end

end A296291.P17687564449908705960

/-! ## A296291.P4798875968421835910

`A008620(3*A296257(n))`
-/

namespace A296291.P4798875968421835910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (3 * A296257 n).toNat

end

end A296291.P4798875968421835910

/-!
# A296292: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n-1), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296292, there is no canonical definition to state claims against.
-/

/-! ## A296292.P50620509597436647

`A108602(A108647(n)+6)`
-/

namespace A296292.P50620509597436647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108602 (A108647 n + 6).toNat

end

end A296292.P50620509597436647

/-! ## A296292.P3993725737160472442

`∑[A322744(A007717(n)+1)]`
-/

namespace A296292.P3993725737160472442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322744 (A007717 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A296292.P3993725737160472442

/-!
# A296293: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n), where a(0) = 1, a(1) = 2, b(0) = 3, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296293, there is no canonical definition to state claims against.
-/

/-! ## A296293.P16809548361954274639

`A296294(A087051(n))-A000045(n)`
-/

namespace A296293.P16809548361954274639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A087051 n).toNat - A000045 n

end

end A296293.P16809548361954274639

/-! ## A296293.P15308393965326350575

`A296294(A004915(n+1))-A000045(n)`
-/

namespace A296293.P15308393965326350575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A004915 (n + 1)).toNat - A000045 n

end

end A296293.P15308393965326350575

/-! ## A296293.P8777619787132705433

`A296296(n)-A000045(A062399(n+1))`
-/

namespace A296293.P8777619787132705433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 n - A000045 (A062399 (n + 1)).toNat

end

end A296293.P8777619787132705433

/-! ## A296293.P18063027461554580502

`A296296(n)-A000045(A351870(n+1))`
-/

namespace A296293.P18063027461554580502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 n - A000045 (A351870 (n + 1)).toNat

end

end A296293.P18063027461554580502

/-! ## A296293.P7903766341269420908

`A296296(n)-A000045(A004894(n+2))`
-/

namespace A296293.P7903766341269420908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 n - A000045 (A004894 (n + 2)).toNat

end

end A296293.P7903766341269420908

/-!
# A296294: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n), where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296294, there is no canonical definition to state claims against.
-/

/-! ## A296294.P10835870165097762203

`A296295(n)-A000045(A351870(n))`
-/

namespace A296294.P10835870165097762203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296295 n - A000045 (A351870 n).toNat

end

end A296294.P10835870165097762203

/-! ## A296294.P2594079680541013660

`A296297(n)-A000045(A061497(n+1))`
-/

namespace A296294.P2594079680541013660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 n - A000045 (A061497 (n + 1)).toNat

end

end A296294.P2594079680541013660

/-! ## A296294.P4558191340018063580

`A296297(A062399(n))-A000045(n+1)`
-/

namespace A296294.P4558191340018063580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 (A062399 n).toNat - A000045 (n + 1)

end

end A296294.P4558191340018063580

/-! ## A296294.P926536548859869137

`A296297(n)-A000045(A351870(n)+1)`
-/

namespace A296294.P926536548859869137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 n - A000045 (A351870 n + 1).toNat

end

end A296294.P926536548859869137

/-! ## A296294.P12967285173830930603

`A296297(n)-A000045(A004894(n+1)+1)`
-/

namespace A296294.P12967285173830930603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 n - A000045 (A004894 (n + 1) + 1).toNat

end

end A296294.P12967285173830930603

/-!
# A296295: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n), where a(0) = 1, a(1) = 4, b(0) = 2, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296295, there is no canonical definition to state claims against.
-/

/-! ## A296295.P14348999652807956663

`A296294(A062399(n))+A000045(n)`
-/

namespace A296295.P14348999652807956663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A062399 n).toNat + A000045 n

end

end A296295.P14348999652807956663

/-! ## A296295.P283895845264186694

`A296294(n)+A000045(A351870(n))`
-/

namespace A296295.P283895845264186694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 n + A000045 (A351870 n).toNat

end

end A296295.P283895845264186694

/-! ## A296295.P17431697665695529905

`A296294(A004894(n+1))+A000045(n)`
-/

namespace A296295.P17431697665695529905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A004894 (n + 1)).toNat + A000045 n

end

end A296295.P17431697665695529905

/-! ## A296295.P4785348860545183477

`A296294(A061497(n+1)-1)+A000045(n)`
-/

namespace A296295.P4785348860545183477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A061497 (n + 1) - 1).toNat + A000045 n

end

end A296295.P4785348860545183477

/-! ## A296295.P11308510857711458410

`A000045(n)+A296297(n)-A000045(A061497(n+1))`
-/

namespace A296295.P11308510857711458410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A296297 n - A000045 (A061497 (n + 1)).toNat)

end

end A296295.P11308510857711458410

/-!
# A296296: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n), where a(0) = 2, a(1) = 3, b(0) = 1, b(1) = 4, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296296, there is no canonical definition to state claims against.
-/

/-! ## A296296.P6799026314726428394

`A296297(A062399(n))-A000045(n)`
-/

namespace A296296.P6799026314726428394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 (A062399 n).toNat - A000045 n

end

end A296296.P6799026314726428394

/-! ## A296296.P10560168973052852000

`A296297(n)-A000045(A351870(n))`
-/

namespace A296296.P10560168973052852000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 n - A000045 (A351870 n).toNat

end

end A296296.P10560168973052852000

/-! ## A296296.P10651006436146079232

`A296297(A004894(n+1))-A000045(n)`
-/

namespace A296296.P10651006436146079232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 (A004894 (n + 1)).toNat - A000045 n

end

end A296296.P10651006436146079232

/-! ## A296296.P15064117980950448126

`A296297(A061497(n+1)-1)-A000045(n)`
-/

namespace A296296.P15064117980950448126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296297 (A061497 (n + 1) - 1).toNat - A000045 n

end

end A296296.P15064117980950448126

/-! ## A296296.P14129219540093271437

`A000045(A061497(n+1))+A296294(n)-A000045(n)`
-/

namespace A296296.P14129219540093271437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A061497 (n + 1)).toNat + (A296294 n - A000045 n)

end

end A296296.P14129219540093271437

/-!
# A296297: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + n*b(n), where a(0) = 2, a(1) = 4, b(0) = 1, b(1) = 3, b(2) = 5, and (a(n)) and (b(n)) are increasing complementary sequences.

The programs for A296297, there is no canonical definition to state claims against.
-/

/-! ## A296297.P10458906374145004206

`A296296(A062399(n))+A000045(n)`
-/

namespace A296297.P10458906374145004206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 (A062399 n).toNat + A000045 n

end

end A296297.P10458906374145004206

/-! ## A296297.P17866673808554334052

`A296296(n)+A000045(A351870(n))`
-/

namespace A296297.P17866673808554334052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 n + A000045 (A351870 n).toNat

end

end A296297.P17866673808554334052

/-! ## A296297.P10502529320473646351

`A296296(A004894(n+1))+A000045(n)`
-/

namespace A296297.P10502529320473646351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296296 (A004894 (n + 1)).toNat + A000045 n

end

end A296297.P10502529320473646351

/-! ## A296297.P14286122505132116415

`A296294(n)+A000045(A061497(n+1))`
-/

namespace A296297.P14286122505132116415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 n + A000045 (A061497 (n + 1)).toNat

end

end A296297.P14286122505132116415

/-! ## A296297.P8624751773754576762

`A296294(A062399(n))+A000045(n+1)`
-/

namespace A296297.P8624751773754576762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296294 (A062399 n).toNat + A000045 (n + 1)

end

end A296297.P8624751773754576762

