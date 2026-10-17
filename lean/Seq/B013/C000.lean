import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C030
import Seq.B000.C031
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000

/-!
# Canonical definitions

Each definition is given by its canonical program and only uses definitions written before it.
-/

/-! ## A017717.P7995580545994119710

`∑[A017716(n)]`
-/

namespace A017717.P7995580545994119710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017716 (n + 52)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017717.P7995580545994119710

noncomputable section

/-- A017717: Binomial coefficients C(n,53).

Offset 53, canonical program `A017717.P7995580545994119710`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A017717 (n : ℕ) : ℤ :=
  A017717.P7995580545994119710.a (n - 53)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1561 terms. -/
def A017717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017718.P11977487333208709651

`∑[A017717(n)]`
-/

namespace A017718.P11977487333208709651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017717 (n + 53)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017718.P11977487333208709651

noncomputable section

/-- A017718: Binomial coefficients C(n,54).

Offset 54, canonical program `A017718.P11977487333208709651`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A017718 (n : ℕ) : ℤ :=
  A017718.P11977487333208709651.a (n - 54)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1464 terms. -/
def A017718.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017719.P5402933991974747899

`∑[A017718(n)]`
-/

namespace A017719.P5402933991974747899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017718 (n + 54)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017719.P5402933991974747899

noncomputable section

/-- A017719: Binomial coefficients C(n,55).

Offset 55, canonical program `A017719.P5402933991974747899`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A017719 (n : ℕ) : ℤ :=
  A017719.P5402933991974747899.a (n - 55)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1377 terms. -/
def A017719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017720.P2020099448235417481

`∑[A017719(n)]`
-/

namespace A017720.P2020099448235417481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017719 (n + 55)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017720.P2020099448235417481

noncomputable section

/-- A017720: Binomial coefficients C(n,56).

Offset 56, canonical program `A017720.P2020099448235417481`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. -/
def A017720 (n : ℕ) : ℤ :=
  A017720.P2020099448235417481.a (n - 56)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1298 terms. -/
def A017720.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017721.P9193209919299833223

`∑[A017720(n)]`
-/

namespace A017721.P9193209919299833223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017720 (n + 56)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017721.P9193209919299833223

noncomputable section

/-- A017721: Binomial coefficients C(n,57).

Offset 57, canonical program `A017721.P9193209919299833223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A017721 (n : ℕ) : ℤ :=
  A017721.P9193209919299833223.a (n - 57)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1226 terms. -/
def A017721.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017722.P514475061778722021

`∑[A017721(n)]`
-/

namespace A017722.P514475061778722021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017721 (n + 57)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017722.P514475061778722021

noncomputable section

/-- A017722: Binomial coefficients C(n,58).

Offset 58, canonical program `A017722.P514475061778722021`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A017722 (n : ℕ) : ℤ :=
  A017722.P514475061778722021.a (n - 58)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1161 terms. -/
def A017722.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017723.P14508312129852500030

`∑[A017722(n)]`
-/

namespace A017723.P14508312129852500030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017722 (n + 58)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017723.P14508312129852500030

noncomputable section

/-- A017723: Binomial coefficients C(n,59).

Offset 59, canonical program `A017723.P14508312129852500030`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A017723 (n : ℕ) : ℤ :=
  A017723.P14508312129852500030.a (n - 59)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1101 terms. -/
def A017723.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017724.P14770689145357839161

`∑[A017723(n)]`
-/

namespace A017724.P14770689145357839161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017723 (n + 59)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017724.P14770689145357839161

noncomputable section

/-- A017724: Binomial coefficients C(n,60).

Offset 60, canonical program `A017724.P14770689145357839161`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A017724 (n : ℕ) : ℤ :=
  A017724.P14770689145357839161.a (n - 60)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1047 terms. -/
def A017724.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017725.P6691572762081257149

`∑[A017724(n)]`
-/

namespace A017725.P6691572762081257149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017724 (n + 60)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017725.P6691572762081257149

noncomputable section

/-- A017725: Binomial coefficients C(n,61).

Offset 61, canonical program `A017725.P6691572762081257149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017725 (n : ℕ) : ℤ :=
  A017725.P6691572762081257149.a (n - 61)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 997 terms. -/
def A017725.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017726.P1017718756452369022

`∑[A017725(n)]`
-/

namespace A017726.P1017718756452369022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017725 (n + 61)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017726.P1017718756452369022

noncomputable section

/-- A017726: Binomial coefficients C(n,62).

Offset 62, canonical program `A017726.P1017718756452369022`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A017726 (n : ℕ) : ℤ :=
  A017726.P1017718756452369022.a (n - 62)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 951 terms. -/
def A017726.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017727.P17582810854778171163

`∑[A017726(n)]`
-/

namespace A017727.P17582810854778171163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017726 (n + 62)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017727.P17582810854778171163

noncomputable section

/-- A017727: Binomial coefficients C(n,63).

Offset 63, canonical program `A017727.P17582810854778171163`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A017727 (n : ℕ) : ℤ :=
  A017727.P17582810854778171163.a (n - 63)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 908 terms. -/
def A017727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017728.P11431522665384639769

`∑[A017727(n)]`
-/

namespace A017728.P11431522665384639769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017727 (n + 63)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017728.P11431522665384639769

noncomputable section

/-- A017728: Binomial coefficients C(n,64).

Offset 64, canonical program `A017728.P11431522665384639769`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A017728 (n : ℕ) : ℤ :=
  A017728.P11431522665384639769.a (n - 64)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 869 terms. -/
def A017728.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017729.P16774850262266733762

`∑[A017728(n)]`
-/

namespace A017729.P16774850262266733762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017728 (n + 64)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017729.P16774850262266733762

noncomputable section

/-- A017729: Binomial coefficients C(n,65).

Offset 65, canonical program `A017729.P16774850262266733762`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A017729 (n : ℕ) : ℤ :=
  A017729.P16774850262266733762.a (n - 65)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 833 terms. -/
def A017729.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017730.P5179396934849345126

`∑[A017729(n)]`
-/

namespace A017730.P5179396934849345126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017729 (n + 65)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017730.P5179396934849345126

noncomputable section

/-- A017730: Binomial coefficients C(n,66).

Offset 66, canonical program `A017730.P5179396934849345126`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A017730 (n : ℕ) : ℤ :=
  A017730.P5179396934849345126.a (n - 66)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 799 terms. -/
def A017730.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017731.P13324034856362815070

`∑[A017730(n)]`
-/

namespace A017731.P13324034856362815070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017730 (n + 66)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017731.P13324034856362815070

noncomputable section

/-- A017731: Binomial coefficients C(n,67).

Offset 67, canonical program `A017731.P13324034856362815070`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A017731 (n : ℕ) : ℤ :=
  A017731.P13324034856362815070.a (n - 67)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 768 terms. -/
def A017731.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017732.P14236783115378075278

`∑[A017731(n)]`
-/

namespace A017732.P14236783115378075278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017731 (n + 67)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017732.P14236783115378075278

noncomputable section

/-- A017732: Binomial coefficients C(n,68).

Offset 68, canonical program `A017732.P14236783115378075278`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A017732 (n : ℕ) : ℤ :=
  A017732.P14236783115378075278.a (n - 68)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 739 terms. -/
def A017732.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017733.P4674817067329465653

`∑[A017732(n)]`
-/

namespace A017733.P4674817067329465653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017732 (n + 68)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017733.P4674817067329465653

noncomputable section

/-- A017733: Binomial coefficients C(n,69).

Offset 69, canonical program `A017733.P4674817067329465653`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A017733 (n : ℕ) : ℤ :=
  A017733.P4674817067329465653.a (n - 69)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 712 terms. -/
def A017733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017734.P5644106172077716898

`∑[A017733(n)]`
-/

namespace A017734.P5644106172077716898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017733 (n + 69)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017734.P5644106172077716898

noncomputable section

/-- A017734: Binomial coefficients C(n,70).

Offset 70, canonical program `A017734.P5644106172077716898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A017734 (n : ℕ) : ℤ :=
  A017734.P5644106172077716898.a (n - 70)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 687 terms. -/
def A017734.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017735.P717836609477066075

`∑[A017734(n)]`
-/

namespace A017735.P717836609477066075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017734 (n + 70)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017735.P717836609477066075

noncomputable section

/-- A017735: Binomial coefficients C(n,71).

Offset 71, canonical program `A017735.P717836609477066075`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A017735 (n : ℕ) : ℤ :=
  A017735.P717836609477066075.a (n - 71)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 663 terms. -/
def A017735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017736.P16724522171775059003

`∑[A017735(n)]`
-/

namespace A017736.P16724522171775059003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017735 (n + 71)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017736.P16724522171775059003

noncomputable section

/-- A017736: Binomial coefficients C(n,72).

Offset 72, canonical program `A017736.P16724522171775059003`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A017736 (n : ℕ) : ℤ :=
  A017736.P16724522171775059003.a (n - 72)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 641 terms. -/
def A017736.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017737.P4098759893718384492

`∑[A017736(n)]`
-/

namespace A017737.P4098759893718384492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017736 (n + 72)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017737.P4098759893718384492

noncomputable section

/-- A017737: Binomial coefficients C(n,73).

Offset 73, canonical program `A017737.P4098759893718384492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A017737 (n : ℕ) : ℤ :=
  A017737.P4098759893718384492.a (n - 73)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 620 terms. -/
def A017737.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017738.P2828578506606250974

`∑[A017737(n)]`
-/

namespace A017738.P2828578506606250974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017737 (n + 73)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017738.P2828578506606250974

noncomputable section

/-- A017738: Binomial coefficients C(n,74).

Offset 74, canonical program `A017738.P2828578506606250974`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A017738 (n : ℕ) : ℤ :=
  A017738.P2828578506606250974.a (n - 74)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 601 terms. -/
def A017738.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017739.P13670725559083869896

`∑[A017738(n)]`
-/

namespace A017739.P13670725559083869896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017738 (n + 74)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017739.P13670725559083869896

noncomputable section

/-- A017739: Binomial coefficients C(n,75).

Offset 75, canonical program `A017739.P13670725559083869896`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A017739 (n : ℕ) : ℤ :=
  A017739.P13670725559083869896.a (n - 75)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 582 terms. -/
def A017739.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017740.P17010489652914152743

`∑[A017739(n)]`
-/

namespace A017740.P17010489652914152743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017739 (n + 75)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017740.P17010489652914152743

noncomputable section

/-- A017740: Binomial coefficients C(n,76).

Offset 76, canonical program `A017740.P17010489652914152743`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A017740 (n : ℕ) : ℤ :=
  A017740.P17010489652914152743.a (n - 76)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 565 terms. -/
def A017740.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017741.P7867024922435714400

`∑[A017740(n)]`
-/

namespace A017741.P7867024922435714400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017740 (n + 76)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017741.P7867024922435714400

noncomputable section

/-- A017741: Binomial coefficients C(n,77).

Offset 77, canonical program `A017741.P7867024922435714400`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A017741 (n : ℕ) : ℤ :=
  A017741.P7867024922435714400.a (n - 77)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 549 terms. -/
def A017741.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017742.P13517504407657218501

`∑[A017741(n)]`
-/

namespace A017742.P13517504407657218501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017741 (n + 77)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017742.P13517504407657218501

noncomputable section

/-- A017742: Binomial coefficients C(n,78).

Offset 78, canonical program `A017742.P13517504407657218501`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. -/
def A017742 (n : ℕ) : ℤ :=
  A017742.P13517504407657218501.a (n - 78)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 533 terms. -/
def A017742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017743.P16737334430865006958

`∑[A017742(n)]`
-/

namespace A017743.P16737334430865006958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017742 (n + 78)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017743.P16737334430865006958

noncomputable section

/-- A017743: Binomial coefficients C(n,79).

Offset 79, canonical program `A017743.P16737334430865006958`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A017743 (n : ℕ) : ℤ :=
  A017743.P16737334430865006958.a (n - 79)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 518 terms. -/
def A017743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017744.P4353024609833997912

`∑[A017743(n)]`
-/

namespace A017744.P4353024609833997912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017743 (n + 79)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017744.P4353024609833997912

noncomputable section

/-- A017744: Binomial coefficients C(n,80).

Offset 80, canonical program `A017744.P4353024609833997912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A017744 (n : ℕ) : ℤ :=
  A017744.P4353024609833997912.a (n - 80)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 505 terms. -/
def A017744.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017745.P4783384828780675852

`∑[A017744(n)]`
-/

namespace A017745.P4783384828780675852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017744 (n + 80)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017745.P4783384828780675852

noncomputable section

/-- A017745: Binomial coefficients C(n,81).

Offset 81, canonical program `A017745.P4783384828780675852`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A017745 (n : ℕ) : ℤ :=
  A017745.P4783384828780675852.a (n - 81)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A017745.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017746.P14848294736962142476

`∑[A017745(n)]`
-/

namespace A017746.P14848294736962142476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017745 (n + 81)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017746.P14848294736962142476

noncomputable section

/-- A017746: Binomial coefficients C(n,82).

Offset 82, canonical program `A017746.P14848294736962142476`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A017746 (n : ℕ) : ℤ :=
  A017746.P14848294736962142476.a (n - 82)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. -/
def A017746.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017747.P3536552219103736348

`∑[A017746(n)]`
-/

namespace A017747.P3536552219103736348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017746 (n + 82)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017747.P3536552219103736348

noncomputable section

/-- A017747: Binomial coefficients C(n,83).

Offset 83, canonical program `A017747.P3536552219103736348`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A017747 (n : ℕ) : ℤ :=
  A017747.P3536552219103736348.a (n - 83)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 467 terms. -/
def A017747.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017748.P10041396662727238779

`∑[A017747(n)]`
-/

namespace A017748.P10041396662727238779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017747 (n + 83)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017748.P10041396662727238779

noncomputable section

/-- A017748: Binomial coefficients C(n,84).

Offset 84, canonical program `A017748.P10041396662727238779`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A017748 (n : ℕ) : ℤ :=
  A017748.P10041396662727238779.a (n - 84)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 456 terms. -/
def A017748.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017749.P11859062333262707382

`∑[A017748(n)]`
-/

namespace A017749.P11859062333262707382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017748 (n + 84)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017749.P11859062333262707382

noncomputable section

/-- A017749: Binomial coefficients C(n,85).

Offset 85, canonical program `A017749.P11859062333262707382`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A017749 (n : ℕ) : ℤ :=
  A017749.P11859062333262707382.a (n - 85)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 445 terms. -/
def A017749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017750.P50224293552260670

`∑[A017749(n)]`
-/

namespace A017750.P50224293552260670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017749 (n + 85)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017750.P50224293552260670

noncomputable section

/-- A017750: Binomial coefficients C(n,86).

Offset 86, canonical program `A017750.P50224293552260670`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A017750 (n : ℕ) : ℤ :=
  A017750.P50224293552260670.a (n - 86)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 435 terms. -/
def A017750.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017751.P10018961267285139199

`∑[A017750(n)]`
-/

namespace A017751.P10018961267285139199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017750 (n + 86)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017751.P10018961267285139199

noncomputable section

/-- A017751: Binomial coefficients C(n,87).

Offset 87, canonical program `A017751.P10018961267285139199`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A017751 (n : ℕ) : ℤ :=
  A017751.P10018961267285139199.a (n - 87)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 425 terms. -/
def A017751.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017752.P10808631347264368737

`∑[A017751(n)]`
-/

namespace A017752.P10808631347264368737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017751 (n + 87)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017752.P10808631347264368737

noncomputable section

/-- A017752: Binomial coefficients C(n,88).

Offset 88, canonical program `A017752.P10808631347264368737`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A017752 (n : ℕ) : ℤ :=
  A017752.P10808631347264368737.a (n - 88)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 416 terms. -/
def A017752.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017753.P7446741173959579445

`∑[A017752(n)]`
-/

namespace A017753.P7446741173959579445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017752 (n + 88)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017753.P7446741173959579445

noncomputable section

/-- A017753: Binomial coefficients C(n,89).

Offset 89, canonical program `A017753.P7446741173959579445`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A017753 (n : ℕ) : ℤ :=
  A017753.P7446741173959579445.a (n - 89)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 407 terms. -/
def A017753.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017754.P14684133807210668465

`∑[A017753(n)]`
-/

namespace A017754.P14684133807210668465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017753 (n + 89)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017754.P14684133807210668465

noncomputable section

/-- A017754: Binomial coefficients C(n,90).

Offset 90, canonical program `A017754.P14684133807210668465`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A017754 (n : ℕ) : ℤ :=
  A017754.P14684133807210668465.a (n - 90)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 399 terms. -/
def A017754.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017755.P8993976898448649564

`∑[A017754(n)]`
-/

namespace A017755.P8993976898448649564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017754 (n + 90)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017755.P8993976898448649564

noncomputable section

/-- A017755: Binomial coefficients C(n,91).

Offset 91, canonical program `A017755.P8993976898448649564`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A017755 (n : ℕ) : ℤ :=
  A017755.P8993976898448649564.a (n - 91)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A017755.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017756.P14268685915824430967

`∑[A017755(n)]`
-/

namespace A017756.P14268685915824430967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017755 (n + 91)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017756.P14268685915824430967

noncomputable section

/-- A017756: Binomial coefficients C(n,92).

Offset 92, canonical program `A017756.P14268685915824430967`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A017756 (n : ℕ) : ℤ :=
  A017756.P14268685915824430967.a (n - 92)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 383 terms. -/
def A017756.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017757.P17286600241345579105

`∑[A017756(n)]`
-/

namespace A017757.P17286600241345579105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017756 (n + 92)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017757.P17286600241345579105

noncomputable section

/-- A017757: Binomial coefficients C(n,93).

Offset 93, canonical program `A017757.P17286600241345579105`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A017757 (n : ℕ) : ℤ :=
  A017757.P17286600241345579105.a (n - 93)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 375 terms. -/
def A017757.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017758.P7573098188353341125

`∑[A017757(n)]`
-/

namespace A017758.P7573098188353341125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017757 (n + 93)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017758.P7573098188353341125

noncomputable section

/-- A017758: Binomial coefficients C(n,94).

Offset 94, canonical program `A017758.P7573098188353341125`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A017758 (n : ℕ) : ℤ :=
  A017758.P7573098188353341125.a (n - 94)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 368 terms. -/
def A017758.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017759.P8368845838168328182

`∑[A017758(n)]`
-/

namespace A017759.P8368845838168328182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017758 (n + 94)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017759.P8368845838168328182

noncomputable section

/-- A017759: Binomial coefficients C(n,95).

Offset 95, canonical program `A017759.P8368845838168328182`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A017759 (n : ℕ) : ℤ :=
  A017759.P8368845838168328182.a (n - 95)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 361 terms. -/
def A017759.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017760.P17570627757291950631

`∑[A017759(n)]`
-/

namespace A017760.P17570627757291950631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017759 (n + 95)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017760.P17570627757291950631

noncomputable section

/-- A017760: Binomial coefficients C(n,96).

Offset 96, canonical program `A017760.P17570627757291950631`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017760 (n : ℕ) : ℤ :=
  A017760.P17570627757291950631.a (n - 96)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 355 terms. -/
def A017760.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017761.P6130510267687483270

`∑[A017760(n)]`
-/

namespace A017761.P6130510267687483270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017760 (n + 96)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017761.P6130510267687483270

noncomputable section

/-- A017761: Binomial coefficients C(n,97).

Offset 97, canonical program `A017761.P6130510267687483270`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A017761 (n : ℕ) : ℤ :=
  A017761.P6130510267687483270.a (n - 97)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 349 terms. -/
def A017761.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017762.P10601217411507736843

`∑[A017761(n)]`
-/

namespace A017762.P10601217411507736843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017761 (n + 97)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017762.P10601217411507736843

noncomputable section

/-- A017762: Binomial coefficients C(n,98).

Offset 98, canonical program `A017762.P10601217411507736843`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A017762 (n : ℕ) : ℤ :=
  A017762.P10601217411507736843.a (n - 98)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 342 terms. -/
def A017762.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017763.P17968994238974275907

`∑[A017762(n)]`
-/

namespace A017763.P17968994238974275907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017762 (n + 98)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017763.P17968994238974275907

noncomputable section

/-- A017763: a(n) = binomial coefficient C(n,99).

Offset 99, canonical program `A017763.P17968994238974275907`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A017763 (n : ℕ) : ℤ :=
  A017763.P17968994238974275907.a (n - 99)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. -/
def A017763.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A017764.P3747891598830656448

`∑[A017763(n)]`
-/

namespace A017764.P3747891598830656448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017763 (n + 99)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A017764.P3747891598830656448

noncomputable section

/-- A017764: a(n) = binomial coefficient C(n,100).

Offset 100, canonical program `A017764.P3747891598830656448`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A017764 (n : ℕ) : ℤ :=
  A017764.P3747891598830656448.a (n - 100)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. -/
def A017764.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A014214.P4962312295054798132

`floor(atan(A017755(n))^n)`
-/

namespace A014214.P4962312295054798132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A017755 (n + 91) : ℝ) ^ n⌋

end

end A014214.P4962312295054798132

noncomputable section

/-- A014214: a(n) = floor((Pi/2)^n).

Offset 0, canonical program `A014214.P4962312295054798132`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A014214 (n : ℕ) : ℤ :=
  A014214.P4962312295054798132.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 391 terms. -/
def A014214.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029350.P18063405206361858315

`A029217(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029350.P18063405206361858315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029217 n - a (n - 2)

end

end A029350.P18063405206361858315

noncomputable section

/-- A029350: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029350.P18063405206361858315`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029350 (n : ℕ) : ℤ :=
  A029350.P18063405206361858315.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029350.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029400.P16034242247368147644

`A029366(n)+A029380(n)-A029350(n)`
-/

namespace A029400.P16034242247368147644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029366 n + (A029380 n - A029350 n)

end

end A029400.P16034242247368147644

noncomputable section

/-- A029400: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029400.P16034242247368147644`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029400 (n : ℕ) : ℤ :=
  A029400.P16034242247368147644.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029400.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029441.P7731090560958311187

`A029400(n)+A029431(n)-A029391(n)`
-/

namespace A029441.P7731090560958311187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n + (A029431 n - A029391 n)

end

end A029441.P7731090560958311187

noncomputable section

/-- A029441: Expansion of 1/((1-x^7)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029441.P7731090560958311187`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029441 (n : ℕ) : ℤ :=
  A029441.P7731090560958311187.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029441.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309213.P7560310409620454455

`A131376(n)+A168561(n)-A049310(n)`
-/

namespace A309213.P7560310409620454455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131376 n + (A168561 n - A049310 n)

end

end A309213.P7560310409620454455

noncomputable section

/-- A309213: A007318 + A065941 - A049310.

Offset 0, canonical program `A309213.P7560310409620454455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309213 (n : ℕ) : ℤ :=
  A309213.P7560310409620454455.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A309213.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025915.P13800332074688964784

`A029400(n)+A029420(n)-A029380(n)`
-/

namespace A025915.P13800332074688964784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029400 n + (A029420 n - A029380 n)

end

end A025915.P13800332074688964784

noncomputable section

/-- A025915: Expansion of 1/((1-x^7)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025915.P13800332074688964784`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025915 (n : ℕ) : ℤ :=
  A025915.P13800332074688964784.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025915.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029124.P10923443697703344622

`∑[A025915(n)]`
-/

namespace A029124.P10923443697703344622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029124.P10923443697703344622

noncomputable section

/-- A029124: Expansion of 1/((1-x)(1-x^7)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029124.P10923443697703344622`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029124 (n : ℕ) : ℤ :=
  A029124.P10923443697703344622.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029367.P16821808984905599140

`A029358(n)+A029400(n)-A029391(n)`
-/

namespace A029367.P16821808984905599140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029358 n + (A029400 n - A029391 n)

end

end A029367.P16821808984905599140

noncomputable section

/-- A029367: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029367.P16821808984905599140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029367 (n : ℕ) : ℤ :=
  A029367.P16821808984905599140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029367.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162514.P8715730541407026886

`abs(A133607(n)+A108299(n))`
-/

namespace A162514.P8715730541407026886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A133607 n + A108299 n|

end

end A162514.P8715730541407026886

noncomputable section

/-- A162514: Triangle of coefficients of polynomials defined by the Binet form P(n,x) = U^n + L^n, where U = (x + d)/2, L = (x - d)/2, d = (4 + x^2)^(1/2). Decreasing powers of x.

Offset 0, canonical program `A162514.P8715730541407026886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514 (n : ℕ) : ℤ :=
  A162514.P8715730541407026886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A162514.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A185331.P6064579063357933049

`A049310(n)-A133607(A038722(n+2))`
-/

namespace A185331.P6064579063357933049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n - A133607 (A038722 (n + 2)).toNat

end

end A185331.P6064579063357933049

noncomputable section

/-- A185331: Riordan array ((1-x+x^2)/(1+x^2), x/(1+x^2)).

Offset 0, canonical program `A185331.P6064579063357933049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A185331 (n : ℕ) : ℤ :=
  A185331.P6064579063357933049.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9869 terms. -/
def A185331.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A206474.P8402992463042945898

`abs(A185331(n))`
-/

namespace A206474.P8402992463042945898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A185331 n|

end

end A206474.P8402992463042945898

noncomputable section

/-- A206474: Riordan array ((1+x-x^2)/(1-x^2), x/(1-x^2)).

Offset 0, canonical program `A206474.P8402992463042945898`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206474 (n : ℕ) : ℤ :=
  A206474.P8402992463042945898.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A206474.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315719.P16119919274741780679

`A315770(2*n)-A153733(A315770(n))`
-/

namespace A315719.P16119919274741780679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315770 (2 * n) - A153733 (A315770 n).toNat

end

end A315719.P16119919274741780679

noncomputable section

/-- A315719: Coordination sequence Gal.6.658.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315719.P16119919274741780679`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719 (n : ℕ) : ℤ :=
  A315719.P16119919274741780679.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1100 terms. -/
def A315719.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A329918.P9556832341652762600

`A156663(n)*A206474(n)`
-/

namespace A329918.P9556832341652762600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156663 n * A206474 n

end

end A329918.P9556832341652762600

noncomputable section

/-- A329918: Coefficients of orthogonal polynomials related to the Jacobsthal numbers A152046, triangle read by rows, T(n, k) for 0 <= k <= n.

Offset 0, canonical program `A329918.P9556832341652762600`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329918 (n : ℕ) : ℤ :=
  A329918.P9556832341652762600.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A329918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029412.P8218405848832406386

`A029377(n)+A029391(n)-A029358(n)`
-/

namespace A029412.P8218405848832406386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029377 n + (A029391 n - A029358 n)

end

end A029412.P8218405848832406386

noncomputable section

/-- A029412: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029412.P8218405848832406386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412 (n : ℕ) : ℤ :=
  A029412.P8218405848832406386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029412.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A073044.P10684047990476463728

`A153764(n)+A046854(n)`
-/

namespace A073044.P10684047990476463728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153764 n + A046854 n

end

end A073044.P10684047990476463728

noncomputable section

/-- A073044: Triangle read by rows: T(n,k) (n >= 1, n-1 >= k >= 0) = number of n-sequences of 0's and 1's with no pair of adjacent 0's and exactly k pairs of adjacent 1's.

Offset 1, canonical program `A073044.P10684047990476463728`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073044 (n : ℕ) : ℤ :=
  A073044.P10684047990476463728.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A073044.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100749.P2993982527896392758

`(A329918(comp[∑[n]])+A329918(n))/2`
-/

namespace A100749.P2993982527896392758
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329918 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + A329918 n : ℚ) / 2

end

end A100749.P2993982527896392758

noncomputable section

/-- A100749: Triangle read by rows: T(n,k)=number of 231- and 312-avoiding permutations of [n] having k fixed points.

Offset 0, canonical program `A100749.P2993982527896392758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A100749.P2993982527896392758.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9859 terms. -/
def A100749.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A114525.P12302416166957877412

`lcm(A073044(n+1), A369736(n))`
-/

namespace A114525.P12302416166957877412
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A073044 (n + 1)) (A369736 n)

end

end A114525.P12302416166957877412

noncomputable section

/-- A114525: Triangle of coefficients of the Lucas polynomials.

Offset 0, canonical program `A114525.P12302416166957877412`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114525 (n : ℕ) : ℤ :=
  (A114525.P12302416166957877412.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A114525.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A127672.P859091229776486226

`A114525(n)*A117568(n)`
-/

namespace A127672.P859091229776486226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114525 n * A117568 n

end

end A127672.P859091229776486226

noncomputable section

/-- A127672: Monic integer version of Chebyshev T-polynomials (increasing powers).

Offset 0, canonical program `A127672.P859091229776486226`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127672 (n : ℕ) : ℤ :=
  A127672.P859091229776486226.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A127672.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A256041.P8102863058900449500

`A129684(n)*A329918(n)`
-/

namespace A256041.P8102863058900449500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129684 n * A329918 n

end

end A256041.P8102863058900449500

noncomputable section

/-- A256041: Triangle read by rows: number of idempotent basis elements of rank k in Brauer monoid B_n.

Offset 0, canonical program `A256041.P8102863058900449500`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041 (n : ℕ) : ℤ :=
  A256041.P8102863058900449500.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2418 terms. -/
def A256041.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313591.P3620371697952405827

`A311635(n)+A004525(A315638(n)-A311635(n))`
-/

namespace A313591.P3620371697952405827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311635 n + A004525 (A315638 n - A311635 n).toNat

end

end A313591.P3620371697952405827

noncomputable section

/-- A313591: Coordination sequence Gal.6.346.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313591.P3620371697952405827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591 (n : ℕ) : ℤ :=
  A313591.P3620371697952405827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313591.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313854.P3810550675620183463

`abs(10*n-A313591(n))`
-/

namespace A313854.P3810550675620183463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(10 * n : ℤ) - A313591 n|

end

end A313854.P3810550675620183463

noncomputable section

/-- A313854: Coordination sequence Gal.6.250.6 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313854.P3810550675620183463`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854 (n : ℕ) : ℤ :=
  A313854.P3810550675620183463.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2290 terms. -/
def A313854.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A315464.P12581309012109130076

`A315177(n)+A004525(A315756(n)-A315177(n))`
-/

namespace A315464.P12581309012109130076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315177 n + A004525 (A315756 n - A315177 n).toNat

end

end A315464.P12581309012109130076

noncomputable section

/-- A315464: Coordination sequence Gal.6.346.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A315464.P12581309012109130076`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464 (n : ℕ) : ℤ :=
  A315464.P12581309012109130076.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2240 terms. -/
def A315464.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025926.P18037225688025791001

`A029115(n)+A029412(n)-A029104(n)`
-/

namespace A025926.P18037225688025791001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029115 n + (A029412 n - A029104 n)

end

end A025926.P18037225688025791001

noncomputable section

/-- A025926: Expansion of 1/((1-x^10)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025926.P18037225688025791001`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926 (n : ℕ) : ℤ :=
  A025926.P18037225688025791001.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025926.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029103.P10183585008874479580

`A029104(n)+A029412(n)-A025895(n)`
-/

namespace A029103.P10183585008874479580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029104 n + (A029412 n - A025895 n)

end

end A029103.P10183585008874479580

noncomputable section

/-- A029103: Expansion of 1/((1-x)(1-x^5)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029103.P10183585008874479580`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029103 (n : ℕ) : ℤ :=
  A029103.P10183585008874479580.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029103.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029135.P15456997748692065419

`∑[A025926(n)]`
-/

namespace A029135.P15456997748692065419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029135.P15456997748692065419

noncomputable section

/-- A029135: Expansion of 1/((1-x)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029135.P15456997748692065419`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029135 (n : ℕ) : ℤ :=
  A029135.P15456997748692065419.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029135.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029191.P13934192219691745760

`A029192(n)+A029377(n)-A025875(n)`
-/

namespace A029191.P13934192219691745760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029192 n + (A029377 n - A025875 n)

end

end A029191.P13934192219691745760

noncomputable section

/-- A029191: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029191.P13934192219691745760`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029191 (n : ℕ) : ℤ :=
  A029191.P13934192219691745760.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029191.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029211.P4105077321637045376

`A029103(n)-a(n-1)` with `a(0)=1`
-/

namespace A029211.P4105077321637045376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029103 n - a (n - 1)

end

end A029211.P4105077321637045376

noncomputable section

/-- A029211: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029211.P4105077321637045376`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029211 (n : ℕ) : ℤ :=
  A029211.P4105077321637045376.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029211.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029344.P1277348593930115986

`A029211(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029344.P1277348593930115986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029211 n - a (n - 2)

end

end A029344.P1277348593930115986

noncomputable section

/-- A029344: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029344.P1277348593930115986`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029344 (n : ℕ) : ℤ :=
  A029344.P1277348593930115986.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029344.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053120.P13394183785728574066

`A059268(n)/2*A127672(n)`
-/

namespace A053120.P13394183785728574066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059268 n : ℚ) / 2 * (A127672 n : ℚ)

end

end A053120.P13394183785728574066

noncomputable section

/-- A053120: Triangle of coefficients of Chebyshev's T(n,x) polynomials (powers of x in increasing order).

Offset 0, canonical program `A053120.P13394183785728574066`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053120 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A053120.P13394183785728574066.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A053120.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A081265.P2377281126130984844

`abs(A053120(A061579(n)))`
-/

namespace A081265.P2377281126130984844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A053120 (A061579 n).toNat|

end

end A081265.P2377281126130984844

noncomputable section

/-- A081265: Triangle of coefficients of the polynomials a(n, x) = 2*a(n-1, x)+ x^2*a(n-2,x), n >= 1, a(0, x) = 1, a(1, x) = 1.

Offset 0, canonical program `A081265.P2377281126130984844`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A081265 (n : ℕ) : ℤ :=
  A081265.P2377281126130984844.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A081265.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A108045.P11058483694618656926

`A127672(2-(2-n)%(n+1))`
-/

namespace A108045.P11058483694618656926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127672 (2 - Int.tmod (2 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A108045.P11058483694618656926

noncomputable section

/-- A108045: Triangle read by rows: lower triangular matrix obtained by inverting the lower triangular matrix in A108044.

Offset 0, canonical program `A108045.P11058483694618656926`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108045 (n : ℕ) : ℤ :=
  A108045.P11058483694618656926.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A108045.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137423.P11527174726418758611

`A053120(n)+A007318(n)`
-/

namespace A137423.P11527174726418758611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A007318 n

end

end A137423.P11527174726418758611

noncomputable section

/-- A137423: Triangle T(n,k) = A053120(n,k)+binomial(n,k) read by rows, 0<=k<=n.

Offset 0, canonical program `A137423.P11527174726418758611`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137423 (n : ℕ) : ℤ :=
  A137423.P11527174726418758611.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137423.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A137448.P2563997744992654951

`(A002260(n+1)-A143844(n))*A053120(n)`
-/

namespace A137448.P2563997744992654951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - A143844 n) * A053120 n

end

end A137448.P2563997744992654951

noncomputable section

/-- A137448: Triangle T(n,k) = (1-k*(k-1))*A053120(n,k), read by rows, 0<=k<=n.

Offset 0, canonical program `A137448.P2563997744992654951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137448 (n : ℕ) : ℤ :=
  A137448.P2563997744992654951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A137448.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140883.P11216059136269672096

`A053120(n)+A053120(A061579(n))`
-/

namespace A140883.P11216059136269672096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053120 n + A053120 (A061579 n).toNat

end

end A140883.P11216059136269672096

noncomputable section

/-- A140883: Triangle T(n,k) = A053120(n,k)+A053120(n,n-k) of symmetrized Chebyshev coefficients, read by rows, 0<=k<=n.

Offset 0, canonical program `A140883.P11216059136269672096`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A140883 (n : ℕ) : ℤ :=
  A140883.P11216059136269672096.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A140883.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164659.P7939324601151433332

`A002260(n+1)/gcd(A002260(n+1), A053120(n))`
-/

namespace A164659.P7939324601151433332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / (Int.gcd (A002260 (n + 1)) (A053120 n) : ℚ)

end

end A164659.P7939324601151433332

noncomputable section

/-- A164659: Denominators of coefficients of integrated Chebyshev polynomials T(n,x) (in increasing order of powers of x).

Offset 0, canonical program `A164659.P7939324601151433332`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A164659 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A164659.P7939324601151433332.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. -/
def A164659.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A313124.P8905845740579056507

`abs(A008592(n)-A315464(n))`
-/

namespace A313124.P8905845740579056507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008592 n - A315464 n|

end

end A313124.P8905845740579056507

noncomputable section

/-- A313124: Coordination sequence Gal.6.250.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

Offset 0, canonical program `A313124.P8905845740579056507`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124 (n : ℕ) : ℤ :=
  A313124.P8905845740579056507.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2351 terms. -/
def A313124.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025793.P17482771302027184557

`A029103(n)+A029115(n)-A029088(n)`
-/

namespace A025793.P17482771302027184557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029115 n - A029088 n)

end

end A025793.P17482771302027184557

noncomputable section

/-- A025793: Expansion of 1/((1-x)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025793.P17482771302027184557`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025793 (n : ℕ) : ℤ :=
  A025793.P17482771302027184557.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025793.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025819.P11076762606207294636

`A029202(n)+A029217(n)-A029193(n)`
-/

namespace A025819.P11076762606207294636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029202 n + (A029217 n - A029193 n)

end

end A025819.P11076762606207294636

noncomputable section

/-- A025819: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A025819.P11076762606207294636`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025819 (n : ℕ) : ℤ :=
  A025819.P11076762606207294636.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025819.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025826.P17755586261082147753

`A025793(n)-a(n-1)` with `a(0)=1`
-/

namespace A025826.P17755586261082147753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A025793 n - a (n - 1)

end

end A025826.P17755586261082147753

noncomputable section

/-- A025826: Expansion of 1/((1-x^2)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025826.P17755586261082147753`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025826 (n : ℕ) : ℤ :=
  A025826.P17755586261082147753.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025826.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025870.P5911728511515181031

`A025819(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A025870.P5911728511515181031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A025819 n - a (n - 2)

end

end A025870.P5911728511515181031

noncomputable section

/-- A025870: Expansion of 1/((1-x^4)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A025870.P5911728511515181031`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025870 (n : ℕ) : ℤ :=
  A025870.P5911728511515181031.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025870.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025906.P10640818763905870063

`A025926(abs(6-n))+A025926(n)`
-/

namespace A025906.P10640818763905870063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 |6 - (n : ℤ)|.toNat + A025926 n

end

end A025906.P10640818763905870063

noncomputable section

/-- A025906: Expansion of 1/((1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025906.P10640818763905870063`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025906 (n : ℕ) : ℤ :=
  A025906.P10640818763905870063.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025906.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029023.P12404370847291015571

`∑[A025819(n)]`
-/

namespace A029023.P12404370847291015571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029023.P12404370847291015571

noncomputable section

/-- A029023: Expansion of 1/((1-x)*(1-x^2)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029023.P12404370847291015571`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029023 (n : ℕ) : ℤ :=
  A029023.P12404370847291015571.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029030.P16404387939384550290

`∑[A025826(n)]`
-/

namespace A029030.P16404387939384550290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025826 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029030.P16404387939384550290

noncomputable section

/-- A029030: Expansion of 1/((1-x)(1-x^2)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029030.P16404387939384550290`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029030 (n : ℕ) : ℤ :=
  A029030.P16404387939384550290.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029030.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029060.P15442059423398744320

`A025793(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029060.P15442059423398744320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025793 n + a (n - 3)

end

end A029060.P15442059423398744320

noncomputable section

/-- A029060: Expansion of 1/((1-x)*(1-x^3)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029060.P15442059423398744320`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029060 (n : ℕ) : ℤ :=
  A029060.P15442059423398744320.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029060.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029076.P6539829890341637525

`∑[A025870(n)]`
-/

namespace A029076.P6539829890341637525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025870 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029076.P6539829890341637525

noncomputable section

/-- A029076: Expansion of 1/((1-x)(1-x^4)(1-x^7)(1-x^11)).

Offset 0, canonical program `A029076.P6539829890341637525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029076 (n : ℕ) : ℤ :=
  A029076.P6539829890341637525.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029076.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029083.P9950429381708833334

`A029030(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029083.P9950429381708833334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029030 n - a (n - 2)

end

end A029083.P9950429381708833334

noncomputable section

/-- A029083: Expansion of 1/((1-x)(1-x^4)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029083.P9950429381708833334`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029083 (n : ℕ) : ℤ :=
  A029083.P9950429381708833334.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029083.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029168.P16484112271336617921

`A029060(n)-a(n-1)` with `a(0)=1`
-/

namespace A029168.P16484112271336617921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029060 n - a (n - 1)

end

end A029168.P16484112271336617921

noncomputable section

/-- A029168: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029168.P16484112271336617921`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029168 (n : ℕ) : ℤ :=
  A029168.P16484112271336617921.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029168.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029184.P15944351178532472799

`A029076(n)-a(n-1)` with `a(0)=1`
-/

namespace A029184.P15944351178532472799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029076 n - a (n - 1)

end

end A029184.P15944351178532472799

noncomputable section

/-- A029184: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A029184.P15944351178532472799`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029184 (n : ℕ) : ℤ :=
  A029184.P15944351178532472799.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029184.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029208.P13086069940810275587

`A029101(n)-A029211(abs(A023443(n)))`
-/

namespace A029208.P13086069940810275587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029101 n - A029211 |A023443 n|.toNat

end

end A029208.P13086069940810275587

noncomputable section

/-- A029208: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029208.P13086069940810275587`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029208 (n : ℕ) : ℤ :=
  A029208.P13086069940810275587.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029208.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029234.P4989415662554192308

`A029125(n)-a(n-1)` with `a(0)=1`
-/

namespace A029234.P4989415662554192308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029125 n - a (n - 1)

end

end A029234.P4989415662554192308

noncomputable section

/-- A029234: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029234.P4989415662554192308`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029234 (n : ℕ) : ℤ :=
  A029234.P4989415662554192308.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029234.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029269.P9793256298477523850

`A029168(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029269.P9793256298477523850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029168 n - a (n - 2)

end

end A029269.P9793256298477523850

noncomputable section

/-- A029269: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029269.P9793256298477523850`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029269 (n : ℕ) : ℤ :=
  A029269.P9793256298477523850.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029269.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029289.P17957794895939154658

`A029269(n)+A029275(n)-A029255(n)`
-/

namespace A029289.P17957794895939154658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029275 n - A029255 n)

end

end A029289.P17957794895939154658

noncomputable section

/-- A029289: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029289.P17957794895939154658`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029289 (n : ℕ) : ℤ :=
  A029289.P17957794895939154658.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029289.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029341.P12104823036578098912

`A029208(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029341.P12104823036578098912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029208 n - a (n - 2)

end

end A029341.P12104823036578098912

noncomputable section

/-- A029341: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029341.P12104823036578098912`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029341 (n : ℕ) : ℤ :=
  A029341.P12104823036578098912.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029341.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029390.P9870324197793234391

`A029289(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029390.P9870324197793234391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029289 n - a (n - 3)

end

end A029390.P9870324197793234391

noncomputable section

/-- A029390: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029390.P9870324197793234391`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029390 (n : ℕ) : ℤ :=
  A029390.P9870324197793234391.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029390.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029401.P4755430295429988404

`A029212(n+5)-A029234(n+5)`
-/

namespace A029401.P4755430295429988404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029212 (n + 5) - A029234 (n + 5)

end

end A029401.P4755430295429988404

noncomputable section

/-- A029401: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029401.P4755430295429988404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029401 (n : ℕ) : ℤ :=
  A029401.P4755430295429988404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9995 terms. -/
def A029401.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029428.P15062183357670920441

`A025906(n)+A029114(n)-A029115(n)`
-/

namespace A029428.P15062183357670920441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025906 n + (A029114 n - A029115 n)

end

end A029428.P15062183357670920441

noncomputable section

/-- A029428: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029428.P15062183357670920441`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428 (n : ℕ) : ℤ :=
  A029428.P15062183357670920441.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029428.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029446.P13331593502067792089

`A029411(n)+∑[A029428(n)-A029411(n)]`
-/

namespace A029446.P13331593502067792089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029428 n - A029411 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029411 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029446.P13331593502067792089

noncomputable section

/-- A029446: Expansion of 1/((1-x^9)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029446.P13331593502067792089`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446 (n : ℕ) : ℤ :=
  A029446.P13331593502067792089.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029446.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039991.P3632847028178845373

`A140883(n)-A053120(n)`
-/

namespace A039991.P3632847028178845373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140883 n - A053120 n

end

end A039991.P3632847028178845373

noncomputable section

/-- A039991: Triangle of coefficients of cos(x)^n in polynomial for cos(nx).

Offset 0, canonical program `A039991.P3632847028178845373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991 (n : ℕ) : ℤ :=
  A039991.P3632847028178845373.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A039991.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025787.P9020564211015333637

`A025819(abs(1-n))+A025819(n)`
-/

namespace A025787.P9020564211015333637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025819 |1 - (n : ℤ)|.toNat + A025819 n

end

end A025787.P9020564211015333637

noncomputable section

/-- A025787: Expansion of 1/((1-x)(1-x^7)(1-x^11)).

Offset 0, canonical program `A025787.P9020564211015333637`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025787 (n : ℕ) : ℤ :=
  A025787.P9020564211015333637.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025787.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025823.P1335691272625039910

`A025792(n)-A025826(abs(A023443(n)))`
-/

namespace A025823.P1335691272625039910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025792 n - A025826 |A023443 n|.toNat

end

end A025823.P1335691272625039910

noncomputable section

/-- A025823: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025823.P1335691272625039910`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025823 (n : ℕ) : ℤ :=
  A025823.P1335691272625039910.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025823.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025856.P13919053735689660707

`A029269(n)+A029303(n)-A029255(n)`
-/

namespace A025856.P13919053735689660707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029269 n + (A029303 n - A029255 n)

end

end A025856.P13919053735689660707

noncomputable section

/-- A025856: Expansion of 1/((1-x^3)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025856.P13919053735689660707`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025856 (n : ℕ) : ℤ :=
  A025856.P13919053735689660707.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025856.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025916.P2083996258895106641

`A029234(n)+A029401(n)-A029212(n)`
-/

namespace A025916.P2083996258895106641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029234 n + (A029401 n - A029212 n)

end

end A025916.P2083996258895106641

noncomputable section

/-- A025916: Expansion of 1/((1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025916.P2083996258895106641`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025916 (n : ℕ) : ℤ :=
  A025916.P2083996258895106641.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025916.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025924.P6419062361051786323

`A025823(n)-A005044(A194960(n+1))`
-/

namespace A025924.P6419062361051786323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 n - A005044 (A194960 (n + 1)).toNat

end

end A025924.P6419062361051786323

noncomputable section

/-- A025924: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A025924.P6419062361051786323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025924 (n : ℕ) : ℤ :=
  A025924.P6419062361051786323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025924.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029027.P11280766384065519404

`∑[A025823(n)]`
-/

namespace A029027.P11280766384065519404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029027.P11280766384065519404

noncomputable section

/-- A029027: Expansion of 1/((1-x)*(1-x^2)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029027.P11280766384065519404`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029027 (n : ℕ) : ℤ :=
  A029027.P11280766384065519404.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029027.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029080.P7340783252293150969

`A029027(n)-a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A029080.P7340783252293150969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A029027 n - a (n - 2)

end

end A029080.P7340783252293150969

noncomputable section

/-- A029080: Expansion of 1/((1-x)*(1-x^4)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029080.P7340783252293150969`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029080 (n : ℕ) : ℤ :=
  A029080.P7340783252293150969.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029080.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029100.P6452191095425632711

`A029208(abs(1-n))+A029208(n)`
-/

namespace A029100.P6452191095425632711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029208 |1 - (n : ℤ)|.toNat + A029208 n

end

end A029100.P6452191095425632711

noncomputable section

/-- A029100: Expansion of 1/((1-x)*(1-x^5)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029100.P6452191095425632711`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029100 (n : ℕ) : ℤ :=
  A029100.P6452191095425632711.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029100.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029113.P16175053738849920081

`A029114(n)+A029428(n)-A025905(n)`
-/

namespace A029113.P16175053738849920081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029114 n + (A029428 n - A025905 n)

end

end A029113.P16175053738849920081

noncomputable section

/-- A029113: Expansion of 1/((1-x)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029113.P16175053738849920081`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029113 (n : ℕ) : ℤ :=
  A029113.P16175053738849920081.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029113.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029133.P2070420607738981676

`∑[A025924(n)]`
-/

namespace A029133.P2070420607738981676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029133.P2070420607738981676

noncomputable section

/-- A029133: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029133.P2070420607738981676`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133 (n : ℕ) : ℤ :=
  A029133.P2070420607738981676.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029133.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029165.P430472255033191100

`A025823(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029165.P430472255033191100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025823 n + a (n - 3)

end

end A029165.P430472255033191100

noncomputable section

/-- A029165: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029165.P430472255033191100`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029165 (n : ℕ) : ℤ :=
  A029165.P430472255033191100.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029165.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029188.P8573810268578993572

`A029080(n)-a(n-1)` with `a(0)=1`
-/

namespace A029188.P8573810268578993572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029080 n - a (n - 1)

end

end A029188.P8573810268578993572

noncomputable section

/-- A029188: Expansion of 1/((1-x^2)*(1-x^4)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029188.P8573810268578993572`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029188 (n : ℕ) : ℤ :=
  A029188.P8573810268578993572.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029188.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029221.P3659478906980729494

`A029113(n)-a(n-1)` with `a(0)=1`
-/

namespace A029221.P3659478906980729494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029113 n - a (n - 1)

end

end A029221.P3659478906980729494

noncomputable section

/-- A029221: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029221.P3659478906980729494`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029221 (n : ℕ) : ℤ :=
  A029221.P3659478906980729494.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029221.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029241.P4809283722259501140

`A029133(n)+A029243(n)-A029134(n)`
-/

namespace A029241.P4809283722259501140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029133 n + (A029243 n - A029134 n)

end

end A029241.P4809283722259501140

noncomputable section

/-- A029241: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029241.P4809283722259501140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241 (n : ℕ) : ℤ :=
  A029241.P4809283722259501140.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029241.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029242.P11992213160082313165

`A029133(n)-a(n-1)` with `a(0)=1`
-/

namespace A029242.P11992213160082313165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029133 n - a (n - 1)

end

end A029242.P11992213160082313165

noncomputable section

/-- A029242: Expansion of 1/((1-x^2)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029242.P11992213160082313165`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242 (n : ℕ) : ℤ :=
  A029242.P11992213160082313165.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029266.P16326010503023563996

`A029165(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029266.P16326010503023563996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029165 n - a (n - 2)

end

end A029266.P16326010503023563996

noncomputable section

/-- A029266: Expansion of 1/((1-x^3)*(1-x^4)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029266.P16326010503023563996`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029266 (n : ℕ) : ℤ :=
  A029266.P16326010503023563996.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029266.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029314.P3166923144704903477

`A025916(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029314.P3166923144704903477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025916 n + a (n - 3)

end

end A029314.P3166923144704903477

noncomputable section

/-- A029314: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029314.P3166923144704903477`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029314 (n : ℕ) : ℤ :=
  A029314.P3166923144704903477.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029314.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029317.P5055318172430600220

`A025919(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029317.P5055318172430600220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025919 n + a (n - 3)

end

end A029317.P5055318172430600220

noncomputable section

/-- A029317: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^9)*(1-x^11)).

Offset 0, canonical program `A029317.P5055318172430600220`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029317 (n : ℕ) : ℤ :=
  A029317.P5055318172430600220.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029317.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029323.P5470347165269879992

`A025924(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029323.P5470347165269879992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025924 n + a (n - 3)

end

end A029323.P5470347165269879992

noncomputable section

/-- A029323: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029323.P5470347165269879992`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029323 (n : ℕ) : ℤ :=
  A029323.P5470347165269879992.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029323.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029354.P752439661720051044

`A029221(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029354.P752439661720051044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029221 n - a (n - 2)

end

end A029354.P752439661720051044

noncomputable section

/-- A029354: Expansion of 1/((1-x^4)*(1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029354.P752439661720051044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029354 (n : ℕ) : ℤ :=
  A029354.P752439661720051044.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029354.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029374.P16522389890125630689

`A029241(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029374.P16522389890125630689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029241 n - a (n - 2)

end

end A029374.P16522389890125630689

noncomputable section

/-- A029374: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029374.P16522389890125630689`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029374 (n : ℕ) : ℤ :=
  A029374.P16522389890125630689.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029375.P12310892285696023417

`A029242(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029375.P12310892285696023417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029242 n - a (n - 2)

end

end A029375.P12310892285696023417

noncomputable section

/-- A029375: Expansion of 1/((1-x^4)*(1-x^9)*(1-x^10)*(1-x^12)).

Offset 0, canonical program `A029375.P12310892285696023417`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375 (n : ℕ) : ℤ :=
  A029375.P12310892285696023417.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029382.P7525148470487421479

`A025916(n)+A029090(n)-∑[A025899(n)]`
-/

namespace A029382.P7525148470487421479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025916 n + (A029090 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A029382.P7525148470487421479

noncomputable section

/-- A029382: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029382.P7525148470487421479`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029382 (n : ℕ) : ℤ :=
  A029382.P7525148470487421479.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029382.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029402.P12129386215705779190

`A029094(n)+A029382(n)-A029090(n)`
-/

namespace A029402.P12129386215705779190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029094 n + (A029382 n - A029090 n)

end

end A029402.P12129386215705779190

noncomputable section

/-- A029402: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029402.P12129386215705779190`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029402 (n : ℕ) : ℤ :=
  A029402.P12129386215705779190.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029402.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029409.P7184523161704019906

`A029374(n)+A029387(n)-A029355(n)`
-/

namespace A029409.P7184523161704019906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029374 n + (A029387 n - A029355 n)

end

end A029409.P7184523161704019906

noncomputable section

/-- A029409: Expansion of 1/((1-x^5)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029409.P7184523161704019906`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029409 (n : ℕ) : ℤ :=
  A029409.P7184523161704019906.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029409.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029421.P13299800104140675938

`A029314(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029421.P13299800104140675938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029314 n - a (n - 3)

end

end A029421.P13299800104140675938

noncomputable section

/-- A029421: Expansion of 1/((1-x^6)(1-x^7)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029421.P13299800104140675938`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029421 (n : ℕ) : ℤ :=
  A029421.P13299800104140675938.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029421.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029429.P6125197273790252985

`A029323(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029429.P6125197273790252985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029323 n - a (n - 3)

end

end A029429.P6125197273790252985

noncomputable section

/-- A029429: Expansion of 1/((1-x^6)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029429.P6125197273790252985`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429 (n : ℕ) : ℤ :=
  A029429.P6125197273790252985.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029429.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029439.P16598392286380300323

`A029160(n+7)-A029165(n+7)`
-/

namespace A029439.P16598392286380300323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029160 (n + 7) - A029165 (n + 7)

end

end A029439.P16598392286380300323

noncomputable section

/-- A029439: Expansion of 1/((1-x^7)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029439.P16598392286380300323`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029439 (n : ℕ) : ℤ :=
  A029439.P16598392286380300323.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. -/
def A029439.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025791.P3758099405769562848

`A025823(abs(1-n))+A025823(n)`
-/

namespace A025791.P3758099405769562848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025823 |1 - (n : ℤ)|.toNat + A025823 n

end

end A025791.P3758099405769562848

noncomputable section

/-- A025791: Expansion of 1/((1-x)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025791.P3758099405769562848`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025791 (n : ℕ) : ℤ :=
  A025791.P3758099405769562848.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025791.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025886.P3392264516869231449

`Δ[A029108(n)-A025916(n)]`
-/

namespace A025886.P3392264516869231449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029108 n - A025916 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025886.P3392264516869231449

noncomputable section

/-- A025886: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A025886.P3392264516869231449`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025886 (n : ℕ) : ℤ :=
  A025886.P3392264516869231449.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025886.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025894.P11663709307742991150

`A029103(n)+A029409(n)-A029101(n)`
-/

namespace A025894.P11663709307742991150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029103 n + (A029409 n - A029101 n)

end

end A025894.P11663709307742991150

noncomputable section

/-- A025894: Expansion of 1/((1-x^5)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025894.P11663709307742991150`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025894 (n : ℕ) : ℤ :=
  A025894.P11663709307742991150.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025894.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025904.P10160128310211328802

`A025924(abs(6-n))+A025924(n)`
-/

namespace A025904.P10160128310211328802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025924 |6 - (n : ℤ)|.toNat + A025924 n

end

end A025904.P10160128310211328802

noncomputable section

/-- A025904: Expansion of 1/((1-x^6)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025904.P10160128310211328802`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025904 (n : ℕ) : ℤ :=
  A025904.P10160128310211328802.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025904.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025917.P17801303751830098508

`A029402(n)+A029422(n)-A029382(n)`
-/

namespace A025917.P17801303751830098508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029402 n + (A029422 n - A029382 n)

end

end A025917.P17801303751830098508

noncomputable section

/-- A025917: Expansion of 1/((1-x^7)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025917.P17801303751830098508`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025917 (n : ℕ) : ℤ :=
  A025917.P17801303751830098508.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025917.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029058.P15813768449176466682

`A025791(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029058.P15813768449176466682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025791 n + a (n - 3)

end

end A029058.P15813768449176466682

noncomputable section

/-- A029058: Expansion of 1/((1-x)(1-x^3)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029058.P15813768449176466682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029058 (n : ℕ) : ℤ :=
  A029058.P15813768449176466682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029058.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029095.P4776285341174308375

`∑[A025886(n)]`
-/

namespace A029095.P4776285341174308375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025886 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029095.P4776285341174308375

noncomputable section

/-- A029095: Expansion of 1/((1-x)*(1-x^5)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029095.P4776285341174308375`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029095 (n : ℕ) : ℤ :=
  A029095.P4776285341174308375.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029095.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029130.P9139947445189529959

`A029241(abs(A024000(n)))+A029237(n)`
-/

namespace A029130.P9139947445189529959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029241 |A024000 n|.toNat + A029237 n

end

end A029130.P9139947445189529959

noncomputable section

/-- A029130: Expansion of 1/((1-x)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029130.P9139947445189529959`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130 (n : ℕ) : ℤ :=
  A029130.P9139947445189529959.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029130.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029132.P3141422924859193471

`A029241(abs(1-n))+A029241(n)`
-/

namespace A029132.P3141422924859193471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029241 |1 - (n : ℤ)|.toNat + A029241 n

end

end A029132.P3141422924859193471

noncomputable section

/-- A029132: Expansion of 1/((1-x)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029132.P3141422924859193471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029132 (n : ℕ) : ℤ :=
  A029132.P3141422924859193471.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029203.P5367030748882690085

`A029095(n)-a(n-1)` with `a(0)=1`
-/

namespace A029203.P5367030748882690085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029095 n - a (n - 1)

end

end A029203.P5367030748882690085

noncomputable section

/-- A029203: Expansion of 1/((1-x^2)*(1-x^5)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029203.P5367030748882690085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029203 (n : ℕ) : ℤ :=
  A029203.P5367030748882690085.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029203.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029239.P14692552077046529193

`A029130(n)-a(n-1)` with `a(0)=1`
-/

namespace A029239.P14692552077046529193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029130 n - a (n - 1)

end

end A029239.P14692552077046529193

noncomputable section

/-- A029239: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029239.P14692552077046529193`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029239 (n : ℕ) : ℤ :=
  A029239.P14692552077046529193.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029239.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029281.P160047908962866729

`A025886(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029281.P160047908962866729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025886 n + a (n - 3)

end

end A029281.P160047908962866729

noncomputable section

/-- A029281: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029281.P160047908962866729`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029281 (n : ℕ) : ℤ :=
  A029281.P160047908962866729.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029281.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029319.P17880918560433221598

`A029130(n)-a(n-1)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029319.P17880918560433221598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029130 n - a (n - 1) - a (n - 2)

end

end A029319.P17880918560433221598

noncomputable section

/-- A029319: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029319.P17880918560433221598`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029319 (n : ℕ) : ℤ :=
  A029319.P17880918560433221598.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029319.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029322.P8613173679421761326

`A029303(n)+A029374(n)-A029355(n)`
-/

namespace A029322.P8613173679421761326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029303 n + (A029374 n - A029355 n)

end

end A029322.P8613173679421761326

noncomputable section

/-- A029322: Expansion of 1/((1-x^3)*(1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029322.P8613173679421761326`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029322 (n : ℕ) : ℤ :=
  A029322.P8613173679421761326.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029322.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029336.P17481784717413030806

`A029203(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029336.P17481784717413030806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029203 n - a (n - 2)

end

end A029336.P17481784717413030806

noncomputable section

/-- A029336: Expansion of 1/((1-x^4)*(1-x^5)*(1-x^7)*(1-x^12)).

Offset 0, canonical program `A029336.P17481784717413030806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029336 (n : ℕ) : ℤ :=
  A029336.P17481784717413030806.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029336.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029372.P2672987048635236464

`A029239(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029372.P2672987048635236464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029239 n - a (n - 2)

end

end A029372.P2672987048635236464

noncomputable section

/-- A029372: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A029372.P2672987048635236464`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029372 (n : ℕ) : ℤ :=
  A029372.P2672987048635236464.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029399.P14652591475323631026

`Δ[∑[A029417(n)]-A029439(n)]`
-/

namespace A029399.P14652591475323631026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029417 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029399.P14652591475323631026

noncomputable section

/-- A029399: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^9)*(1-x^12)).

Offset 0, canonical program `A029399.P14652591475323631026`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399 (n : ℕ) : ℤ :=
  A029399.P14652591475323631026.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029399.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029406.P550328618006401562

`A029372(n)+A029384(n)-A029353(n)`
-/

namespace A029406.P550328618006401562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029372 n + (A029384 n - A029353 n)

end

end A029406.P550328618006401562

noncomputable section

/-- A029406: Expansion of 1/((1-x^5)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029406.P550328618006401562`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029406 (n : ℕ) : ℤ :=
  A029406.P550328618006401562.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029406.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029426.P5316000396173003913

`A029319(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029426.P5316000396173003913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029319 n - a (n - 3)

end

end A029426.P5316000396173003913

noncomputable section

/-- A029426: Expansion of 1/((1-x^6)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029426.P5316000396173003913`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029426 (n : ℕ) : ℤ :=
  A029426.P5316000396173003913.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029426.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029445.P17442222994120643145

`A025926(n)+A029372(n)-A029377(n)`
-/

namespace A029445.P17442222994120643145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025926 n + (A029372 n - A029377 n)

end

end A029445.P17442222994120643145

noncomputable section

/-- A029445: Expansion of 1/((1-x^8)(1-x^10)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029445.P17442222994120643145`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029445 (n : ℕ) : ℤ :=
  A029445.P17442222994120643145.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029445.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025837.P14089993397480469275

`A025904(A047242(n+1))`
-/

namespace A025837.P14089993397480469275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025904 (A047242 (n + 1)).toNat

end

end A025837.P14089993397480469275

noncomputable section

/-- A025837: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^9)).

Offset 0, canonical program `A025837.P14089993397480469275`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A025837 (n : ℕ) : ℤ :=
  A025837.P14089993397480469275.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5001 terms. -/
def A025837.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025878.P1279235894174252568

`A025837(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A025878.P1279235894174252568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025837 n - a (n - 3)

end

end A025878.P1279235894174252568

noncomputable section

/-- A025878: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^9)).

Offset 0, canonical program `A025878.P1279235894174252568`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025878 (n : ℕ) : ℤ :=
  A025878.P1279235894174252568.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025878.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025885.P12884235664403199703

`A025881(n)+A025917(n)-A025907(n)`
-/

namespace A025885.P12884235664403199703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025881 n + (A025917 n - A025907 n)

end

end A025885.P12884235664403199703

noncomputable section

/-- A025885: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^11)).

Offset 0, canonical program `A025885.P12884235664403199703`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025885 (n : ℕ) : ℤ :=
  A025885.P12884235664403199703.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025885.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025891.P14055655903813702099

`A025862(n)+A025904(n)-A025865(n)`
-/

namespace A025891.P14055655903813702099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025862 n + (A025904 n - A025865 n)

end

end A025891.P14055655903813702099

noncomputable section

/-- A025891: Expansion of 1/((1-x^5)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025891.P14055655903813702099`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025891 (n : ℕ) : ℤ :=
  A025891.P14055655903813702099.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025891.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025896.P9302578031106192194

`A025875(n)+A025885(n)-A025871(n)`
-/

namespace A025896.P9302578031106192194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025875 n + (A025885 n - A025871 n)

end

end A025896.P9302578031106192194

noncomputable section

/-- A025896: Expansion of 1/((1-x^5)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025896.P9302578031106192194`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025896 (n : ℕ) : ℤ :=
  A025896.P9302578031106192194.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029236.P5523176851886397480

`A029128(n)+A029239(n)-A029130(n)`
-/

namespace A029236.P5523176851886397480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029128 n + (A029239 n - A029130 n)

end

end A029236.P5523176851886397480

noncomputable section

/-- A029236: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029236.P5523176851886397480`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029236 (n : ℕ) : ℤ :=
  A029236.P5523176851886397480.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029236.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029240.P15289134274771874386

`A029244(n)+A029445(n)-A025926(n)`
-/

namespace A029240.P15289134274771874386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n + (A029445 n - A025926 n)

end

end A029240.P15289134274771874386

noncomputable section

/-- A029240: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029240.P15289134274771874386`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029240 (n : ℕ) : ℤ :=
  A029240.P15289134274771874386.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029240.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029308.P9850508978971010874

`A029319(n)+A029360(n)-A029372(n)`
-/

namespace A029308.P9850508978971010874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029319 n + (A029360 n - A029372 n)

end

end A029308.P9850508978971010874

noncomputable section

/-- A029308: Expansion of 1/((1-x^3)*(1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029308.P9850508978971010874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029308 (n : ℕ) : ℤ :=
  A029308.P9850508978971010874.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029308.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029369.P5738968494950844050

`A029236(n)-a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A029369.P5738968494950844050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A029236 n - a (n - 2)

end

end A029369.P5738968494950844050

noncomputable section

/-- A029369: Expansion of 1/((1-x^4)*(1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A029369.P5738968494950844050`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029369 (n : ℕ) : ℤ :=
  A029369.P5738968494950844050.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029369.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029408.P16904419876965662283

`A029240(n)+A029386(n)-A029225(n)`
-/

namespace A029408.P16904419876965662283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029386 n - A029225 n)

end

end A029408.P16904419876965662283

noncomputable section

/-- A029408: Expansion of 1/((1-x^5)(1-x^8)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029408.P16904419876965662283`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029408 (n : ℕ) : ℤ :=
  A029408.P16904419876965662283.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029408.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029415.P3348494937150710083

`A029308(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029415.P3348494937150710083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029308 n - a (n - 3)

end

end A029415.P3348494937150710083

noncomputable section

/-- A029415: Expansion of 1/((1-x^6)(1-x^7)(1-x^8)(1-x^11)).

Offset 0, canonical program `A029415.P3348494937150710083`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029415 (n : ℕ) : ℤ :=
  A029415.P3348494937150710083.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029415.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029443.P11202586114507324951

`A029236(n)+A029352(n)-A029190(n)`
-/

namespace A029443.P11202586114507324951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n + (A029352 n - A029190 n)

end

end A029443.P11202586114507324951

noncomputable section

/-- A029443: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^12)).

Offset 0, canonical program `A029443.P11202586114507324951`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029443 (n : ℕ) : ℤ :=
  A029443.P11202586114507324951.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029443.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A168201.P16849005549237807023

`A025885(n)+A025900(n)-A025876(n)`
-/

namespace A168201.P16849005549237807023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025885 n + (A025900 n - A025876 n)

end

end A168201.P16849005549237807023

noncomputable section

/-- A168201: Number of representations of n in the form 7*k+11*m (with nonnegative k, m).

Offset 0, canonical program `A168201.P16849005549237807023`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168201 (n : ℕ) : ℤ :=
  A168201.P16849005549237807023.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A168201.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025918.P16543580143826744957

`A029236(n)+A029423(n)-A029221(n)`
-/

namespace A025918.P16543580143826744957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029236 n + (A029423 n - A029221 n)

end

end A025918.P16543580143826744957

noncomputable section

/-- A025918: Expansion of 1/((1-x^8)*(1-x^9)*(1-x^10)).

Offset 0, canonical program `A025918.P16543580143826744957`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025918 (n : ℕ) : ℤ :=
  A025918.P16543580143826744957.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025918.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025922.P6708222772634296198

`A029240(n)+A029427(n)-A029225(n)`
-/

namespace A025922.P6708222772634296198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029427 n - A029225 n)

end

end A025922.P6708222772634296198

noncomputable section

/-- A025922: Expansion of 1/((1-x^8)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A025922.P6708222772634296198`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025922 (n : ℕ) : ℤ :=
  A025922.P6708222772634296198.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025922.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029127.P16971124767418111993

`∑[A025918(n)]`
-/

namespace A029127.P16971124767418111993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029127.P16971124767418111993

noncomputable section

/-- A029127: Expansion of 1/((1-x)(1-x^8)(1-x^9)(1-x^10)).

Offset 0, canonical program `A029127.P16971124767418111993`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029127 (n : ℕ) : ℤ :=
  A029127.P16971124767418111993.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029127.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029131.P14368034963084575048

`∑[A025922(n)]`
-/

namespace A029131.P14368034963084575048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029131.P14368034963084575048

noncomputable section

/-- A029131: Expansion of 1/((1-x)(1-x^8)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029131.P14368034963084575048`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029131 (n : ℕ) : ℤ :=
  A029131.P14368034963084575048.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029131.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029220.P14898228413299065211

`A029240(n)+A029353(n)-A025875(n)`
-/

namespace A029220.P14898228413299065211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029240 n + (A029353 n - A025875 n)

end

end A029220.P14898228413299065211

noncomputable section

/-- A029220: Expansion of 1/((1-x^2)*(1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029220.P14898228413299065211`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029220 (n : ℕ) : ℤ :=
  A029220.P14898228413299065211.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029220.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029321.P12768009406685608528

`A025922(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029321.P12768009406685608528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025922 n + a (n - 3)

end

end A029321.P12768009406685608528

noncomputable section

/-- A029321: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^11)*(1-x^12)).

Offset 0, canonical program `A029321.P12768009406685608528`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029321 (n : ℕ) : ℤ :=
  A029321.P12768009406685608528.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029321.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029405.P3828113110595546139

`Δ[∑[A029423(n)]-A029443(n)]`
-/

namespace A029405.P3828113110595546139
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029423 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A029443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A029405.P3828113110595546139

noncomputable section

/-- A029405: Expansion of 1/((1-x^5)(1-x^8)(1-x^9)(1-x^12)).

Offset 0, canonical program `A029405.P3828113110595546139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029405 (n : ℕ) : ℤ :=
  A029405.P3828113110595546139.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A029405.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029437.P16437964794762885094

`A025922(n)+A029362(n)-A029373(n)`
-/

namespace A029437.P16437964794762885094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n + (A029362 n - A029373 n)

end

end A029437.P16437964794762885094

noncomputable section

/-- A029437: Expansion of 1/((1-x^7)(1-x^8)(1-x^11)(1-x^12)).

Offset 0, canonical program `A029437.P16437964794762885094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029437 (n : ℕ) : ℤ :=
  A029437.P16437964794762885094.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029437.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029442.P15677434544600436367

`A025919(n)+∑[A025918(n)-A025919(n)]`
-/

namespace A029442.P15677434544600436367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025918 n - A025919 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025919 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029442.P15677434544600436367

noncomputable section

/-- A029442: Expansion of 1/((1-x^8)(1-x^9)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029442.P15677434544600436367`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442 (n : ℕ) : ℤ :=
  A029442.P15677434544600436367.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029442.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025822.P12182443523741102345

`A029206(n)+A029220(n)-A029194(n)`
-/

namespace A025822.P12182443523741102345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029206 n + (A029220 n - A029194 n)

end

end A025822.P12182443523741102345

noncomputable section

/-- A025822: Expansion of 1/((1-x^2)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A025822.P12182443523741102345`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025822 (n : ℕ) : ℤ :=
  A025822.P12182443523741102345.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025822.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025923.P9423752685854138239

`Δ[A029130(n)-A029442(n)]`
-/

namespace A025923.P9423752685854138239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n - A029442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025923.P9423752685854138239

noncomputable section

/-- A025923: Expansion of 1/((1-x^9)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025923.P9423752685854138239`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025923 (n : ℕ) : ℤ :=
  A025923.P9423752685854138239.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A025923.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029026.P10562045008763740111

`∑[A025822(n)]`
-/

namespace A029026.P10562045008763740111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029026.P10562045008763740111

noncomputable section

/-- A029026: Expansion of 1/((1-x)(1-x^2)(1-x^8)(1-x^11)).

Offset 0, canonical program `A029026.P10562045008763740111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029026 (n : ℕ) : ℤ :=
  A029026.P10562045008763740111.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029026.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029112.P6551359032380966895

`A029220(abs(1-n))+A029220(n)`
-/

namespace A029112.P6551359032380966895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029220 |1 - (n : ℤ)|.toNat + A029220 n

end

end A029112.P6551359032380966895

noncomputable section

/-- A029112: Expansion of 1/((1-x)(1-x^6)(1-x^8)(1-x^11)).

Offset 0, canonical program `A029112.P6551359032380966895`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029112 (n : ℕ) : ℤ :=
  A029112.P6551359032380966895.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029112.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029163.P13423958739968930241

`A025822(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A029163.P13423958739968930241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A025822 n + a (n - 3)

end

end A029163.P13423958739968930241

noncomputable section

/-- A029163: Expansion of 1/((1-x^2)*(1-x^3)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029163.P13423958739968930241`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029163 (n : ℕ) : ℤ :=
  A029163.P13423958739968930241.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029163.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029395.P2989943382135778260

`A029408(n)+A029437(n)-A025922(n)`
-/

namespace A029395.P2989943382135778260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029408 n + (A029437 n - A025922 n)

end

end A029395.P2989943382135778260

noncomputable section

/-- A029395: Expansion of 1/((1-x^5)*(1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029395.P2989943382135778260`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029395 (n : ℕ) : ℤ :=
  A029395.P2989943382135778260.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029395.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029435.P8450062844158075990

`A029124(n)+A029442(n)-A029128(n)`
-/

namespace A029435.P8450062844158075990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029124 n + (A029442 n - A029128 n)

end

end A029435.P8450062844158075990

noncomputable section

/-- A029435: Expansion of 1/((1-x^7)(1-x^8)(1-x^10)(1-x^11)).

Offset 0, canonical program `A029435.P8450062844158075990`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029435 (n : ℕ) : ℤ :=
  A029435.P8450062844158075990.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029435.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025790.P12026998922626050715

`A025822(abs(1-n))+A025822(n)`
-/

namespace A025790.P12026998922626050715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025822 |1 - (n : ℤ)|.toNat + A025822 n

end

end A025790.P12026998922626050715

noncomputable section

/-- A025790: Expansion of 1/((1-x)(1-x^8)(1-x^11)).

Offset 0, canonical program `A025790.P12026998922626050715`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025790 (n : ℕ) : ℤ :=
  A025790.P12026998922626050715.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025790.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025903.P4620717236917863113

`Δ[A029112(n-a(2%n))]` with `a(0)=0, a(1)=1`
-/

namespace A025903.P4620717236917863113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A029112 ((n : ℤ) - f1 (2 % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A025903.P4620717236917863113

noncomputable section

/-- A025903: Expansion of 1/((1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A025903.P4620717236917863113`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025903 (n : ℕ) : ℤ :=
  A025903.P4620717236917863113.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025903.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025910.P2987843429361271316

`A029395(n)+A029415(n)-A029378(n)`
-/

namespace A025910.P2987843429361271316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029395 n + (A029415 n - A029378 n)

end

end A025910.P2987843429361271316

noncomputable section

/-- A025910: Expansion of 1/((1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A025910.P2987843429361271316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025910 (n : ℕ) : ℤ :=
  A025910.P2987843429361271316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025910.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025921.P13448151223671208141

`A029130(n)+A029435(n)-A029124(n)`
-/

namespace A025921.P13448151223671208141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029130 n + (A029435 n - A029124 n)

end

end A025921.P13448151223671208141

noncomputable section

/-- A025921: Expansion of 1/((1-x^8)*(1-x^10)*(1-x^11)).

Offset 0, canonical program `A025921.P13448151223671208141`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025921 (n : ℕ) : ℤ :=
  A025921.P13448151223671208141.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025921.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029056.P371621000028769602

`A025790(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A029056.P371621000028769602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A025790 n + a (n - 3)

end

end A029056.P371621000028769602

noncomputable section

/-- A029056: Expansion of 1/((1-x)*(1-x^3)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029056.P371621000028769602`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029056 (n : ℕ) : ℤ :=
  A029056.P371621000028769602.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029056.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029119.P9739790713922927078

`∑[A025910(n)]`
-/

namespace A029119.P9739790713922927078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A029119.P9739790713922927078

noncomputable section

/-- A029119: Expansion of 1/((1-x)(1-x^7)(1-x^8)(1-x^11)).

Offset 0, canonical program `A029119.P9739790713922927078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029119 (n : ℕ) : ℤ :=
  A029119.P9739790713922927078.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029119.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029228.P5384408417690494335

`A029119(n)-a(n-1)` with `a(0)=1`
-/

namespace A029228.P5384408417690494335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029119 n - a (n - 1)

end

end A029228.P5384408417690494335

noncomputable section

/-- A029228: Expansion of 1/((1-x^2)*(1-x^7)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029228.P5384408417690494335`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029228 (n : ℕ) : ℤ :=
  A029228.P5384408417690494335.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029228.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029299.P16742810720159081316

`A025903(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029299.P16742810720159081316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025903 n + a (n - 3)

end

end A029299.P16742810720159081316

noncomputable section

/-- A029299: Expansion of 1/((1-x^3)*(1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029299.P16742810720159081316`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029299 (n : ℕ) : ℤ :=
  A029299.P16742810720159081316.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029299.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A020913.P10754868390936482838

`A121902(xor(A025910(n), A167614(n+1)))`
-/

namespace A020913.P10754868390936482838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121902 (Int.xor (A025910 n) (A167614 (n + 1))).toNat

end

end A020913.P10754868390936482838

noncomputable section

/-- A020913: Number of terms in base 5 representation of Fibonacci(n).

Offset 1, canonical program `A020913.P10754868390936482838`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A020913 (n : ℕ) : ℤ :=
  A020913.P10754868390936482838.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 140 terms. -/
def A020913.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025852.P12461268655805797422

`A029056(n)+A029163(n)-A029026(n)`
-/

namespace A025852.P12461268655805797422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029056 n + (A029163 n - A029026 n)

end

end A025852.P12461268655805797422

noncomputable section

/-- A025852: Expansion of 1/((1-x^3)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A025852.P12461268655805797422`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025852 (n : ℕ) : ℤ :=
  A025852.P12461268655805797422.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025852.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A025889.P201501614113230032

`A025921(abs(5-n))+A025921(n)`
-/

namespace A025889.P201501614113230032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 |5 - (n : ℤ)|.toNat + A025921 n

end

end A025889.P201501614113230032

noncomputable section

/-- A025889: Expansion of 1/((1-x^5)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A025889.P201501614113230032`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025889 (n : ℕ) : ℤ :=
  A025889.P201501614113230032.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A025889.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029284.P2674467912150014380

`A025889(n)+a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029284.P2674467912150014380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A025889 n + a (n - 3)

end

end A029284.P2674467912150014380

noncomputable section

/-- A029284: Expansion of 1/((1-x^3)*(1-x^5)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029284.P2674467912150014380`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029284 (n : ℕ) : ℤ :=
  A029284.P2674467912150014380.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029284.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A029385.P8997023227907676682

`A029284(n)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A029385.P8997023227907676682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A029284 n - a (n - 3)

end

end A029385.P8997023227907676682

noncomputable section

/-- A029385: Expansion of 1/((1-x^5)*(1-x^6)*(1-x^8)*(1-x^11)).

Offset 0, canonical program `A029385.P8997023227907676682`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029385 (n : ℕ) : ℤ :=
  A029385.P8997023227907676682.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A029385.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A072960.P17418805968643026231

`eq[1, ∏{digits}[n, A025852(#)]]`
-/

namespace A072960.P17418805968643026231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => A025852 x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072960.P17418805968643026231

noncomputable section

/-- A072960: Numbers using only the curved digits 0, 3, 6, 8 and 9.

Offset 1, canonical program `A072960.P17418805968643026231`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A072960 (n : ℕ) : ℤ :=
  (A072960.P17418805968643026231.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 625 terms. -/
def A072960.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A079652.P17596218607054029471

`p?[A072960(n+1)]`
-/

namespace A079652.P17596218607054029471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A079652.P17596218607054029471

noncomputable section

/-- A079652: Prime numbers using only the curved digits 0, 3, 6, 8 and 9.

Offset 1, canonical program `A079652.P17596218607054029471`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A079652 (n : ℕ) : ℤ :=
  A079652.P17596218607054029471.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 721 terms. -/
def A079652.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A386069.P385928273964232171

`∩[A072960(n+1), A386337(n+1)]`
-/

namespace A386069.P385928273964232171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A386069.P385928273964232171

noncomputable section

/-- A386069: Primes having only {0, 3, 8, 9} as digits.

Offset 1, canonical program `A386069.P385928273964232171`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069 (n : ℕ) : ℤ :=
  (A386069.P385928273964232171.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 187 terms. -/
def A386069.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A001743.P11802867957663763901

`∩[A072960(n+1), A054047(n)]`
-/

namespace A001743.P11802867957663763901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P11802867957663763901

noncomputable section

/-- A001743: Numbers in which every digit contains at least one loop (version 1).

Offset 1, canonical program `A001743.P11802867957663763901`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A001743 (n : ℕ) : ℤ :=
  (A001743.P11802867957663763901.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. -/
def A001743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039011.P18413047402145941160

`eq[A064692(A072960(n+1)), A110592(n)]`
-/

namespace A039011.P18413047402145941160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A072960 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039011.P18413047402145941160

noncomputable section

/-- A039011: Numbers whose base-5 representation has the same number of 1's and 3's.

Offset 1, canonical program `A039011.P18413047402145941160`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A039011 (n : ℕ) : ℤ :=
  (A039011.P18413047402145941160.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 339 terms. -/
def A039011.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045237.P11851650769541993133

`∩[A023726(n+1), A039011(n+1)]`
-/

namespace A045237.P11851650769541993133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045237.P11851650769541993133

noncomputable section

/-- A045237: Numbers whose base-5 representation contains exactly one 1 and one 3.

Offset 1, canonical program `A045237.P11851650769541993133`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237 (n : ℕ) : ℤ :=
  (A045237.P11851650769541993133.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3786 terms. -/
def A045237.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A053580.P17285909169355561806

`∩[A057770(n+1), A079652(n+1)]`
-/

namespace A053580.P17285909169355561806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079652 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A053580.P17285909169355561806

noncomputable section

/-- A053580: Primes having only {0, 6, 8, 9} as digits.

Offset 1, canonical program `A053580.P17285909169355561806`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A053580 (n : ℕ) : ℤ :=
  (A053580.P17285909169355561806.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 753 terms. -/
def A053580.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A023743.P13743805731837612874

`∩[A045237(n+1), A045282(n+1)]`
-/

namespace A023743.P13743805731837612874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023743.P13743805731837612874

noncomputable section

/-- A023743: Base 5 expansion uses each positive digit just once.

Offset 1, canonical program `A023743.P13743805731837612874`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. -/
def A023743 (n : ℕ) : ℤ :=
  (A023743.P13743805731837612874.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 836 terms. -/
def A023743.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A116695.P7849105263678680230

`A023743(n+1)%5+5`
-/

namespace A116695.P7849105263678680230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023743 (n + 1)) 5 + 5

end

end A116695.P7849105263678680230

noncomputable section

/-- A116695: Digit not appearing in A116670(n).

Offset 1, canonical program `A116695.P7849105263678680230`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A116695 (n : ℕ) : ℤ :=
  A116695.P7849105263678680230.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A116695.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045242.P2725133411994737502

`∩[A023735(n+1), A039011(n+1)]`
-/

namespace A045242.P2725133411994737502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A045242.P2725133411994737502

noncomputable section

/-- A045242: Numbers whose base-5 representation contains exactly two 1's and two 3's.

Offset 1, canonical program `A045242.P2725133411994737502`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242 (n : ℕ) : ℤ :=
  (A045242.P2725133411994737502.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2979 terms. -/
def A045242.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A061896.P13759146978715815526

`A162514(A127739(n+1)-A130517(n+1))`
-/

namespace A061896.P13759146978715815526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162514 (A127739 (n + 1) - A130517 (n + 1)).toNat

end

end A061896.P13759146978715815526

noncomputable section

/-- A061896: Triangle of coefficients of Lucas polynomials.

Offset 0, canonical program `A061896.P13759146978715815526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9935 terms. -/
def A061896 (n : ℕ) : ℤ :=
  A061896.P13759146978715815526.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9935 terms. -/
def A061896.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244422.P380232244939802474

`A061896(n)*A062157(A002260(n+1))`
-/

namespace A244422.P380232244939802474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061896 n * A062157 (A002260 (n + 1)).toNat

end

end A244422.P380232244939802474

noncomputable section

/-- A244422: Quasi-Riordan triangle ((2-z)/(1-z), -z^2/(1-z)). Row reversed monic Chebyshev T-polynomials without vanishing columns.

Offset 0, canonical program `A244422.P380232244939802474`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244422 (n : ℕ) : ℤ :=
  A244422.P380232244939802474.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A244422.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039564.P6864717838563937078

`∩[A039009(n+1), A039011(n+1)]`
-/

namespace A039564.P6864717838563937078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039564.P6864717838563937078

noncomputable section

/-- A039564: Numbers whose base-5 representation has the same number of 0's, 1's and 3's.

Offset 1, canonical program `A039564.P6864717838563937078`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A039564 (n : ℕ) : ℤ :=
  (A039564.P6864717838563937078.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. -/
def A039564.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A039571.P14324908586718389656

`∩[A039011(n+1), A039012(n+1)]`
-/

namespace A039571.P14324908586718389656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039571.P14324908586718389656

noncomputable section

/-- A039571: Numbers whose base-5 representation has the same number of 1's, 3's and 4's.

Offset 1, canonical program `A039571.P14324908586718389656`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2776 terms. -/
def A039571 (n : ℕ) : ℤ :=
  (A039571.P14324908586718389656.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2776 terms. -/
def A039571.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A100218.P411736067323610886

`A244422(A061579(n))-char[∑[n]]`
-/

namespace A100218.P411736067323610886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244422 (A061579 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A100218.P411736067323610886

noncomputable section

/-- A100218: Riordan array ((1-2*x)/(1-x), (1-x)).

Offset 0, canonical program `A100218.P411736067323610886`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A100218 (n : ℕ) : ℤ :=
  A100218.P411736067323610886.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. -/
def A100218.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A098599.P12823978919337779786

`A097807(n)*A100218(n)`
-/

namespace A098599.P12823978919337779786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 n * A100218 n

end

end A098599.P12823978919337779786

noncomputable section

/-- A098599: Riordan array ((1+2*x)/(1+x), (1+x)).

Offset 0, canonical program `A098599.P12823978919337779786`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599 (n : ℕ) : ℤ :=
  A098599.P12823978919337779786.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A098599.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A231810.P5537344332030854373

`eq[2, gcd(2*n, A165886(n))]`
-/

namespace A231810.P5537344332030854373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * n : ℤ) (A165886 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A231810.P5537344332030854373

noncomputable section

/-- A231810: Numbers k such that p-1 does not divide k+1 for every prime divisor p of k.

Offset 1, canonical program `A231810.P5537344332030854373`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810 (n : ℕ) : ℤ :=
  (A231810.P5537344332030854373.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A231810.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A247492.P9749959557379015816

`and(-1, A098599(A007401(n+1)))`
-/

namespace A247492.P9749959557379015816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A098599 (A007401 (n + 1)).toNat)

end

end A247492.P9749959557379015816

noncomputable section

/-- A247492: Triangle read by rows: T(n, k) = binomial(k-1, n-k)*(n+1)/(n+1-k), 0 <= k <= n.

Offset 0, canonical program `A247492.P9749959557379015816`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492 (n : ℕ) : ℤ :=
  A247492.P9749959557379015816.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9860 terms. -/
def A247492.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353668.P16879900792343962685

`gcd(A017665(n+1), A351546(n+1))`
-/

namespace A353668.P16879900792343962685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017665 (n + 1)) (A351546 (n + 1))

end

end A353668.P16879900792343962685

noncomputable section

/-- A353668: a(n) = A351546(n) / gcd(n, A351546(n)).

Offset 1, canonical program `A353668.P16879900792343962685`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353668 (n : ℕ) : ℤ :=
  (A353668.P16879900792343962685.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353668.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A365425.P14764036953492507418

`A336158(A163511(n))`
-/

namespace A365425.P14764036953492507418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A163511 n).toNat

end

end A365425.P14764036953492507418

noncomputable section

/-- A365425: The least number with the prime signature of the odd part of A163511(n): a(n) = A046523(A000265(A163511(n))).

Offset 0, canonical program `A365425.P14764036953492507418`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365425 (n : ℕ) : ℤ :=
  A365425.P14764036953492507418.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A336158, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A365425.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A066669.P14009238441959775354

`eq[2, A336158(A000010(n+1))]+1`
-/

namespace A066669.P14009238441959775354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A066669.P14009238441959775354

noncomputable section

/-- A066669: Numbers m such that phi(m) = 2^k*prime for some k >= 0.

Offset 1, canonical program `A066669.P14009238441959775354`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A066669 (n : ℕ) : ℤ :=
  (A066669.P14009238441959775354.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4890 terms. -/
def A066669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066671.P7454510130020317280

`∑{e}[A000010(A066669(n+1)), A000203(2^#/2)]`
-/

namespace A066671.P7454510130020317280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A066669 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000203 (SequenceMachineLib.roundAway ((2 ^ Nat.factorization (f1 n).natAbs p : ℚ) / 2)).toNat

end

end A066671.P7454510130020317280

noncomputable section

/-- A066671: a(n) is the largest power of 2 that divides phi(A066669(n)).

Offset 1, canonical program `A066671.P7454510130020317280`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8031 terms. -/
def A066671 (n : ℕ) : ℤ :=
  A066671.P7454510130020317280.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8031 terms. -/
def A066671.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066672.P5992568165485167672

`log2(A066671(n+1))`
-/

namespace A066672.P5992568165485167672
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A066671 (n + 1) : ℝ)

end

end A066672.P5992568165485167672

noncomputable section

/-- A066672: Exponent of the largest power of 2 that divides phi(A066669(n)).

Offset 1, canonical program `A066672.P5992568165485167672`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066672 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A066672.P5992568165485167672.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A066671, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A066672.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A081863.P2129435876270539085

`4*A165886(2*n+1)`
-/

namespace A081863.P2129435876270539085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A165886 (2 * n + 1)

end

end A081863.P2129435876270539085

noncomputable section

/-- A081863: Largest integer m such that m divides (sigma_(2n+1)(2k-1)-sigma(2k-1)) for all k>=1.

Offset 1, canonical program `A081863.P2129435876270539085`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863 (n : ℕ) : ℤ :=
  A081863.P2129435876270539085.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1711 terms. -/
def A081863.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090002.P5610306916460533914

`A090001(2*n+1)%(n+1)`
-/

namespace A090002.P5610306916460533914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090001 (2 * n + 1)) (n + 1 : ℤ)

end

end A090002.P5610306916460533914

noncomputable section

/-- A090002: Length of longest contiguous block of 1's in binary expansion of n-th triangular number.

Offset 0, canonical program `A090002.P5610306916460533914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A090002 (n : ℕ) : ℤ :=
  A090002.P5610306916460533914.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. -/
def A090002.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090563.P10804829428092419224

`eq[6, A278247(A016861(n))]`
-/

namespace A090563.P10804829428092419224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 (A016861 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A090563.P10804829428092419224

noncomputable section

/-- A090563: Numbers k such that 5*k^2 + 5*k + 1 is prime.

Offset 1, canonical program `A090563.P10804829428092419224`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A090563 (n : ℕ) : ℤ :=
  (A090563.P10804829428092419224.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 622 terms. -/
def A090563.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097272.P835923418145014536

`A003961(A336158(n+1))*A006519(n+1)`
-/

namespace A097272.P835923418145014536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A336158 (n + 1)).toNat * A006519 (n + 1)

end

end A097272.P835923418145014536

noncomputable section

/-- A097272: Least integer with same "mod 2 prime signature" as n.

Offset 1, canonical program `A097272.P835923418145014536`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097272 (n : ℕ) : ℤ :=
  A097272.P835923418145014536.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A097272.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A097273.P7032480748002084221

`record[A097272(n+1)]`
-/

namespace A097273.P7032480748002084221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097273.P7032480748002084221

noncomputable section

/-- A097273: Least integer with each "mod 2 prime signature".

Offset 1, canonical program `A097273.P7032480748002084221`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A097273 (n : ℕ) : ℤ :=
  A097273.P7032480748002084221.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 269 terms. -/
def A097273.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A164713.P3719375188681482526

`∩[A164707(n+1), A164710(n+1)]`
-/

namespace A164713.P3719375188681482526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A164713.P3719375188681482526

noncomputable section

/-- A164713: A positive integer n is included if all runs of 0's in binary n are of the same length, and if all runs of 1's in binary n are of the same length.

Offset 1, canonical program `A164713.P3719375188681482526`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A164713 (n : ℕ) : ℤ :=
  (A164713.P3719375188681482526.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. -/
def A164713.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A175063.P16562978643772503991

`p?[A090563(n+1)]`
-/

namespace A175063.P16562978643772503991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A175063.P16562978643772503991

noncomputable section

/-- A175063: Primes p such that 5*p^2 + 5*p + 1 is also prime.

Offset 1, canonical program `A175063.P16562978643772503991`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A175063 (n : ℕ) : ℤ :=
  A175063.P16562978643772503991.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 986 terms. -/
def A175063.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A198194.P15362504229805961140

`ceil(log2(A194602(n)+2))`
-/

namespace A198194.P15362504229805961140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A194602 n + 2 : ℝ)⌉

end

end A198194.P15362504229805961140

noncomputable section

/-- A198194: Greatest number k such that p(k) <= n, p(k) being the number of unrestricted partitions of k.

Offset 1, canonical program `A198194.P15362504229805961140`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A198194 (n : ℕ) : ℤ :=
  A198194.P15362504229805961140.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. -/
def A198194.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A207034.P8925604942146623024

`A000120(A194602(n))`
-/

namespace A207034.P8925604942146623024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A194602 n).toNat

end

end A207034.P8925604942146623024

noncomputable section

/-- A207034: Sum of all parts minus the number of parts of the n-th partition in the list of colexicographically ordered partitions of j, if 1<=n<=A000041(j).

Offset 1, canonical program `A207034.P8925604942146623024`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207034 (n : ℕ) : ℤ :=
  A207034.P8925604942146623024.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A207034.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A207038.P5475274817156495551

`∑[A207034(n+1)]`
-/

namespace A207038.P5475274817156495551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A207038.P5475274817156495551

noncomputable section

/-- A207038: Partial sums of A207034.

Offset 1, canonical program `A207038.P5475274817156495551`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207038 (n : ℕ) : ℤ :=
  A207038.P5475274817156495551.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. -/
def A207038.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A228354.P14726846839078751284

`1+A194602(n)`
-/

namespace A228354.P14726846839078751284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A194602 n

end

end A228354.P14726846839078751284

noncomputable section

/-- A228354: Indices (k) of partitions in the list of compositions of j in colexicographic order, if 1<=k<=2^(j-1), j>=1.

Offset 1, canonical program `A228354.P14726846839078751284`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228354 (n : ℕ) : ℤ :=
  A228354.P14726846839078751284.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A194602, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A228354.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A243436.P14551498086480641049

`eq[6, A278247(n)]+2`
-/

namespace A243436.P14551498086480641049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278247 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A243436.P14551498086480641049

noncomputable section

/-- A243436: Numbers n such that n^2-n-1 is semiprime.

Offset 1, canonical program `A243436.P14551498086480641049`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4297 terms. -/
def A243436 (n : ℕ) : ℤ :=
  (A243436.P14551498086480641049.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4297 terms. -/
def A243436.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246371.P17114430255588952170

`eq[1, char[A048673(A246282(n+1))]]`
-/

namespace A246371.P17114430255588952170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (A246282 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A246371.P17114430255588952170

noncomputable section

/-- A246371: Numbers n such that, if 2n-1 = Product_{k >= 1} (p_k)^(c_k) then n > Product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246371.P17114430255588952170`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. -/
def A246371 (n : ℕ) : ℤ :=
  (A246371.P17114430255588952170.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. -/
def A246371.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246372.P14485746059007903176

`eq[char[A246371(n+1)], A000007(n)]`
-/

namespace A246372.P14485746059007903176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A246372.P14485746059007903176

noncomputable section

/-- A246372: Numbers n such that 2n-1 = product_{k >= 1} (p_k)^(c_k), then n <= product_{k >= 1} (p_{k-1})^(c_k), where p_k indicates the k-th prime, A000040(k).

Offset 1, canonical program `A246372.P14485746059007903176`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6980 terms. -/
def A246372 (n : ℕ) : ℤ :=
  (A246372.P14485746059007903176.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6980 terms. -/
def A246372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246373.P10250968539175568684

`p?[A246372(n+1)]`
-/

namespace A246373.P10250968539175568684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246372 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246373.P10250968539175568684

noncomputable section

/-- A246373: Primes p such that if 2p-1 = product_{k >= 1} A000040(k)^(c_k), then p <= product_{k >= 1} A000040(k-1)^(c_k).

Offset 1, canonical program `A246373.P10250968539175568684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A246373 (n : ℕ) : ℤ :=
  A246373.P10250968539175568684.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 971 terms. -/
def A246373.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A246374.P3655400840395935868

`p?[A246371(n+1)]`
-/

namespace A246374.P3655400840395935868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246371 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A246374.P3655400840395935868

noncomputable section

/-- A246374: Primes p such that if 2p-1 = product_{k >= 1} A000040(k)^(c_k), then p > product_{k >= 1} A000040(k-1)^(c_k).

Offset 1, canonical program `A246374.P3655400840395935868`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. -/
def A246374 (n : ℕ) : ℤ :=
  A246374.P3655400840395935868.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1509 terms. -/
def A246374.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252742.P4945266311617896966

`char[A246282(n+1)-1]`
-/

namespace A252742.P4945266311617896966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246282 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A252742.P4945266311617896966

noncomputable section

/-- A252742: Characteristic function of A246282: if A003961(n) > 2*n, then a(n) = 1, otherwise 0 (when A003961(n) < 2*n) [where A003961(n) shifts the prime factorization of n one step towards larger primes].

Offset 1, canonical program `A252742.P4945266311617896966`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742 (n : ℕ) : ℤ :=
  (A252742.P4945266311617896966.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A252742.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A252743.P13320950522193927286

`A252742(A005940(1+n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252743.P13320950522193927286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A005940 (1 + n)).toNat

end

end A252743.P13320950522193927286

noncomputable section

/-- A252743: a(n) = A252742(A005940(1+n)).

Offset 0, canonical program `A252743.P13320950522193927286`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743 (n : ℕ) : ℤ :=
  A252743.P13320950522193927286.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005940, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252743.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A252744.P2309875151662509228

`A252742(A163511(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A252744.P2309875151662509228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (A163511 n).toNat

end

end A252744.P2309875151662509228

noncomputable section

/-- A252744: a(n) = A252742(A163511(n)).

Offset 0, canonical program `A252744.P2309875151662509228`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744 (n : ℕ) : ℤ :=
  A252744.P2309875151662509228.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163511, A252742, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A252744.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A278531.P8878426941925788754

`A365425(Δ[n²])`
-/

namespace A278531.P8878426941925788754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365425 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A278531.P8878426941925788754

noncomputable section

/-- A278531: a(n) = A046523(A163511(n)).

Offset 0, canonical program `A278531.P8878426941925788754`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A278531 (n : ℕ) : ℤ :=
  A278531.P8878426941925788754.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8193 terms. -/
def A278531.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A278541.P12391541813226285379

`A278542(A006068(n))`
-/

namespace A278541.P12391541813226285379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 (A006068 n).toNat

end

end A278541.P12391541813226285379

noncomputable section

/-- A278541: a(n) = A046523(A209636(n)).

Offset 0, canonical program `A278541.P12391541813226285379`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A278541 (n : ℕ) : ℤ :=
  A278541.P12391541813226285379.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 512 terms. -/
def A278541.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296078.P16065855527637066247

`A336158(or(1, (n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1))`
-/

namespace A296078.P16065855527637066247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (Int.lor 1 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1))).toNat

end

end A296078.P16065855527637066247

noncomputable section

/-- A296078: Least number with the same prime signature as 1+phi(n), where phi = A000010, Euler totient function.

Offset 1, canonical program `A296078.P16065855527637066247`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296078 (n : ℕ) : ℤ :=
  A296078.P16065855527637066247.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296078.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A317090.P7766574012939801174

`A179983(n+2)%A033581(A000124(n))`
-/

namespace A317090.P7766574012939801174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A179983 (n + 2)) (A033581 (A000124 n).toNat)

end

end A317090.P7766574012939801174

noncomputable section

/-- A317090: Positive integers whose prime multiplicities span an initial interval of positive integers.

Offset 1, canonical program `A317090.P7766574012939801174`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A317090 (n : ℕ) : ℤ :=
  A317090.P7766574012939801174.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 141 terms. -/
def A317090.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324315.P9811049742416120777

`∩[A295102(n+1), A324457(n+1)]`
-/

namespace A324315.P9811049742416120777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324457 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A324315.P9811049742416120777

noncomputable section

/-- A324315: Squarefree integers m > 1 such that if prime p divides m, then the sum of the base p digits of m is at least p.

Offset 1, canonical program `A324315.P9811049742416120777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315 (n : ℕ) : ℤ :=
  (A324315.P9811049742416120777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. -/
def A324315.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A324912.P11292879792809766893

`A000120(A324910(n+1))`
-/

namespace A324912.P11292879792809766893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324910 (n + 1)).toNat

end

end A324912.P11292879792809766893

noncomputable section

/-- A324912: Binary weight of A324911(n).

Offset 1, canonical program `A324912.P11292879792809766893`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324912 (n : ℕ) : ℤ :=
  A324912.P11292879792809766893.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A324912.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A326578.P13322029343180356668

`(n+1)*A326478(n+1)`
-/

namespace A326578.P13322029343180356668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A326478 (n + 1)

end

end A326578.P13322029343180356668

noncomputable section

/-- A326578: a(n) = n^2*denominator(n*Bernoulli(n-1))/denominator(Bernoulli(n-1)) = n*A326478(n).

Offset 1, canonical program `A326578.P13322029343180356668`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326578 (n : ℕ) : ℤ :=
  A326578.P13322029343180356668.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A326578.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333634.P7484277541955402539

`eq[1, A135481(A324910(n+1))]+1`
-/

namespace A333634.P7484277541955402539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135481 (A324910 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A333634.P7484277541955402539

noncomputable section

/-- A333634: Numbers with an even number of non-unitary prime divisors.

Offset 1, canonical program `A333634.P7484277541955402539`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333634 (n : ℕ) : ℤ :=
  (A333634.P7484277541955402539.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336223.P2667989203815519279

`record[A056192(A333634(n+1))]`
-/

namespace A336223.P2667989203815519279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056192 (A333634 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A336223.P2667989203815519279

noncomputable section

/-- A336223: Numbers k such that the largest square dividing k is a unitary divisor of k and its square root has an even number of distinct prime divisors.

Offset 1, canonical program `A336223.P2667989203815519279`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A336223 (n : ℕ) : ℤ :=
  A336223.P2667989203815519279.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6383 terms. -/
def A336223.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336847.P10873545021579543233

`A003973(n+1)-A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336847.P10873545021579543233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003973 (n + 1) - A336846 (n + 1)

end

end A336847.P10873545021579543233

noncomputable section

/-- A336847: a(n) = A003973(n) - A336846(n).

Offset 1, canonical program `A336847.P10873545021579543233`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847 (n : ℕ) : ℤ :=
  A336847.P10873545021579543233.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336847.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336848.P11409207554523116840

`A003973(n+1)/A336846(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A336848.P11409207554523116840
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A336848.P11409207554523116840

noncomputable section

/-- A336848: a(n) = A003973(n) / A336846(n).

Offset 1, canonical program `A336848.P11409207554523116840`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336848.P11409207554523116840.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336848.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A336849.P2568892509295824455

`A003961(n+1)/gcd(A003961(n+1), A336846(n+1))`
-/

namespace A336849.P2568892509295824455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (Int.gcd (A003961 (n + 1)) (A336846 (n + 1)) : ℚ)

end

end A336849.P2568892509295824455

noncomputable section

/-- A336849: a(n) = A003961(n) / gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336849.P2568892509295824455`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336849 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336849.P2568892509295824455.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A336849.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336850.P16673548737057657194

`A003961(n+1)/A336849(n+1)`
-/

namespace A336850.P16673548737057657194
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) : ℚ) / (A336849 (n + 1) : ℚ)

end

end A336850.P16673548737057657194

noncomputable section

/-- A336850: a(n) = gcd(A003961(n), sigma(A003961(n))), where A003961 is the prime shift towards larger primes.

Offset 1, canonical program `A336850.P16673548737057657194`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336849, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336850 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A336850.P16673548737057657194.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A336849, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336850.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337345.P452848330989781457

`∑{d}[n+1, A252742(#)]`
-/

namespace A337345.P452848330989781457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A252742 d

end

end A337345.P452848330989781457

noncomputable section

/-- A337345: Number of divisors d of n for which A003961(d) > 2*d, where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A337345.P452848330989781457`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337345 (n : ℕ) : ℤ :=
  A337345.P452848330989781457.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A337345.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A337346.P2412165337189814597

`A337345(n+1)-A252742(n+1)`
-/

namespace A337346.P2412165337189814597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A252742 (n + 1)

end

end A337346.P2412165337189814597

noncomputable section

/-- A337346: Number of proper divisors d of n for which A003961(d) > 2*d.

Offset 1, canonical program `A337346.P2412165337189814597`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346 (n : ℕ) : ℤ :=
  A337346.P2412165337189814597.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A337346.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A337372.P8743427394411133788

`eq[1, A337345(n+1)]+1`
-/

namespace A337372.P8743427394411133788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A337372.P8743427394411133788

noncomputable section

/-- A337372: Primitively primeshift-abundant numbers: Numbers that are included in A246282 (k with A003961(k) > 2k), but none of whose proper divisors are.

Offset 1, canonical program `A337372.P8743427394411133788`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372 (n : ℕ) : ℤ :=
  (A337372.P8743427394411133788.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 580 terms. -/
def A337372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338539.P1686285935933793053

`∩[A013929(n+1), A333634(n+1)]`
-/

namespace A338539.P1686285935933793053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333634 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338539.P1686285935933793053

noncomputable section

/-- A338539: Numbers having exactly two non-unitary prime factors.

Offset 1, canonical program `A338539.P1686285935933793053`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A338539 (n : ℕ) : ℤ :=
  (A338539.P1686285935933793053.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 805 terms. -/
def A338539.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341519.P6611725125175851949

`∑{e}[A336850(n+1), #]`
-/

namespace A341519.P6611725125175851949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336850 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A341519.P6611725125175851949

noncomputable section

/-- A341519: Number of prime factors (with multiplicity) shared by A003961(n) and A003973(n): a(n) = bigomega(gcd(A003961(n), sigma(A003961(n)))).

Offset 1, canonical program `A341519.P6611725125175851949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341519 (n : ℕ) : ℤ :=
  (A341519.P6611725125175851949.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341519.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341525.P15392502099217950436

`A003973(n+1)/A336850(n+1)`
-/

namespace A341525.P15392502099217950436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003973 (n + 1) : ℚ) / (A336850 (n + 1) : ℚ)

end

end A341525.P15392502099217950436

noncomputable section

/-- A341525: Numerator of A003973(n) / A003961(n).

Offset 1, canonical program `A341525.P15392502099217950436`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341525 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A341525.P15392502099217950436.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003973, A336850, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341525.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341609.P17617703652232455812

`A063524(A337345(n+1))`
-/

namespace A341609.P17617703652232455812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A337345 (n + 1)).toNat

end

end A341609.P17617703652232455812

noncomputable section

/-- A341609: Characteristic function of A337372: a(n) = 1 if A337345(n) = 1, otherwise 0.

Offset 1, canonical program `A341609.P17617703652232455812`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609 (n : ℕ) : ℤ :=
  A341609.P17617703652232455812.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341609.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341610.P5143080572522452525

`lt[1, A337345(n+1)]+1`
-/

namespace A341610.P5143080572522452525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341610.P5143080572522452525

noncomputable section

/-- A341610: Nonprimitive terms of A246282: numbers k that have more than one divisor d|k such that A003961(d) > 2*d.

Offset 1, canonical program `A341610.P5143080572522452525`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610 (n : ℕ) : ℤ :=
  (A341610.P5143080572522452525.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341610.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341611.P12776634837953420456

`filter[A341610(n+1), A294935(#)]`
-/

namespace A341611.P12776634837953420456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341610 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294935 (f1 j).toNat = 1) n)

end

end A341611.P12776634837953420456

noncomputable section

/-- A341611: Nonabundant numbers that are not primitive terms of A246282.

Offset 1, canonical program `A341611.P12776634837953420456`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5196 terms. -/
def A341611 (n : ℕ) : ℤ :=
  A341611.P12776634837953420456.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5196 terms. -/
def A341611.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341612.P3068073104531840485

`A252742(n+1)*A294935(n+1)`
-/

namespace A341612.P3068073104531840485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294935 (n + 1)

end

end A341612.P3068073104531840485

noncomputable section

/-- A341612: Characteristic function of A341614: a(n) = 1 if sigma(n) <= 2n < A003961(n), 0 otherwise.

Offset 1, canonical program `A341612.P3068073104531840485`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612 (n : ℕ) : ℤ :=
  A341612.P3068073104531840485.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294935, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341612.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341613.P13588315821913618762

`A252742(n+1)*A294934(n+1)`
-/

namespace A341613.P13588315821913618762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252742 (n + 1) * A294934 (n + 1)

end

end A341613.P13588315821913618762

noncomputable section

/-- A341613: Characteristic function for A341615: a(n) = 1 if sigma(n) < 2n < A003961(n), otherwise 0.

Offset 1, canonical program `A341613.P13588315821913618762`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613 (n : ℕ) : ℤ :=
  A341613.P13588315821913618762.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A252742, A294934, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A341613.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A341614.P8767637196583140370

`lt[0, A341612(n+1)]+1`
-/

namespace A341614.P8767637196583140370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341612 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341614.P8767637196583140370

noncomputable section

/-- A341614: Numbers k such that sigma(k) <= 2k < A003961(k).

Offset 1, canonical program `A341614.P8767637196583140370`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614 (n : ℕ) : ℤ :=
  (A341614.P8767637196583140370.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341614.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A341615.P5668791556833203135

`lt[0, A341613(n+1)]+1`
-/

namespace A341615.P5668791556833203135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341613 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A341615.P5668791556833203135

noncomputable section

/-- A341615: Numbers k for which sigma(k) < 2k < A003961(k).

Offset 1, canonical program `A341615.P5668791556833203135`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615 (n : ℕ) : ℤ :=
  (A341615.P5668791556833203135.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A341615.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A348509.P16647937166032452255

`A336845(n+1)/A336846(n+1)`
-/

namespace A348509.P16647937166032452255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336845 (n + 1) : ℚ) / (A336846 (n + 1) : ℚ)

end

end A348509.P16647937166032452255

noncomputable section

/-- A348509: a(n) is the numerator of the harmonic mean of the divisors of A003961(n).

Offset 1, canonical program `A348509.P16647937166032452255`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336845, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348509.P16647937166032452255.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336845, A336846, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A348509.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A348990.P9008814680679274139

`(n+1)/A322361(n+1)`
-/

namespace A348990.P9008814680679274139
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A322361 (n + 1) : ℚ)

end

end A348990.P9008814680679274139

noncomputable section

/-- A348990: a(n) = n / gcd(n, A003961(n)), where A003961(n) is fully multiplicative function with a(prime(k)) = prime(k+1).

Offset 1, canonical program `A348990.P9008814680679274139`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348990 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A348990.P9008814680679274139.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A348990.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349389.P17688454280443951021

`A349387(n+1)+A349388(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A349389.P17688454280443951021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349387 (n + 1) + A349388 (n + 1)

end

end A349389.P17688454280443951021

noncomputable section

/-- A349389: a(n) = A349387(n) + A349388(n).

Offset 1, canonical program `A349389.P17688454280443951021`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389 (n : ℕ) : ℤ :=
  A349389.P17688454280443951021.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A349387, A349388, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A349389.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A349633.P10035930798907062347

`lcm(n+1, A349387(n+1))/(n+1)`
-/

namespace A349633.P10035930798907062347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (A349387 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A349633.P10035930798907062347

noncomputable section

/-- A349633: Numerators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349633.P10035930798907062347`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349633.P10035930798907062347.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349633.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A349634.P1580182829586287684

`(n+1)/gcd(n+1, A349387(n+1))`
-/

namespace A349634.P1580182829586287684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd (n + 1 : ℤ) (A349387 (n + 1)) : ℚ)

end

end A349634.P1580182829586287684

noncomputable section

/-- A349634: Denominators of the Möbius transform of ratio A003961(n)/n.

Offset 1, canonical program `A349634.P1580182829586287684`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A349634.P1580182829586287684.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A349634.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350372.P2646849622102892745

`∩[A033992(n+1), A338539(n+1)]`
-/

namespace A350372.P2646849622102892745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033992 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350372.P2646849622102892745

noncomputable section

/-- A350372: Numbers with exactly 5 semiprime divisors.

Offset 1, canonical program `A350372.P2646849622102892745`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372 (n : ℕ) : ℤ :=
  (A350372.P2646849622102892745.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 877 terms. -/
def A350372.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A350375.P15315086322075171755

`∩[A200521(n+1), A338539(n+1)]`
-/

namespace A350375.P15315086322075171755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A350375.P15315086322075171755

noncomputable section

/-- A350375: Numbers with exactly 8 semiprime divisors.

Offset 1, canonical program `A350375.P15315086322075171755`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A350375 (n : ℕ) : ℤ :=
  (A350375.P15315086322075171755.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2065 terms. -/
def A350375.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A352954.P6065376693423034420

`p?[5*A090563(n+1)+1]`
-/

namespace A352954.P6065376693423034420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A090563 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A352954.P6065376693423034420

noncomputable section

/-- A352954: Primes p such that (p^2+3*p+1)/5 is prime.

Offset 1, canonical program `A352954.P6065376693423034420`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A352954 (n : ℕ) : ℤ :=
  A352954.P6065376693423034420.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1081 terms. -/
def A352954.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A353666.P4041480978844553922

`A351546(n+1)/A353668(n+1)`
-/

namespace A353666.P4041480978844553922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351546 (n + 1) : ℚ) / (A353668 (n + 1) : ℚ)

end

end A353666.P4041480978844553922

noncomputable section

/-- A353666: a(n) = gcd(n, A351546(n)).

Offset 1, canonical program `A353666.P4041480978844553922`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, A353668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353666 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353666.P4041480978844553922.a (n - 1))

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A351546, A353668, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A353666.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A353667.P4254365963197736758

`(n+1)/A353666(n+1)`
-/

namespace A353667.P4254365963197736758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A353666 (n + 1) : ℚ)

end

end A353667.P4254365963197736758

noncomputable section

/-- A353667: a(n) = n / gcd(n, A351546(n)).

Offset 1, canonical program `A353667.P4254365963197736758`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353667 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A353667.P4254365963197736758.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A353667.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355940.P3503418342827386624

`A063524(A355934(n+1))`
-/

namespace A355940.P3503418342827386624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A355934 (n + 1)).toNat

end

end A355940.P3503418342827386624

noncomputable section

/-- A355940: a(n) = 1 if A003973(n) is a multiple of A000203(n), otherwise 0.

Offset 1, canonical program `A355940.P3503418342827386624`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940 (n : ℕ) : ℤ :=
  A355940.P3503418342827386624.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A355940.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355941.P5058088448507230669

`eq[1, A355940(n+1)]+1`
-/

namespace A355941.P5058088448507230669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355940 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A355941.P5058088448507230669

noncomputable section

/-- A355941: Numbers k such that A003973(k) is a multiple of A000203(k).

Offset 1, canonical program `A355941.P5058088448507230669`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941 (n : ℕ) : ℤ :=
  (A355941.P5058088448507230669.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. -/
def A355941.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356171.P6250134263903768860

`record[A348990(2*n+1)]`
-/

namespace A356171.P6250134263903768860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A356171.P6250134263903768860

noncomputable section

/-- A356171: Odd numbers that are not divisible by two consecutive prime numbers.

Offset 1, canonical program `A356171.P6250134263903768860`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8820 terms. -/
def A356171 (n : ℕ) : ℤ :=
  A356171.P6250134263903768860.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8820 terms. -/
def A356171.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356172.P14535632436545949521

`char[A356171(n+1)-1]`
-/

namespace A356172.P14535632436545949521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356171 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A356172.P14535632436545949521

noncomputable section

/-- A356172: a(n) = 1 if n is odd and not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356172.P14535632436545949521`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356172 (n : ℕ) : ℤ :=
  (A356172.P14535632436545949521.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356172.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356733.P18196638472405068736

`A287170(n+1)-A287170(A322361(n+1))`
-/

namespace A356733.P18196638472405068736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (n + 1) - A287170 (A322361 (n + 1)).toNat

end

end A356733.P18196638472405068736

noncomputable section

/-- A356733: Number of neighborless parts in the integer partition with Heinz number n.

Offset 1, canonical program `A356733.P18196638472405068736`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356733 (n : ℕ) : ℤ :=
  A356733.P18196638472405068736.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356733.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356735.P13560131192145601515

`∑{p}[n+1, gcd(n, #)]-A356733(n+1)`
-/

namespace A356735.P13560131192145601515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p : ℕ) : ℤ) - A356733 (n + 1)

end

end A356735.P13560131192145601515

noncomputable section

/-- A356735: Number of distinct parts that have neighbors in the integer partition with Heinz number n.

Offset 1, canonical program `A356735.P13560131192145601515`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356735 (n : ℕ) : ℤ :=
  A356735.P13560131192145601515.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A356735.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A358217.P740377184384627588

`A087436(A348990(n+1))`
-/

namespace A358217.P740377184384627588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (A348990 (n + 1)).toNat

end

end A358217.P740377184384627588

noncomputable section

/-- A358217: Number of prime factors (with multiplicity) in A319627(n).

Offset 1, canonical program `A358217.P740377184384627588`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358217 (n : ℕ) : ℤ :=
  A358217.P740377184384627588.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A358217.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A361466.P13131724063174196272

`A209229(A341525(n+1))`
-/

namespace A361466.P13131724063174196272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A341525 (n + 1)).toNat

end

end A361466.P13131724063174196272

noncomputable section

/-- A361466: a(n) = 1 if A017665(A003961(n)) is a power of 2, otherwise 0. Here A017665 is the numerator of the sum of the reciprocals of the divisors of n, and A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A361466.P13131724063174196272`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466 (n : ℕ) : ℤ :=
  A361466.P13131724063174196272.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A209229, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361466.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361468.P13904550128284942999

`A336849(n+1)*A341525(n+1)`
-/

namespace A361468.P13904550128284942999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336849 (n + 1) * A341525 (n + 1)

end

end A361468.P13904550128284942999

noncomputable section

/-- A361468: a(n) = A249670(A003961(n)).

Offset 1, canonical program `A361468.P13904550128284942999`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336849, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468 (n : ℕ) : ℤ :=
  A361468.P13904550128284942999.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A336849, A341525, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A361468.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A361469.P6204931458790545730

`A001222(A336849(n+1))+A001222(A341525(n+1))`
-/

namespace A361469.P6204931458790545730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336849 (n + 1)).toNat + A001222 (A341525 (n + 1)).toNat

end

end A361469.P6204931458790545730

noncomputable section

/-- A361469: a(n) = bigomega(A249670(A003961(n))).

Offset 1, canonical program `A361469.P6204931458790545730`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A361469 (n : ℕ) : ℤ :=
  A361469.P6204931458790545730.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2047 terms. -/
def A361469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A366279.P1626075147796417593

`A278531(A057889(n))`
-/

namespace A366279.P1626075147796417593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278531 (A057889 n).toNat

end

end A366279.P1626075147796417593

noncomputable section

/-- A366279: The least number with same prime signature as A366275, where A366275(n) = A163511(A057889(n)).

Offset 0, canonical program `A366279.P1626075147796417593`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A278531, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366279 (n : ℕ) : ℤ :=
  A366279.P1626075147796417593.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057889, A278531, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A366279.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A372565.P13754156096294323452

`gcd(n+1, A326057(n+1))`
-/

namespace A372565.P13754156096294323452
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A326057 (n + 1))

end

end A372565.P13754156096294323452

noncomputable section

/-- A372565: a(n) is the greatest common divisor of n, sigma(n) and A003961(n), where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372565.P13754156096294323452`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565 (n : ℕ) : ℤ :=
  (A372565.P13754156096294323452.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A372565.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372566.P10239918502240805923

`lt[1, A372565(n+1)]+1`
-/

namespace A372566.P10239918502240805923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372565 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A372566.P10239918502240805923

noncomputable section

/-- A372566: Numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372566.P10239918502240805923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566 (n : ℕ) : ℤ :=
  (A372566.P10239918502240805923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8327 terms. -/
def A372566.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A372567.P7755214078718572914

`∩[A333326(n+1), A372566(n+1)]`
-/

namespace A372567.P7755214078718572914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A372567.P7755214078718572914

noncomputable section

/-- A372567: Odd numbers k such that k, sigma(k) and A003961(k) have a common divisor larger than 1, where A003961(n) is fully multiplicative function with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A372567.P7755214078718572914`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A372567 (n : ℕ) : ℤ :=
  (A372567.P7755214078718572914.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 693 terms. -/
def A372567.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A375144.P11032156288611190920

`filter[A338539(n+1), A212793(#)]`
-/

namespace A375144.P11032156288611190920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A375144.P11032156288611190920

noncomputable section

/-- A375144: Numbers whose prime factorization has exactly two exponents that equal 2 and has no higher exponents.

Offset 1, canonical program `A375144.P11032156288611190920`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144 (n : ℕ) : ℤ :=
  A375144.P11032156288611190920.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2211 terms. -/
def A375144.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378606.P1824987261939307766

`∑{d}[n+1, A008683(#)*A349387((n+1)/#)]`
-/

namespace A378606.P1824987261939307766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A349387 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A378606.P1824987261939307766

noncomputable section

/-- A378606: Dirichlet convolution of A046692 and A003961, where A046692 is the Dirichlet inverse of sigma, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A378606.P1824987261939307766`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606 (n : ℕ) : ℤ :=
  A378606.P1824987261939307766.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A378606.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378658.P13927000025378427146

`A337345(filter[A103288(n+1), A294930(#)])`
-/

namespace A378658.P13927000025378427146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (f1 (SequenceMachineLib.nth (fun j => A294930 (f1 j).toNat = 1) n)).toNat

end

end A378658.P13927000025378427146

noncomputable section

/-- A378658: a(n) = A337345(A091191(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A091191 lists the primitive abundant numbers.

Offset 1, canonical program `A378658.P13927000025378427146`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658 (n : ℕ) : ℤ :=
  A378658.P13927000025378427146.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. -/
def A378658.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A378662.P5838969480774769283

`A337345(n+1)-A080224(n+1)`
-/

namespace A378662.P5838969480774769283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (n + 1) - A080224 (n + 1)

end

end A378662.P5838969480774769283

noncomputable section

/-- A378662: Number of divisors d of n such that sigma(d) <= 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378662.P5838969480774769283`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378662 (n : ℕ) : ℤ :=
  A378662.P5838969480774769283.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080224, A337345, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378662.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A378663.P6986709549582363223

`A378662(n+1)-A080225(n+1)`
-/

namespace A378663.P6986709549582363223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378662 (n + 1) - A080225 (n + 1)

end

end A378663.P6986709549582363223

noncomputable section

/-- A378663: Number of divisors d of n such that sigma(d) < 2*d < A003961(d), where A003961 is fully multiplicative with a(p) = nextprime(p).

Offset 1, canonical program `A378663.P6986709549582363223`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663 (n : ℕ) : ℤ :=
  A378663.P6986709549582363223.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A080225, A378662, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A378663.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379475.P17972878585057408840

`A008454(n)%A372565(n+1)`
-/

namespace A379475.P17972878585057408840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008454 n) (A372565 (n + 1))

end

end A379475.P17972878585057408840

noncomputable section

/-- A379475: a(n) = 1 if A372565(n) > 1, otherwise 0, where A372565(n) is the greatest common divisor of n, sigma(n) and A003961(n).

Offset 1, canonical program `A379475.P17972878585057408840`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475 (n : ℕ) : ℤ :=
  A379475.P17972878585057408840.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379475.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379476.P18000588626381920064

`A008949(A048298(n))%A326057(n+1)`
-/

namespace A379476.P18000588626381920064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008949 (A048298 n).toNat) (A326057 (n + 1))

end

end A379476.P18000588626381920064

noncomputable section

/-- A379476: a(n) = 1 if A326057(n) > 1, otherwise 0, where A326057(n) = gcd(A003961(n)-2n, A003961(n)-sigma(n)).

Offset 1, canonical program `A379476.P18000588626381920064`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476 (n : ℕ) : ℤ :=
  A379476.P18000588626381920064.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379476.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379477.P18262352817358248504

`eq[1, A379476(n+1)]+1`
-/

namespace A379477.P18262352817358248504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379477.P18262352817358248504

noncomputable section

/-- A379477: Numbers k such that A003961(k)-2k and A003961(k)-sigma(k) have a common divisor > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1), and sigma is the sum of divisors function.

Offset 1, canonical program `A379477.P18262352817358248504`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477 (n : ℕ) : ℤ :=
  (A379477.P18262352817358248504.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379477.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379478.P7624876134946239236

`A379476(n+1)-A379475(n+1)`
-/

namespace A379478.P7624876134946239236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379476 (n + 1) - A379475 (n + 1)

end

end A379478.P7624876134946239236

noncomputable section

/-- A379478: a(n) = 1 if the greatest common divisor of n, sigma(n) and A003961(n) is 1 and gcd(A003961(n)-2n, A003961(n)-sigma(n)) > 1, otherwise 0.

Offset 1, canonical program `A379478.P7624876134946239236`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478 (n : ℕ) : ℤ :=
  A379478.P7624876134946239236.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A379475, A379476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A379478.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379479.P310701363561203726

`eq[1, A379478(n+1)]+1`
-/

namespace A379479.P310701363561203726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379478 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A379479.P310701363561203726

noncomputable section

/-- A379479: Numbers k such that the greatest common divisor of k, sigma(k) and A003961(k) is 1 and gcd(A003961(k)-2k, A003961(k)-sigma(k)) > 1.

Offset 1, canonical program `A379479.P310701363561203726`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479 (n : ℕ) : ℤ :=
  (A379479.P310701363561203726.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4816 terms. -/
def A379479.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A387707.P1369852853517030567

`A337345(A023196(n+1))`
-/

namespace A387707.P1369852853517030567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337345 (A023196 (n + 1)).toNat

end

end A387707.P1369852853517030567

noncomputable section

/-- A387707: a(n) = A337345(A023196(n)), where A337345 is the number of divisors d of n for which A003961(d) > 2*d, and A023196 lists the nondeficient numbers, numbers k such that sigma(k) >= 2*k.

Offset 1, canonical program `A387707.P1369852853517030567`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387707 (n : ℕ) : ℤ :=
  A387707.P1369852853517030567.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A387707.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A389077.P12803926139365199002

`A389076(n+1)-A003961(n+1)`
-/

namespace A389077.P12803926139365199002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389076 (n + 1) - A003961 (n + 1)

end

end A389077.P12803926139365199002

noncomputable section

/-- A389077: Sum of all other proper divisors of primeshifted n except its squarefree part: a(n) = A001065(A003961(n)) - A007913(A003961(n)).

Offset 1, canonical program `A389077.P12803926139365199002`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A389076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389077 (n : ℕ) : ℤ :=
  A389077.P12803926139365199002.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A389076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A389077.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A025488.P8823239610225918462

`A085089(2^n)`
-/

namespace A025488.P8823239610225918462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (2 ^ n)

end

end A025488.P8823239610225918462

noncomputable section

/-- A025488: Number of distinct prime signatures of the positive integers up to 2^n.

Offset 0, canonical program `A025488.P8823239610225918462`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025488 (n : ℕ) : ℤ :=
  A025488.P8823239610225918462.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A085089, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A025488.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037864.P18080796445639344832

`A037865(A037465(n+1))`
-/

namespace A037864.P18080796445639344832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037865 (A037465 (n + 1)).toNat

end

end A037864.P18080796445639344832

noncomputable section

/-- A037864: a(n)=(number of digits <=2)-(number of digits >2) in base 5 representation of n.

Offset 1, canonical program `A037864.P18080796445639344832`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A037864 (n : ℕ) : ℤ :=
  A037864.P18080796445639344832.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4299 terms. -/
def A037864.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A043277.P4229213591346107339

`A043276(A371256(n+1))`
-/

namespace A043277.P4229213591346107339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043276 (A371256 (n + 1)).toNat

end

end A043277.P4229213591346107339

noncomputable section

/-- A043277: Maximal run length in base 3 representation of n.

Offset 1, canonical program `A043277.P4229213591346107339`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A043277 (n : ℕ) : ℤ :=
  A043277.P4229213591346107339.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6561 terms. -/
def A043277.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A055023.P7667312312823169429

`gcd(A164869(A326584(n+1)), A326691(n+1))`
-/

namespace A055023.P7667312312823169429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164869 (A326584 (n + 1)).toNat) (A326691 (n + 1))

end

end A055023.P7667312312823169429

noncomputable section

/-- A055023: a(n) = n/A055032(n).

Offset 1, canonical program `A055023.P7667312312823169429`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A055023 (n : ℕ) : ℤ :=
  (A055023.P7667312312823169429.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1288 terms. -/
def A055023.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056099.P15875946763897410179

`abs(Δ[A025488(abs(1-n))])`
-/

namespace A056099.P15875946763897410179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025488 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A056099.P15875946763897410179

noncomputable section

/-- A056099: First differences of A025488 (binary order for least prime signatures).

Offset 0, canonical program `A056099.P15875946763897410179`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A056099 (n : ℕ) : ℤ :=
  A056099.P15875946763897410179.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 238 terms. -/
def A056099.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A087325.P922682676817335169

`eq[A097272(A061601(n+1)+1), A097272(n+1)]+1`
-/

namespace A087325.P922682676817335169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (A061601 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A087325.P922682676817335169

noncomputable section

/-- A087325: Numbers k such that k and its 10's complement both have the same prime signature.

Offset 1, canonical program `A087325.P922682676817335169`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A087325 (n : ℕ) : ℤ :=
  (A087325.P922682676817335169.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2359 terms. -/
def A087325.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A090562.P2628072817141354298

`A062786(A090563(n+1)+1)`
-/

namespace A090562.P2628072817141354298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062786 (A090563 (n + 1) + 1).toNat

end

end A090562.P2628072817141354298

noncomputable section

/-- A090562: Primes of the form 5k^2 + 5k + 1.

Offset 1, canonical program `A090562.P2628072817141354298`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A090562 (n : ℕ) : ℤ :=
  A090562.P2628072817141354298.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2468 terms. -/
def A090562.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A141285.P14109333397254872777

`val(A194602(n)+1, 2)+1`
-/

namespace A141285.P14109333397254872777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A194602 n + 1).toNat 2 + 1

end

end A141285.P14109333397254872777

noncomputable section

/-- A141285: Largest part of the n-th partition of j in the list of colexicographically ordered partitions of j, if 1 <= n <= A000041(j).

Offset 1, canonical program `A141285.P14109333397254872777`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A141285 (n : ℕ) : ℤ :=
  (A141285.P14109333397254872777.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A141285.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A157261.P4017168066649199223

`A141285(A185170(A006519(n+1)))`
-/

namespace A157261.P4017168066649199223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (A185170 (A006519 (n + 1)).toNat).toNat

end

end A157261.P4017168066649199223

noncomputable section

/-- A157261: A run-length encoding of blocks of 2 in A090822.

Offset 1, canonical program `A157261.P4017168066649199223`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261 (n : ℕ) : ℤ :=
  A157261.P4017168066649199223.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 127 terms. -/
def A157261.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A162685.P4308116154768313251

`record[A348990(A073492(n+1))]`
-/

namespace A162685.P4308116154768313251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (A073492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A162685.P4308116154768313251

noncomputable section

/-- A162685: Positive integers that are not prime powers and are not divisible by any consecutive primes.

Offset 1, canonical program `A162685.P4308116154768313251`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7366 terms. -/
def A162685 (n : ℕ) : ℤ :=
  A162685.P4308116154768313251.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7366 terms. -/
def A162685.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167851.P8561358068027142929

`A167852(n+1)%2`
-/

namespace A167851.P8561358068027142929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167852 (n + 1)) 2

end

end A167851.P8561358068027142929

noncomputable section

/-- A167851: Triangle read by rows in which each row contains a finite triangle as shown below.

Offset 1, canonical program `A167851.P8561358068027142929`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167851 (n : ℕ) : ℤ :=
  A167851.P8561358068027142929.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. -/
def A167851.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179669.P2073455603419507119

`∩[A350372(n+1), A360902(n+1)]`
-/

namespace A179669.P2073455603419507119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179669.P2073455603419507119

noncomputable section

/-- A179669: Products of form p^4*q^2*r where p, q and r are three distinct primes.

Offset 1, canonical program `A179669.P2073455603419507119`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669 (n : ℕ) : ℤ :=
  (A179669.P2073455603419507119.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1169 terms. -/
def A179669.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179688.P398064880116552051

`∩[A175742(n+1), A350372(n+1)]`
-/

namespace A179688.P398064880116552051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179688.P398064880116552051

noncomputable section

/-- A179688: Numbers of the form p^3*q^3*r where p, q, and r are prime.

Offset 1, canonical program `A179688.P398064880116552051`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688 (n : ℕ) : ℤ :=
  (A179688.P398064880116552051.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 360 terms. -/
def A179688.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A179690.P2467920889633160340

`∩[A350375(n+1), A375144(n+1)]`
-/

namespace A179690.P2467920889633160340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A179690.P2467920889633160340

noncomputable section

/-- A179690: Numbers of the form p^2*q^2*r*s where p, q, r, and s are distinct primes.

Offset 1, canonical program `A179690.P2467920889633160340`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690 (n : ℕ) : ℤ :=
  (A179690.P2467920889633160340.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4475 terms. -/
def A179690.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A182727.P2225108811263832768

`∑[A141285(n+1)]`
-/

namespace A182727.P2225108811263832768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A182727.P2225108811263832768

noncomputable section

/-- A182727: Sum of largest parts of the modular table of partitions with n regions.

Offset 1, canonical program `A182727.P2225108811263832768`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727 (n : ℕ) : ℤ :=
  A182727.P2225108811263832768.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4000 terms. -/
def A182727.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A195086.P16313270829479448307

`∪[A048109(n+1), A375144(n+1)]`
-/

namespace A195086.P16313270829479448307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A195086.P16313270829479448307

noncomputable section

/-- A195086: Numbers k such that (number of prime factors of k counted with multiplicity) less (number of distinct prime factors of k) = 2.

Offset 1, canonical program `A195086.P16313270829479448307`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086 (n : ℕ) : ℤ :=
  (A195086.P16313270829479448307.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A195086.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A235626.P1590916053852408949

`p?[A037465(A000040(n+1))]`
-/

namespace A235626.P1590916053852408949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A235626.P1590916053852408949

noncomputable section

/-- A235626: Primes whose base-6 representation also is the base-5 representation of a prime.

Offset 1, canonical program `A235626.P1590916053852408949`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A235626 (n : ℕ) : ℤ :=
  A235626.P1590916053852408949.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 134 terms. -/
def A235626.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A244967.P9468410199705462311

`A141285(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A244967.P9468410199705462311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141285 (n + 1) - 1

end

end A244967.P9468410199705462311

noncomputable section

/-- A244967: A141285(n) - 1.

Offset 1, canonical program `A244967.P9468410199705462311`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967 (n : ℕ) : ℤ :=
  A244967.P9468410199705462311.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141285, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A244967.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A246028.P8741333918522624492

`A245564(and(n, 2*n))`
-/

namespace A246028.P8741333918522624492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245564 (Nat.land n (2 * n))

end

end A246028.P8741333918522624492

noncomputable section

/-- A246028: a(n) = Product_{i in row n of A245562} Fibonacci(i+1).

Offset 0, canonical program `A246028.P8741333918522624492`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246028 (n : ℕ) : ℤ :=
  A246028.P8741333918522624492.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A246028.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A263022.P14938541142514975447

`gcd(∑[n+1]², A326478(n+2))`
-/

namespace A263022.P14938541142514975447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) (A326478 (n + 2))

end

end A263022.P14938541142514975447

noncomputable section

/-- A263022: a(n) = gcd(n, 1^(n-1) + 2^(n-1) + ... + (n-1)^(n-1)) for n > 1.

Offset 2, canonical program `A263022.P14938541142514975447`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022 (n : ℕ) : ℤ :=
  (A263022.P14938541142514975447.a (n - 2) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. -/
def A263022.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A281662.P12271729128554163798

`A132084(n+1)%(n+1)`
-/

namespace A281662.P12271729128554163798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132084 (n + 1)) (n + 1 : ℤ)

end

end A281662.P12271729128554163798

noncomputable section

/-- A281662: (Denominator of Bernoulli(2*n)) read mod n.

Offset 1, canonical program `A281662.P12271729128554163798`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A281662 (n : ℕ) : ℤ :=
  A281662.P12271729128554163798.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 645 terms. -/
def A281662.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A292911.P11305991147892736781

`record[A326584(A072436(2*n+1))-n]`
-/

namespace A292911.P11305991147892736781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326584 (A072436 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A292911.P11305991147892736781

noncomputable section

/-- A292911: Numbers n such that A291897(n) is divisible by (2*n-1)^3.

Offset 1, canonical program `A292911.P11305991147892736781`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911 (n : ℕ) : ℤ :=
  A292911.P11305991147892736781.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 500 terms. -/
def A292911.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A296210.P2852661683445340117

`A005171(A322361(n+1)+1)`
-/

namespace A296210.P2852661683445340117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (A322361 (n + 1) + 1).toNat

end

end A296210.P2852661683445340117

noncomputable section

/-- A296210: Characteristic function for A104210: a(n) = 1 if n is divisible by at least 2 consecutive primes, 0 otherwise.

Offset 1, canonical program `A296210.P2852661683445340117`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296210 (n : ℕ) : ℤ :=
  A296210.P2852661683445340117.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A296210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A297126.P3482392127868777149

`comp[(eq[1, A043277(n+1)]+1)%(n²+1)]`
-/

namespace A297126.P3482392127868777149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1) % (n ^ 2 + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A297126.P3482392127868777149

noncomputable section

/-- A297126: Numbers whose base-3 digits d(m), d(m-1),..., d(0) have m=0 or else d(i) = d(i+1) for some i in {0,1,...,m-1}.

Offset 1, canonical program `A297126.P3482392127868777149`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8476 terms. -/
def A297126 (n : ℕ) : ℤ :=
  (A297126.P3482392127868777149.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8476 terms. -/
def A297126.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A300820.P3089578665199204575

`a(A322361(n+1)-1)+1` with `a(0)=0, a(1)=1`
-/

namespace A300820.P3089578665199204575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (A322361 (n + 1) - 1).toNat + 1

end

end A300820.P3089578665199204575

noncomputable section

/-- A300820: Length of the longest sequence of consecutive primes in the prime factorization of n. a(1) = 0.

Offset 1, canonical program `A300820.P3089578665199204575`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300820 (n : ℕ) : ℤ :=
  (A300820.P3089578665199204575.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A300820.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A309132.P6253841371733913923

`lcm(A326478(n+1)², A326478(A055032(n+1)²))`
-/

namespace A309132.P6253841371733913923
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326478 (n + 1) ^ 2) (A326478 (A055032 (n + 1) ^ 2).toNat)

end

end A309132.P6253841371733913923

noncomputable section

/-- A309132: a(n) is the denominator of F(n) = A027641(n-1)/n + A027642(n-1)/n^2.

Offset 1, canonical program `A309132.P6253841371733913923`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132 (n : ℕ) : ℤ :=
  (A309132.P6253841371733913923.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 103 terms. -/
def A309132.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A319630.P11084814981088567304

`record[A348990(n+1)]`
-/

namespace A319630.P11084814981088567304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A319630.P11084814981088567304

noncomputable section

/-- A319630: Positive numbers that are not divisible by two consecutive prime numbers.

Offset 1, canonical program `A319630.P11084814981088567304`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630 (n : ℕ) : ℤ :=
  A319630.P11084814981088567304.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A319630.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325160.P12883454015877161632

`record[A348990(A007913(n+1))]`
-/

namespace A325160.P12883454015877161632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A325160.P12883454015877161632

noncomputable section

/-- A325160: Products of distinct, non-consecutive primes. Squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325160.P12883454015877161632`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325160 (n : ℕ) : ℤ :=
  A325160.P12883454015877161632.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A325160.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A325161.P4005082633071071506

`filter[A325160(n+1), A005171(#)]`
-/

namespace A325161.P4005082633071071506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325160 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A325161.P4005082633071071506

noncomputable section

/-- A325161: Nonprime squarefree numbers not divisible by any two consecutive primes.

Offset 1, canonical program `A325161.P4005082633071071506`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161 (n : ℕ) : ℤ :=
  A325161.P4005082633071071506.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7797 terms. -/
def A325161.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A333656.P10234480907296482497

`comp[A037465(n)]`
-/

namespace A333656.P10234480907296482497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A333656.P10234480907296482497

noncomputable section

/-- A333656: Numbers having at least one 5 in their representation in base 6.

Offset 1, canonical program `A333656.P10234480907296482497`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333656 (n : ℕ) : ℤ :=
  (A333656.P10234480907296482497.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A333656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336919.P8980509711614269143

`lt[1, A336839(n+1)]+1`
-/

namespace A336919.P8980509711614269143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336839 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A336919.P8980509711614269143

noncomputable section

/-- A336919: Numbers k such that A000005(k) does not divide A003973(k); numbers k for which A336839(k) > 1.

Offset 1, canonical program `A336919.P8980509711614269143`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919 (n : ℕ) : ℤ :=
  (A336919.P8980509711614269143.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5685 terms. -/
def A336919.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A338469.P2285265360204035828

`∩[A338471(n+1), A038513(n)]`
-/

namespace A338469.P2285265360204035828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338471 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038513 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338469.P2285265360204035828

noncomputable section

/-- A338469: Products of three odd prime numbers of odd index.

Offset 1, canonical program `A338469.P2285265360204035828`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469 (n : ℕ) : ℤ :=
  (A338469.P2285265360204035828.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1696 terms. -/
def A338469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A355942.P15456224555236234765

`filter[n+1, A361466(#)]`
-/

namespace A355942.P15456224555236234765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A361466 (f1 j) = 1) n)

end

end A355942.P15456224555236234765

noncomputable section

/-- A355942: Numbers k such that k is a multiple of A326042(k).

Offset 1, canonical program `A355942.P15456224555236234765`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A355942 (n : ℕ) : ℤ :=
  (A355942.P15456224555236234765.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 115 terms. -/
def A355942.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A356173.P8720124054726278930

`1-A296210(n+1)`
-/

namespace A356173.P8720124054726278930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A296210 (n + 1)

end

end A356173.P8720124054726278930

noncomputable section

/-- A356173: a(n) = 1 if n is not divisible by two consecutive prime numbers, otherwise 0.

Offset 1, canonical program `A356173.P8720124054726278930`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173 (n : ℕ) : ℤ :=
  A356173.P8720124054726278930.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A296210, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A356173.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A379229.P6484244706244727034

`A336853(A319630(n+1))-record[A348990(n+1)]`
-/

namespace A379229.P6484244706244727034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336853 (A319630 (n + 1)).toNat - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379229.P6484244706244727034

noncomputable section

/-- A379229: Difference A003961(k)-(2*k) computed for the natural numbers k for which k and A003961(k) are relatively prime, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379229.P6484244706244727034`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379229 (n : ℕ) : ℤ :=
  A379229.P6484244706244727034.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A379229.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A388978.P5887686069161317170

`A326128(n+1)*A389077(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A388978.P5887686069161317170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326128 (n + 1) * A389077 (n + 1)

end

end A388978.P5887686069161317170

noncomputable section

/-- A388978: a(n) = A326128(n) * A389077(n).

Offset 1, canonical program `A388978.P5887686069161317170`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326128, A389077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388978 (n : ℕ) : ℤ :=
  A388978.P5887686069161317170.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A326128, A389077, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A388978.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A037973.P9289720797582114111

`eq[2, A043277(n+1)]+1`
-/

namespace A037973.P9289720797582114111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037973.P9289720797582114111

noncomputable section

/-- A037973: Numbers whose maximal base 3 run length is 2.

Offset 1, canonical program `A037973.P9289720797582114111`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A037973 (n : ℕ) : ℤ :=
  (A037973.P9289720797582114111.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4894 terms. -/
def A037973.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037974.P4320292893126030488

`eq[3, A043277(n+1)]+1`
-/

namespace A037974.P4320292893126030488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037974.P4320292893126030488

noncomputable section

/-- A037974: Numbers whose maximal base-3 run length is 3.

Offset 1, canonical program `A037974.P4320292893126030488`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. -/
def A037974 (n : ℕ) : ℤ :=
  (A037974.P4320292893126030488.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3019 terms. -/
def A037974.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A037975.P15275550205582230109

`eq[4, A043277(n+1)]+1`
-/

namespace A037975.P15275550205582230109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043277 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A037975.P15275550205582230109

noncomputable section

/-- A037975: Maximal base 3 run length is 4.

Offset 1, canonical program `A037975.P15275550205582230109`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A037975 (n : ℕ) : ℤ :=
  (A037975.P15275550205582230109.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1042 terms. -/
def A037975.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045687.P11816481710795598244

`A045669(n)/A004277(n)`
-/

namespace A045687.P11816481710795598244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045669 n : ℚ) / (A004277 n : ℚ)

end

end A045687.P11816481710795598244

noncomputable section

/-- A045687: Number of 2n-bead balanced binary necklaces of fundamental period 2n which are equivalent to their reversed complement, but are not equivalent to their reverse and complement.

Offset 0, canonical program `A045687.P11816481710795598244`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A045687.P11816481710795598244.a n)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045687.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A051717.P719788567158624044

`lcm(A000034(n), A132084(floor(n/2)))`
-/

namespace A051717.P719788567158624044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A132084 ⌊(n : ℚ) / 2⌋.toNat)

end

end A051717.P719788567158624044

noncomputable section

/-- A051717: 1, followed by denominators of first differences of Bernoulli numbers (B(i)-B(i-1)).

Offset 0, canonical program `A051717.P719788567158624044`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717 (n : ℕ) : ℤ :=
  (A051717.P719788567158624044.a n : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. -/
def A051717.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056503.P12078029325460103094

`A000011(n+1)-A045677(n+1)/2`
-/

namespace A056503.P12078029325460103094
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000011 (n + 1) : ℚ) - (A045677 (n + 1) : ℚ) / 2

end

end A056503.P12078029325460103094

noncomputable section

/-- A056503: Number of periodic palindromic structures of length n using a maximum of two different symbols.

Offset 1, canonical program `A056503.P12078029325460103094`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503 (n : ℕ) : ℤ :=
  SequenceMachineLib.roundAway (A056503.P12078029325460103094.a (n - 1))

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 341 terms. -/
def A056503.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A056508.P8052561775042287548

`A056503(n+1)-1`
-/

namespace A056508.P8052561775042287548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056503 (n + 1) - 1

end

end A056508.P8052561775042287548

noncomputable section

/-- A056508: Number of periodic palindromic structures of length n using exactly two different symbols.

Offset 1, canonical program `A056508.P8052561775042287548`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508 (n : ℕ) : ℤ :=
  A056508.P8052561775042287548.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056503, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A056508.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056518.P10495334089397764284

`∑{d}[n+1, A008683(#)*A056508((n+1)/#)]`
-/

namespace A056518.P10495334089397764284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A056508 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A056518.P10495334089397764284

noncomputable section

/-- A056518: Number of primitive (period n) periodic palindromic structures using exactly two different symbols.

Offset 1, canonical program `A056518.P10495334089397764284`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518 (n : ℕ) : ℤ :=
  A056518.P10495334089397764284.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 665 terms. -/
def A056518.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A066312.P6581190255971771667

`filter[A066311(n+1), A296210(#)]`
-/

namespace A066312.P6581190255971771667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A296210 (f1 j).toNat = 1) n)

end

end A066312.P6581190255971771667

noncomputable section

/-- A066312: Numbers, other than prime powers, whose distinct prime factors are consecutive primes.

Offset 1, canonical program `A066312.P6581190255971771667`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A066312 (n : ℕ) : ℤ :=
  A066312.P6581190255971771667.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 491 terms. -/
def A066312.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A104210.P9818708148952253810

`lt[1, A300820(n+1)]+1`
-/

namespace A104210.P9818708148952253810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300820 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A104210.P9818708148952253810

noncomputable section

/-- A104210: Positive integers divisible by at least 2 consecutive primes.

Offset 1, canonical program `A104210.P9818708148952253810`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104210 (n : ℕ) : ℤ :=
  (A104210.P9818708148952253810.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A104210.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A140812.P6882242940985377112

`A051717(2*n)+A051717(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A140812.P6882242940985377112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (2 * n) + A051717 (2 * n + 1)

end

end A140812.P6882242940985377112

noncomputable section

/-- A140812: a(n) = A051717(2n) + A051717(2n+1).

Offset 0, canonical program `A140812.P6882242940985377112`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812 (n : ℕ) : ℤ :=
  A140812.P6882242940985377112.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A140812.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A153087.P3812379538921097872

`A051717(3*n)+A051717(3*n+1)+A051717(3*n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A153087.P3812379538921097872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051717 (3 * n) + A051717 (3 * n + 1) + A051717 (3 * n + 2)

end

end A153087.P3812379538921097872

noncomputable section

/-- A153087: a(n) = A051717(3n) + A051717(3n+1) + A051717(3n+2).

Offset 0, canonical program `A153087.P3812379538921097872`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087 (n : ℕ) : ℤ :=
  A153087.P3812379538921097872.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051717, whose definition is only conditional or conjectured, so it is only correct if that one is. -/
def A153087.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A166469.P6403527322044406154

`∑{d}[n+1, A356173(#)]`
-/

namespace A166469.P6403527322044406154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A356173 d

end

end A166469.P6403527322044406154

noncomputable section

/-- A166469: Number of divisors of n which are not multiples of consecutive primes.

Offset 1, canonical program `A166469.P6403527322044406154`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469 (n : ℕ) : ℤ :=
  A166469.P6403527322044406154.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A166469.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A167447.P13871075848203580678

`∑{d}[A003961(n+1), A356173(A322361(#))]`
-/

namespace A167447.P13871075848203580678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A356173 (A322361 d).toNat

end

end A167447.P13871075848203580678

noncomputable section

/-- A167447: Number of divisors of n which are not multiples of 3 consecutive primes.

Offset 1, canonical program `A167447.P13871075848203580678`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447 (n : ℕ) : ℤ :=
  A167447.P13871075848203580678.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 767 terms. -/
def A167447.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336930.P3805252567437306107

`eq[A295664(n+1), A336932(n+1)]+1`
-/

namespace A336930.P3805252567437306107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295664 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A336930.P3805252567437306107

noncomputable section

/-- A336930: Numbers k such that the 2-adic valuation of A003973(k), the sum of divisors of the prime shifted k is equal to the 2-adic valuation of the number of divisors of k.

Offset 1, canonical program `A336930.P3805252567437306107`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930 (n : ℕ) : ℤ :=
  (A336930.P3805252567437306107.a (n - 1) : ℤ)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9700 terms. -/
def A336930.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A336931.P13387050893284357146

`A336932(n+1)-A295664(n+1)`
-/

namespace A336931.P13387050893284357146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336932 (n + 1) - A295664 (n + 1)

end

end A336931.P13387050893284357146

noncomputable section

/-- A336931: Difference between the 2-adic valuation of A003973(n) [= the sum of divisors of the prime shifted n] and the 2-adic valuation of the number of divisors of n.

Offset 1, canonical program `A336931.P13387050893284357146`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295664, A336932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336931 (n : ℕ) : ℤ :=
  A336931.P13387050893284357146.a (n - 1)

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A295664, A336932, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A336931.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A347121.P11625096903895207558

`∑{d}[n+1, A347122(#)]`
-/

namespace A347121.P11625096903895207558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A347122 d

end

end A347121.P11625096903895207558

noncomputable section

/-- A347121: a(n) = A347136(n) - 2*n.

Offset 1, canonical program `A347121.P11625096903895207558`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347121 (n : ℕ) : ℤ :=
  A347121.P11625096903895207558.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. -/
def A347121.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A379230.P706396864197562586

`A252748(A104210(n+1))`
-/

namespace A379230.P706396864197562586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252748 (A104210 (n + 1)).toNat

end

end A379230.P706396864197562586

noncomputable section

/-- A379230: Difference A003961(k)-(2*k) computed for the natural numbers k for which gcd(k,A003961(k)) > 1, where A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

Offset 1, canonical program `A379230.P706396864197562586`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A379230 (n : ℕ) : ℤ :=
  A379230.P706396864197562586.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2456 terms. -/
def A379230.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A011949.P6544439330995346585

`A056336(n+1)-A056518(n+1)`
-/

namespace A011949.P6544439330995346585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056336 (n + 1) - A056518 (n + 1)

end

end A011949.P6544439330995346585

noncomputable section

/-- A011949: Number of Barlow packings with group P6(bar)m2 that repeat after 2n layers.

Offset 1, canonical program `A011949.P6544439330995346585`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949 (n : ℕ) : ℤ :=
  A011949.P6544439330995346585.a (n - 1)

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. -/
def A011949.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045656.P5470975865177139039

`A045655(n)-∑{d}[n, A045669(#)]`
-/

namespace A045656.P5470975865177139039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - ∑ d ∈ Nat.divisors (f1 n), A045669 d

end

end A045656.P5470975865177139039

noncomputable section

/-- A045656: Number of 2n-bead balanced binary strings, rotationally equivalent to reverse, complement and reversed complement.

Offset 0, canonical program `A045656.P5470975865177139039`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656 (n : ℕ) : ℤ :=
  A045656.P5470975865177139039.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. -/
def A045656.provenance : SequenceMachineLib.Provenance := .conjectured

/-! ## A045659.P18078101322428764532

`A045654(n)-A045656(n)`
-/

namespace A045659.P18078101322428764532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045654 n - A045656 n

end

end A045659.P18078101322428764532

noncomputable section

/-- A045659: Number of 2n-bead balanced binary strings, rotationally equivalent to complement, inequivalent to reverse and reversed complement.

Offset 0, canonical program `A045659.P18078101322428764532`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659 (n : ℕ) : ℤ :=
  A045659.P18078101322428764532.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045654, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045659.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A045660.P14796031568194010525

`A045655(n)-A045656(n)`
-/

namespace A045660.P14796031568194010525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045655 n - A045656 n

end

end A045660.P14796031568194010525

noncomputable section

/-- A045660: Number of 2n-bead balanced binary strings, rotationally equivalent to reversed complement, inequivalent to reverse and complement.

Offset 0, canonical program `A045660.P14796031568194010525`. Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660 (n : ℕ) : ℤ :=
  A045660.P14796031568194010525.a n

end

/-- Conditional: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045655, A045656, whose definitions are only conditional or conjectured, so it is only correct if theirs are. -/
def A045660.provenance : SequenceMachineLib.Provenance := .conditional

/-! ## A056513.P10775552147206924827

`A056518(A233583(n+1))`
-/

namespace A056513.P10775552147206924827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056518 (A233583 (n + 1)).toNat

end

end A056513.P10775552147206924827

noncomputable section

/-- A056513: Number of primitive (period n) periodic palindromic structures using a maximum of two different symbols.

Offset 0, canonical program `A056513.P10775552147206924827`. Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513 (n : ℕ) : ℤ :=
  A056513.P10775552147206924827.a n

end

/-- Conjectured: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 666 terms. -/
def A056513.provenance : SequenceMachineLib.Provenance := .conjectured

