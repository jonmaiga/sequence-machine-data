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
import Seq.B000.C017
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
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A051700: Distance from n to closest prime that is different from n.

The programs for A051700, there is no canonical definition to state claims against.
-/

/-! ## A051700.P618741991355629171

`abs(n-A051698(n))`
-/

namespace A051700.P618741991355629171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A051698 n|

end

end A051700.P618741991355629171

/-! ## A051700.P14334300921430488903

`A000194((n-A051698(n))²)`
-/

namespace A051700.P14334300921430488903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (((n : ℤ) - A051698 n) ^ 2).toNat

end

end A051700.P14334300921430488903

/-! ## A051700.P11212540077815748467

`A000196((n-A051698(n))²)`
-/

namespace A051700.P11212540077815748467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (((n : ℤ) - A051698 n) ^ 2).toNat

end

end A051700.P11212540077815748467

/-! ## A051700.P5159920836146119649

`A018851((n-A051698(n))²)`
-/

namespace A051700.P5159920836146119649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (((n : ℤ) - A051698 n) ^ 2).toNat

end

end A051700.P5159920836146119649

/-! ## A051700.P4708738227580837125

`A033677((n-A051698(n))²)`
-/

namespace A051700.P4708738227580837125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (((n : ℤ) - A051698 n) ^ 2).toNat

end

end A051700.P4708738227580837125

/-! ## A051700.P920043258015854544

`gcd(n-A051698(n), A051699(n))`
-/

namespace A051700.P920043258015854544
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A051698 n) (A051699 n)

end

end A051700.P920043258015854544

/-! ## A051700.P13179374567460897437

`gcd(Δ[A051698(n)], A051699(n))`
-/

namespace A051700.P13179374567460897437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A051699 n)

end

end A051700.P13179374567460897437

/-! ## A051700.P1121678831241320656

`gcd(A051698(n)-n, A308091(n+1))`
-/

namespace A051700.P1121678831241320656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051698 n - (n : ℤ)) (A308091 (n + 1))

end

end A051700.P1121678831241320656

/-!
# A051701: Closest prime to n-th prime p that is different from p (break ties by taking the smaller prime).

The programs for A051701, there is no canonical definition to state claims against.
-/

/-! ## A051701.P3928809790973082835

`A051698(p?[comp[n²]])`
-/

namespace A051701.P3928809790973082835
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A051701.P3928809790973082835

/-! ## A051701.P188970815638678108

`A051698(Δ[A007504(n)])`
-/

namespace A051701.P188970815638678108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f1 (n + 1) - f1 n).toNat

end

end A051701.P188970815638678108

/-! ## A051701.P7642421307858690552

`A051698(record[A051698(n)])`
-/

namespace A051701.P7642421307858690552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051701.P7642421307858690552

/-! ## A051701.P16143554284067247075

`A051698(A000040(n+1))`
-/

namespace A051701.P16143554284067247075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A000040 (n + 1)).toNat

end

end A051701.P16143554284067247075

/-! ## A051701.P12453657021153025260

`A051698(A008578(n+2))`
-/

namespace A051701.P12453657021153025260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A008578 (n + 2)).toNat

end

end A051701.P12453657021153025260

/-! ## A051701.P6684233261435457768

`A051698(A182986(n+2))`
-/

namespace A051701.P6684233261435457768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A182986 (n + 2)).toNat

end

end A051701.P6684233261435457768

/-! ## A051701.P16204275797396526599

`A051698(eq[0, A007920(n)])`
-/

namespace A051701.P16204275797396526599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051701.P16204275797396526599

/-! ## A051701.P16260630046702638196

`A051698(eq[1, A003415(n)])`
-/

namespace A051701.P16260630046702638196
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051701.P16260630046702638196

/-! ## A051701.P3883996027043371938

`A051698(eq[1, A032741(n)])`
-/

namespace A051701.P3883996027043371938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051701.P3883996027043371938

/-! ## A051701.P15600701734401769374

`p?[A051698(p?[A064429(n)])]`
-/

namespace A051701.P15600701734401769374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051701.P15600701734401769374

/-! ## A051701.P17319630294572141463

`A051698(sqrt(A001248(n+1)))`
-/

namespace A051701.P17319630294572141463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A051701.P17319630294572141463

/-! ## A051701.P373509975627657692

`A051698(A006093(n+1)+1)`
-/

namespace A051701.P373509975627657692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A006093 (n + 1) + 1).toNat

end

end A051701.P373509975627657692

/-! ## A051701.P6582247895317135497

`A051698(A008864(n+1)-1)`
-/

namespace A051701.P6582247895317135497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (A008864 (n + 1) - 1).toNat

end

end A051701.P6582247895317135497

/-! ## A051701.P10392016497740281764

`A051698(A001747(n+2)/2)`
-/

namespace A051701.P10392016497740281764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A051701.P10392016497740281764

/-! ## A051701.P16423124661720454391

`A051698(eq[1, A013632(n)]+1)`
-/

namespace A051701.P16423124661720454391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A051701.P16423124661720454391

/-! ## A051701.P5376446346512749697

`A051698(eq[n, A051698(n+1)])`
-/

namespace A051701.P5376446346512749697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051701.P5376446346512749697

/-! ## A051701.P16731461121965051760

`p?[A051698(p?[A065190(n+1)+1])]`
-/

namespace A051701.P16731461121965051760
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051701.P16731461121965051760

/-!
# A051702: Distance from n-th prime to closest prime.

The programs for A051702, there is no canonical definition to state claims against.
-/

/-! ## A051702.P710967100375541113

`A046929(n+1)+1`
-/

namespace A051702.P710967100375541113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046929 (n + 1) + 1

end

end A051702.P710967100375541113

/-! ## A051702.P6468616140131201749

`abs(A000040(n+1)-A051701(n+1))`
-/

namespace A051702.P6468616140131201749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) - A051701 (n + 1)|

end

end A051702.P6468616140131201749

/-! ## A051702.P976923855093572553

`A051700(p?[xor(1, n)])`
-/

namespace A051702.P976923855093572553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A051702.P976923855093572553

/-! ## A051702.P5021938382920466897

`A051700(Δ[A007504(n)])`
-/

namespace A051702.P5021938382920466897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (n + 1) - f1 n).toNat

end

end A051702.P5021938382920466897

/-! ## A051702.P12162596319813270116

`A051700(record[A051698(n)])`
-/

namespace A051702.P12162596319813270116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051702.P12162596319813270116

/-! ## A051702.P17829007668611322652

`A051700(record[A162753(n)])`
-/

namespace A051702.P17829007668611322652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A051702.P17829007668611322652

/-! ## A051702.P246656624835804898

`A051700(p?[A004442(n)])`
-/

namespace A051702.P246656624835804898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A051702.P246656624835804898

/-! ## A051702.P3073386401625940317

`A051700(p?[A006369(n)])`
-/

namespace A051702.P3073386401625940317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A051702.P3073386401625940317

/-! ## A051702.P14891155667884036062

`A051700(p?[A014681(n)])`
-/

namespace A051702.P14891155667884036062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A051702.P14891155667884036062

/-! ## A051702.P4855354218513487717

`A051700(p?[A143051(n)])`
-/

namespace A051702.P4855354218513487717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A051702.P4855354218513487717

/-! ## A051702.P4658492687055810950

`A051700(A000040(n+1))`
-/

namespace A051702.P4658492687055810950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A000040 (n + 1)).toNat

end

end A051702.P4658492687055810950

/-! ## A051702.P5906053547700401212

`A051700(A006005(n+1))`
-/

namespace A051702.P5906053547700401212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A006005 (n + 1)).toNat

end

end A051702.P5906053547700401212

/-! ## A051702.P123070123825672670

`A051700(A008578(n+2))`
-/

namespace A051702.P123070123825672670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A008578 (n + 2)).toNat

end

end A051702.P123070123825672670

/-! ## A051702.P3860659238608683781

`A051700(A075643(n+2))`
-/

namespace A051702.P3860659238608683781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A075643 (n + 2)).toNat

end

end A051702.P3860659238608683781

/-! ## A051702.P12914167456586014737

`A051700(A171525(n+2))`
-/

namespace A051702.P12914167456586014737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A171525 (n + 2)).toNat

end

end A051702.P12914167456586014737

/-! ## A051702.P526109214844124593

`A051700(A175787(n+2))`
-/

namespace A051702.P526109214844124593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A175787 (n + 2)).toNat

end

end A051702.P526109214844124593

/-! ## A051702.P130676050331262606

`A051700(A182986(n+2))`
-/

namespace A051702.P130676050331262606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (A182986 (n + 2)).toNat

end

end A051702.P130676050331262606

/-! ## A051702.P6887637388449877537

`A051700(eq[1, A032741(n)])`
-/

namespace A051702.P6887637388449877537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051702.P6887637388449877537

/-! ## A051702.P12117254203942371892

`A051700(eq[1, A105700(n)])`
-/

namespace A051702.P12117254203942371892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051702.P12117254203942371892

/-! ## A051702.P15896223928354826577

`A051700(eq[2, A005127(n)])`
-/

namespace A051702.P15896223928354826577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005127 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051700 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051702.P15896223928354826577

/-!
# A051706: Number of different tennis scores after n points have been played.

The programs for A051706, there is no canonical definition to state claims against.
-/

/-! ## A051706.P14750593134165751194

`∑[A023416(∏{p}[A001550(n), #-1])]`
-/

namespace A051706.P14750593134165751194
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (∏ p ∈ Nat.primeFactors (f2 n).natAbs, ((p : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051706.P14750593134165751194

/-! ## A051706.P15002092750456330258

`eq[A140472(A186020(n)), A277700(n)]`
-/

namespace A051706.P15002092750456330258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A186020 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051706.P15002092750456330258

/-! ## A051706.P4017693874654601083

`A048330(A004904(n+1))+A043557(n)`
-/

namespace A051706.P4017693874654601083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (A004904 (n + 1)).toNat + A043557 n

end

end A051706.P4017693874654601083

/-! ## A051706.P13521006690450568677

`A048330(A004915(n+1))+A043557(n)`
-/

namespace A051706.P13521006690450568677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048330 (A004915 (n + 1)).toNat + A043557 n

end

end A051706.P13521006690450568677

/-! ## A051706.P12333308344832417580

`eq[A000005(A234944(n+1)), A107286(n)]`
-/

namespace A051706.P12333308344832417580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A234944 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051706.P12333308344832417580

/-!
# A051707: Number of factorizations of (n,n) into pairs (j,k).

The programs for A051707, there is no canonical definition to state claims against.
-/

/-! ## A051707.P12592707668875374480

`A108460(A101296(n+1)-1)`
-/

namespace A051707.P12592707668875374480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108460 (A101296 (n + 1) - 1).toNat

end

end A051707.P12592707668875374480

/-! ## A051707.P5281253477079701470

`A108455(∑[4*n]+1)`
-/

namespace A051707.P5281253477079701470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051707.P5281253477079701470

/-! ## A051707.P5963511985744299111

`or(char[1], A108455(A001844(n)))`
-/

namespace A051707.P5963511985744299111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A108455 (A001844 n).toNat)

end

end A051707.P5963511985744299111

/-! ## A051707.P14323860050806390987

`∏{d}[A108455(A001844(n)), A014963(#)]`
-/

namespace A051707.P14323860050806390987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (A001844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A051707.P14323860050806390987

/-! ## A051707.P11521892980498396918

`char[A324114(n)]*A108455(A001844(n))`
-/

namespace A051707.P11521892980498396918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324114 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A108455 (A001844 n).toNat

end

end A051707.P11521892980498396918

/-! ## A051707.P10485496946678644917

`A108455(A001844(n))%∑[A000032(n)]`
-/

namespace A051707.P10485496946678644917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A108455 (A001844 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051707.P10485496946678644917

/-! ## A051707.P7634058129540904127

`A108455(A001844(n))+A000007(n+1)`
-/

namespace A051707.P7634058129540904127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (A001844 n).toNat + A000007 (n + 1)

end

end A051707.P7634058129540904127

/-! ## A051707.P18313201199531620011

`A108455(A001844(n))^A014963(∑[n+1])`
-/

namespace A051707.P18313201199531620011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108455 (A001844 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A051707.P18313201199531620011

/-! ## A051707.P10655126411058265015

`A108455(A001844(n))+A008683(4*(n+1))`
-/

namespace A051707.P10655126411058265015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108455 (A001844 n).toNat + A008683 (4 * (n + 1))

end

end A051707.P10655126411058265015

/-! ## A051707.P7065206112572688943

`A108455(A001844(n))^(A000040(n+1)%2)`
-/

namespace A051707.P7065206112572688943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108455 (A001844 n).toNat : ℚ) ^ (Int.tmod (A000040 (n + 1)) 2 : ℤ)

end

end A051707.P7065206112572688943

/-!
# A051708: Number of ways to move a chess rook from the lower left corner to square (n,n), with the rook moving only up or right.

The programs for A051708, the canonical program `A051708.P2868891688406684723` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051708 has offset 1).

The definition of A051708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051708.P2868891688406684723

`((10*(n+1)-16)*a(n-1)-(9*(n+1)-27)*a(n-2))/n` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051708

/-- `((10*(n+1)-16)*a(n-1)-(9*(n+1)-27)*a(n-2))/n` -/
def P2868891688406684723.Spec : Prop :=
  ∀ n, P2868891688406684723.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P16209649251024105592

`ceil(A085363(n)/2)`
-/

namespace A051708.P16209649251024105592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A085363 n : ℚ) / 2⌉

end

end A051708.P16209649251024105592

namespace A051708

/-- `ceil(A085363(n)/2)` -/
def P16209649251024105592.Spec : Prop :=
  ∀ n, P16209649251024105592.a n = A051708 (n + 1)

end A051708

/-! ## A051708.P9042968676778888503

`A085363(n)/ratio[A011782(n)]`
-/

namespace A051708.P9042968676778888503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / ((f1 (n + 1) : ℚ) / (f1 n : ℚ))

end

end A051708.P9042968676778888503

namespace A051708

/-- `A085363(n)/ratio[A011782(n)]` -/
def P9042968676778888503.Spec : Prop :=
  ∀ n, P9042968676778888503.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P13768480319174934812

`A085363(n)/A036453(n+1)`
-/

namespace A051708.P13768480319174934812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A051708.P13768480319174934812

namespace A051708

/-- `A085363(n)/A036453(n+1)` -/
def P13768480319174934812.Spec : Prop :=
  ∀ n, P13768480319174934812.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P12744608619551914935

`A085363(n)/gcd(2, A086871(n))`
-/

namespace A051708.P12744608619551914935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (Int.gcd 2 (A086871 n) : ℚ)

end

end A051708.P12744608619551914935

namespace A051708

/-- `A085363(n)/gcd(2, A086871(n))` -/
def P12744608619551914935.Spec : Prop :=
  ∀ n, P12744608619551914935.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P11505449588969345115

`A085363(n)/A001221(A085366(n+1))`
-/

namespace A051708.P11505449588969345115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (A001221 (A085366 (n + 1)).toNat : ℚ)

end

end A051708.P11505449588969345115

namespace A051708

/-- `A085363(n)/A001221(A085366(n+1))` -/
def P11505449588969345115.Spec : Prop :=
  ∀ n, P11505449588969345115.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P15688704001213281372

`A085363(n)/A319991(A020639(n+1))`
-/

namespace A051708.P15688704001213281372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (A319991 (A020639 (n + 1)).toNat : ℚ)

end

end A051708.P15688704001213281372

namespace A051708

/-- `A085363(n)/A319991(A020639(n+1))` -/
def P15688704001213281372.Spec : Prop :=
  ∀ n, P15688704001213281372.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P17232704444356341604

`A085363(n)/A319991(A064235(n+1))`
-/

namespace A051708.P17232704444356341604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (A319991 (A064235 (n + 1)).toNat : ℚ)

end

end A051708.P17232704444356341604

namespace A051708

/-- `A085363(n)/A319991(A064235(n+1))` -/
def P17232704444356341604.Spec : Prop :=
  ∀ n, P17232704444356341604.a n = (A051708 (n + 1) : ℚ)

end A051708

/-! ## A051708.P11615729375706349297

`A085363(n)/A028242(val(A085363(n), 2))`
-/

namespace A051708.P11615729375706349297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085363 n : ℚ) / (A028242 (SequenceMachineLib.valuation (A085363 n).toNat 2) : ℚ)

end

end A051708.P11615729375706349297

namespace A051708

/-- `A085363(n)/A028242(val(A085363(n), 2))` -/
def P11615729375706349297.Spec : Prop :=
  ∀ n, P11615729375706349297.a n = (A051708 (n + 1) : ℚ)

end A051708

/-!
# A051709: a(n) = sigma(n) + phi(n) - 2n.

The programs for A051709, the canonical program `A051709.P1277583888386467227` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051709 has offset 1).

The definition of A051709 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051709.P1277583888386467227

`A001065(n+1)-A051953(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051709

/-- `A001065(n+1)-A051953(n+1)` -/
def P1277583888386467227.Spec : Prop :=
  ∀ n, P1277583888386467227.a n = A051709 (n + 1)

theorem P1277583888386467227.correct : P1277583888386467227.Spec := by
  intro n
  simp only [A051709, Nat.add_sub_cancel]

end A051709

/-! ## A051709.P14391589758807295

`A209187(n+1)-(n+1)`
-/

namespace A051709.P14391589758807295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209187 (n + 1) - (n + 1 : ℤ)

end

end A051709.P14391589758807295

namespace A051709

/-- `A209187(n+1)-(n+1)` -/
def P14391589758807295.Spec : Prop :=
  ∀ n, P14391589758807295.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P15190507299445401802

`A065387(n+1)-2*(n+1)`
-/

namespace A051709.P15190507299445401802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065387 (n + 1) - (2 * (n + 1) : ℤ)

end

end A051709.P15190507299445401802

namespace A051709

/-- `A065387(n+1)-2*(n+1)` -/
def P15190507299445401802.Spec : Prop :=
  ∀ n, P15190507299445401802.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P16900582236647992715

`A033880(n+1)+Δ[A002088(n)]`
-/

namespace A051709.P16900582236647992715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (f1 (n + 1) - f1 n)

end

end A051709.P16900582236647992715

namespace A051709

/-- `A033880(n+1)+Δ[A002088(n)]` -/
def P16900582236647992715.Spec : Prop :=
  ∀ n, P16900582236647992715.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P3544054141763909127

`A033880(n+1)+Δ[A005728(n)]`
-/

namespace A051709.P3544054141763909127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + (f1 (n + 1) - f1 n)

end

end A051709.P3544054141763909127

namespace A051709

/-- `A033880(n+1)+Δ[A005728(n)]` -/
def P3544054141763909127.Spec : Prop :=
  ∀ n, P3544054141763909127.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P16878882052170912396

`Δ[A002088(n)]-A033879(n+1)`
-/

namespace A051709.P16878882052170912396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A033879 (n + 1)

end

end A051709.P16878882052170912396

namespace A051709

/-- `Δ[A002088(n)]-A033879(n+1)` -/
def P16878882052170912396.Spec : Prop :=
  ∀ n, P16878882052170912396.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P1072920318430253878

`A033880(n+1)+A000010(n+1)`
-/

namespace A051709.P1072920318430253878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1) + A000010 (n + 1)

end

end A051709.P1072920318430253878

namespace A051709

/-- `A033880(n+1)+A000010(n+1)` -/
def P1072920318430253878.Spec : Prop :=
  ∀ n, P1072920318430253878.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P16716605977194469152

`A228947(n+1)+A083254(n+1)`
-/

namespace A051709.P16716605977194469152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228947 (n + 1) + A083254 (n + 1)

end

end A051709.P16716605977194469152

namespace A051709

/-- `A228947(n+1)+A083254(n+1)` -/
def P16716605977194469152.Spec : Prop :=
  ∀ n, P16716605977194469152.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P220395992803526162

`A237588(n+1)+A109606(n+1)`
-/

namespace A051709.P220395992803526162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) + A109606 (n + 1)

end

end A051709.P220395992803526162

namespace A051709

/-- `A237588(n+1)+A109606(n+1)` -/
def P220395992803526162.Spec : Prop :=
  ∀ n, P220395992803526162.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P5203097625562456644

`A000010(n+1)-A033879(n+1)`
-/

namespace A051709.P5203097625562456644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) - A033879 (n + 1)

end

end A051709.P5203097625562456644

namespace A051709

/-- `A000010(n+1)-A033879(n+1)` -/
def P5203097625562456644.Spec : Prop :=
  ∀ n, P5203097625562456644.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P14720028938049282170

`A000203(n+1)-A053158(n+1)`
-/

namespace A051709.P14720028938049282170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A053158 (n + 1)

end

end A051709.P14720028938049282170

namespace A051709

/-- `A000203(n+1)-A053158(n+1)` -/
def P14720028938049282170.Spec : Prop :=
  ∀ n, P14720028938049282170.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P6495068872968928125

`A048050(n+1)-A016035(n+1)`
-/

namespace A051709.P6495068872968928125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) - A016035 (n + 1)

end

end A051709.P6495068872968928125

namespace A051709

/-- `A048050(n+1)-A016035(n+1)` -/
def P6495068872968928125.Spec : Prop :=
  ∀ n, P6495068872968928125.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P732665183054242072

`A091818(n+1)-A051612(n+1)`
-/

namespace A051709.P732665183054242072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A051612 (n + 1)

end

end A051709.P732665183054242072

namespace A051709

/-- `A091818(n+1)-A051612(n+1)` -/
def P732665183054242072.Spec : Prop :=
  ∀ n, P732665183054242072.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P1631895970318388357

`A121048(n+1)-A033885(n+1)`
-/

namespace A051709.P1631895970318388357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - A033885 (n + 1)

end

end A051709.P1631895970318388357

namespace A051709

/-- `A121048(n+1)-A033885(n+1)` -/
def P1631895970318388357.Spec : Prop :=
  ∀ n, P1631895970318388357.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P3127134114419323875

`A079528(n+1)-A079532(n+1)`
-/

namespace A051709.P3127134114419323875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079528 (n + 1) - A079532 (n + 1)

end

end A051709.P3127134114419323875

namespace A051709

/-- `A079528(n+1)-A079532(n+1)` -/
def P3127134114419323875.Spec : Prop :=
  ∀ n, P3127134114419323875.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P8721443039215618684

`A152770(n+1)-A045763(n+1)`
-/

namespace A051709.P8721443039215618684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152770 (n + 1) - A045763 (n + 1)

end

end A051709.P8721443039215618684

namespace A051709

/-- `A152770(n+1)-A045763(n+1)` -/
def P8721443039215618684.Spec : Prop :=
  ∀ n, P8721443039215618684.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P17565227484534853150

`A073757(n+1)-A152864(n+1)`
-/

namespace A051709.P17565227484534853150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073757 (n + 1) - A152864 (n + 1)

end

end A051709.P17565227484534853150

namespace A051709

/-- `A073757(n+1)-A152864(n+1)` -/
def P17565227484534853150.Spec : Prop :=
  ∀ n, P17565227484534853150.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P15427470237943544015

`A051953(n+1)-A297159(n+1)`
-/

namespace A051709.P15427470237943544015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1) - A297159 (n + 1)

end

end A051709.P15427470237943544015

namespace A051709

/-- `A051953(n+1)-A297159(n+1)` -/
def P15427470237943544015.Spec : Prop :=
  ∀ n, P15427470237943544015.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P11919188776303234183

`A344178(n+1)-A211991(n+1)`
-/

namespace A051709.P11919188776303234183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344178 (n + 1) - A211991 (n + 1)

end

end A051709.P11919188776303234183

namespace A051709

/-- `A344178(n+1)-A211991(n+1)` -/
def P11919188776303234183.Spec : Prop :=
  ∀ n, P11919188776303234183.a n = A051709 (n + 1)

end A051709

/-! ## A051709.P3291219055010317824

`A344996(n+1)/A048250(n+1)`
-/

namespace A051709.P3291219055010317824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A344996 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)

end

end A051709.P3291219055010317824

namespace A051709

/-- `A344996(n+1)/A048250(n+1)` -/
def P3291219055010317824.Spec : Prop :=
  ∀ n, P3291219055010317824.a n = (A051709 (n + 1) : ℚ)

end A051709

/-!
# A051711: a(0) = 1; for n > 0, a(n) = n!*4^n/2.

The programs for A051711, the canonical program `A051711.P1574144181917243676` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051711 has offset 0).

The definition of A051711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051711.P1574144181917243676

`4*n*a(n-1)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051711

/-- `4*n*a(n-1)` -/
def P1574144181917243676.Spec : Prop :=
  ∀ n, (P1574144181917243676.a n : ℤ) = A051711 n

theorem P1574144181917243676.correct : P1574144181917243676.Spec := by
  intro n
  simp only [A051711]

end A051711

/-! ## A051711.P11423245905894843883

`ceil(4^n*n!/2)`
-/

namespace A051711.P11423245905894843883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 ^ n * Nat.factorial n : ℚ) / 2⌉

end

end A051711.P11423245905894843883

namespace A051711

/-- `ceil(4^n*n!/2)` -/
def P11423245905894843883.Spec : Prop :=
  ∀ n, P11423245905894843883.a n = A051711 n

end A051711

/-! ## A051711.P3037596215567158779

`round(4^n*n!/2)`
-/

namespace A051711.P3037596215567158779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((4 ^ n * Nat.factorial n : ℚ) / 2)

end

end A051711.P3037596215567158779

namespace A051711

/-- `round(4^n*n!/2)` -/
def P3037596215567158779.Spec : Prop :=
  ∀ n, P3037596215567158779.a n = A051711 n

end A051711

/-! ## A051711.P12336983340215019402

`abs(record[-(-2)^n])*n!`
-/

namespace A051711.P12336983340215019402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((-2) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)| * (Nat.factorial n : ℤ)

end

end A051711.P12336983340215019402

namespace A051711

/-- `abs(record[-(-2)^n])*n!` -/
def P12336983340215019402.Spec : Prop :=
  ∀ n, P12336983340215019402.a n = A051711 n

end A051711

/-! ## A051711.P616267403804987708

`∏[a(n-1)+4]` with `a(0)=1, a(1)=2, a(2)=8`
-/

namespace A051711.P616267403804987708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 8] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051711.P616267403804987708

namespace A051711

/-- `∏[a(n-1)+4]` -/
def P616267403804987708.Spec : Prop :=
  ∀ n, (P616267403804987708.a n : ℤ) = A051711 n

end A051711

/-! ## A051711.P3914039908570625738

`lcm(2, 4^n)/2*n!`
-/

namespace A051711.P3914039908570625738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (4 ^ n) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A051711.P3914039908570625738

namespace A051711

/-- `lcm(2, 4^n)/2*n!` -/
def P3914039908570625738.Spec : Prop :=
  ∀ n, P3914039908570625738.a n = (A051711 n : ℚ)

end A051711

/-! ## A051711.P14534300860906867206

`floor((4^n*n!+1)/2)`
-/

namespace A051711.P14534300860906867206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n * Nat.factorial n + 1 : ℚ) / 2⌋

end

end A051711.P14534300860906867206

namespace A051711

/-- `floor((4^n*n!+1)/2)` -/
def P14534300860906867206.Spec : Prop :=
  ∀ n, P14534300860906867206.a n = A051711 n

end A051711

/-! ## A051711.P9506568363888749302

`2^comp[2*(n+1)]*n!`
-/

namespace A051711.P9506568363888749302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n * Nat.factorial n

end

end A051711.P9506568363888749302

namespace A051711

/-- `2^comp[2*(n+1)]*n!` -/
def P9506568363888749302.Spec : Prop :=
  ∀ n, (P9506568363888749302.a n : ℤ) = A051711 n

end A051711

/-! ## A051711.P7831412990670419248

`∏[∪[4*(n+2), (2*n)!]]`
-/

namespace A051711.P7831412990670419248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (2 * n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = x) ∨ ∃ j, f3 j = x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051711.P7831412990670419248

namespace A051711

/-- `∏[∪[4*(n+2), (2*n)!]]` -/
def P7831412990670419248.Spec : Prop :=
  ∀ n, (P7831412990670419248.a n : ℤ) = A051711 n

end A051711

/-! ## A051711.P14687430243199134259

`∏[gcd(2^n*n!, 4*n)]`
-/

namespace A051711.P14687430243199134259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n * Nat.factorial n) (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051711.P14687430243199134259

namespace A051711

/-- `∏[gcd(2^n*n!, 4*n)]` -/
def P14687430243199134259.Spec : Prop :=
  ∀ n, (P14687430243199134259.a n : ℤ) = A051711 n

end A051711

/-!
# A051712: Numerator of b(n)-b(n+1), where b(n) = n/((n+1)(n+2)) = A026741/A045896.

The programs for A051712, the canonical program `A051712.P5358690207055637993` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051712 has offset 1).

The definition of A051712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051712.P17874697853006183978

`lcm(24, n)/24`
-/

namespace A051712.P17874697853006183978
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 24 n : ℚ) / 24

end

end A051712.P17874697853006183978

namespace A051712

/-- `lcm(24, n)/24` -/
def P17874697853006183978.Spec : Prop :=
  ∀ n, P17874697853006183978.a n = (A051712 (n + 1) : ℚ)

end A051712

/-! ## A051712.P16995715567412769954

`n/gcd(24, n)`
-/

namespace A051712.P16995715567412769954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 24 n : ℚ)

end

end A051712.P16995715567412769954

namespace A051712

/-- `n/gcd(24, n)` -/
def P16995715567412769954.Spec : Prop :=
  ∀ n, P16995715567412769954.a n = (A051712 (n + 1) : ℚ)

end A051712

/-! ## A051712.P5358690207055637993

`A051724(gcd(n², ∑[n]))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051712

/-- `A051724(gcd(n², ∑[n]))` -/
def P5358690207055637993.Spec : Prop :=
  ∀ n, P5358690207055637993.a n = A051712 (n + 1)

theorem P5358690207055637993.correct : P5358690207055637993.Spec := by
  intro n
  simp only [A051712, Nat.add_sub_cancel]

end A051712

/-! ## A051712.P3189560093525809086

`gcd(∑[n²], A106609(n))`
-/

namespace A051712.P3189560093525809086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A106609 n)

end

end A051712.P3189560093525809086

namespace A051712

/-- `gcd(∑[n²], A106609(n))` -/
def P3189560093525809086.Spec : Prop :=
  ∀ n, (P3189560093525809086.a n : ℤ) = A051712 (n + 1)

end A051712

/-! ## A051712.P2406765886528585234

`A051724(n*(n%2+1)/2)`
-/

namespace A051712.P2406765886528585234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway (((n * (n % 2 + 1) : ℕ) : ℚ) / 2)).toNat

end

end A051712.P2406765886528585234

namespace A051712

/-- `A051724(n*(n%2+1)/2)` -/
def P2406765886528585234.Spec : Prop :=
  ∀ n, P2406765886528585234.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P10069913940513768524

`A051724(n/val(2*or(2, n), 2))`
-/

namespace A051712.P10069913940513768524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((n : ℚ) / (SequenceMachineLib.valuation (2 * Nat.lor 2 n) 2 : ℚ))).toNat

end

end A051712.P10069913940513768524

namespace A051712

/-- `A051724(n/val(2*or(2, n), 2))` -/
def P10069913940513768524.Spec : Prop :=
  ∀ n, P10069913940513768524.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P4086534064912042065

`A051724(n*∑[and(1, n)]-C(n, 2))`
-/

namespace A051712.P4086534064912042065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n * (∑ j ∈ Finset.range (n + 1), f1 j) - Nat.choose n 2)

end

end A051712.P4086534064912042065

namespace A051712

/-- `A051724(n*∑[and(1, n)]-C(n, 2))` -/
def P4086534064912042065.Spec : Prop :=
  ∀ n, P4086534064912042065.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P16599810334094213851

`A051724(A026741(n))`
-/

namespace A051712.P16599810334094213851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A026741 n).toNat

end

end A051712.P16599810334094213851

namespace A051712

/-- `A051724(A026741(n))` -/
def P16599810334094213851.Spec : Prop :=
  ∀ n, P16599810334094213851.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P4320345590225885860

`A106609(A051176(n))`
-/

namespace A051712.P4320345590225885860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A051176 n).toNat

end

end A051712.P4320345590225885860

namespace A051712

/-- `A106609(A051176(n))` -/
def P4320345590225885860.Spec : Prop :=
  ∀ n, P4320345590225885860.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P8563191964824679769

`A026741(n/A109015(n))`
-/

namespace A051712.P8563191964824679769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109015 n : ℚ))).toNat

end

end A051712.P8563191964824679769

namespace A051712

/-- `A026741(n/A109015(n))` -/
def P8563191964824679769.Spec : Prop :=
  ∀ n, P8563191964824679769.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P16875939581317218401

`A051176(n/A109011(n))`
-/

namespace A051712.P16875939581317218401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n : ℚ) / (A109011 n : ℚ))).toNat

end

end A051712.P16875939581317218401

namespace A051712

/-- `A051176(n/A109011(n))` -/
def P16875939581317218401.Spec : Prop :=
  ∀ n, P16875939581317218401.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P16631685050637665313

`A106609(n/A109007(n))`
-/

namespace A051712.P16631685050637665313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway ((n : ℚ) / (A109007 n : ℚ))).toNat

end

end A051712.P16631685050637665313

namespace A051712

/-- `A106609(n/A109007(n))` -/
def P16631685050637665313.Spec : Prop :=
  ∀ n, P16631685050637665313.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P14889196676100459163

`gcd(A000292(n), A059616(n))`
-/

namespace A051712.P14889196676100459163
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000292 n) (A059616 n)

end

end A051712.P14889196676100459163

namespace A051712

/-- `gcd(A000292(n), A059616(n))` -/
def P14889196676100459163.Spec : Prop :=
  ∀ n, (P14889196676100459163.a n : ℤ) = A051712 (n + 1)

end A051712

/-! ## A051712.P15738210893804554093

`gcd(A051724(n), A053527(n))`
-/

namespace A051712.P15738210893804554093
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051724 n) (A053527 n)

end

end A051712.P15738210893804554093

namespace A051712

/-- `gcd(A051724(n), A053527(n))` -/
def P15738210893804554093.Spec : Prop :=
  ∀ n, (P15738210893804554093.a n : ℤ) = A051712 (n + 1)

end A051712

/-! ## A051712.P14529988645790997642

`gcd(A004282(n), A125650(n))`
-/

namespace A051712.P14529988645790997642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004282 n) (A125650 n)

end

end A051712.P14529988645790997642

namespace A051712

/-- `gcd(A004282(n), A125650(n))` -/
def P14529988645790997642.Spec : Prop :=
  ∀ n, (P14529988645790997642.a n : ℤ) = A051712 (n + 1)

end A051712

/-! ## A051712.P8799411318412300344

`A051724(n/2*A000034(n))`
-/

namespace A051712.P8799411318412300344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((n : ℚ) / 2 * (A000034 n : ℚ))).toNat

end

end A051712.P8799411318412300344

namespace A051712

/-- `A051724(n/2*A000034(n))` -/
def P8799411318412300344.Spec : Prop :=
  ∀ n, P8799411318412300344.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P7394487489528457514

`gcd(A064322(n), A264388(n+1))`
-/

namespace A051712.P7394487489528457514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064322 n) (A264388 (n + 1))

end

end A051712.P7394487489528457514

namespace A051712

/-- `gcd(A064322(n), A264388(n+1))` -/
def P7394487489528457514.Spec : Prop :=
  ∀ n, (P7394487489528457514.a n : ℤ) = A051712 (n + 1)

end A051712

/-! ## A051712.P10153187458814728868

`A026741(gcd(C(n, 4), A050407(n)))`
-/

namespace A051712.P10153187458814728868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (Nat.choose n 4 : ℤ) (A050407 n))

end

end A051712.P10153187458814728868

namespace A051712

/-- `A026741(gcd(C(n, 4), A050407(n)))` -/
def P10153187458814728868.Spec : Prop :=
  ∀ n, P10153187458814728868.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P2952213983465186729

`A051724(A066830(n+1)/(n+2))`
-/

namespace A051712.P2952213983465186729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((A066830 (n + 1) : ℚ) / (n + 2 : ℚ))).toNat

end

end A051712.P2952213983465186729

namespace A051712

/-- `A051724(A066830(n+1)/(n+2))` -/
def P2952213983465186729.Spec : Prop :=
  ∀ n, P2952213983465186729.a n = A051712 (n + 1)

end A051712

/-! ## A051712.P13302633077366925412

`A051176(A026741(A214392(n)))`
-/

namespace A051712.P13302633077366925412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A026741 (A214392 n).toNat).toNat

end

end A051712.P13302633077366925412

namespace A051712

/-- `A051176(A026741(A214392(n)))` -/
def P13302633077366925412.Spec : Prop :=
  ∀ n, P13302633077366925412.a n = A051712 (n + 1)

end A051712

/-!
# A051713: Denominator of b(n)-b(n+1), where b(n) = n/((n+1)(n+2)) = A026741/A045896.

The programs for A051713, the canonical program `A051713.P6671384641296016121` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051713 has offset 1).

The definition of A051713 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051713.P6671384641296016121

`A112415(n)/gcd(∑[n], A112415(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051713

/-- `A112415(n)/gcd(∑[n], A112415(n))` -/
def P6671384641296016121.Spec : Prop :=
  ∀ n, P6671384641296016121.a n = (A051713 (n + 1) : ℚ)

end A051713

/-! ## A051713.P12067292942236261423

`A033486(n+1)/gcd(A000217(n), A033486(n+1))`
-/

namespace A051713.P12067292942236261423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033486 (n + 1) : ℚ) / (Int.gcd (A000217 n) (A033486 (n + 1)) : ℚ)

end

end A051713.P12067292942236261423

namespace A051713

/-- `A033486(n+1)/gcd(A000217(n), A033486(n+1))` -/
def P12067292942236261423.Spec : Prop :=
  ∀ n, P12067292942236261423.a n = (A051713 (n + 1) : ℚ)

end A051713

/-! ## A051713.P5249864252665441175

`A007531(n+4)/gcd(n, A007531(n+4))`
-/

namespace A051713.P5249864252665441175
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007531 (n + 4) : ℚ) / (Int.gcd (n : ℤ) (A007531 (n + 4)) : ℚ)

end

end A051713.P5249864252665441175

namespace A051713

/-- `A007531(n+4)/gcd(n, A007531(n+4))` -/
def P5249864252665441175.Spec : Prop :=
  ∀ n, P5249864252665441175.a n = (A051713 (n + 1) : ℚ)

end A051713

/-! ## A051713.P11089507197101670950

`gcd(6, n+1)*A193220(n)`
-/

namespace A051713.P11089507197101670950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (n + 1) : ℤ) * A193220 n

end

end A051713.P11089507197101670950

namespace A051713

/-- `gcd(6, n+1)*A193220(n)` -/
def P11089507197101670950.Spec : Prop :=
  ∀ n, P11089507197101670950.a n = A051713 (n + 1)

end A051713

/-!
# A051716: Numerators of Bernoulli twin numbers C(n).

The programs for A051716, there is no canonical definition to state claims against.
-/

/-! ## A051716.P16875013488344979129

`A172086(2*A094497(n)+n)`
-/

namespace A051716.P16875013488344979129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 (2 * A094497 n + (n : ℤ)).toNat

end

end A051716.P16875013488344979129

/-! ## A051716.P9216785470922067484

`A172086(a(A155828(n))+n+1)` with `a(0)=1`
-/

namespace A051716.P9216785470922067484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A172086 (a (A155828 n).toNat + (n + 1 : ℤ)).toNat

end

end A051716.P9216785470922067484

/-! ## A051716.P9841093810759983894

`A172086(C(2, n)+A000007(n)+n)`
-/

namespace A051716.P9841093810759983894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 ((Nat.choose 2 n : ℤ) + (A000007 n + (n : ℤ))).toNat

end

end A051716.P9841093810759983894

/-! ## A051716.P6452666259605155412

`A172086(C(2, n)+n+1-A057427(n))`
-/

namespace A051716.P6452666259605155412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 ((Nat.choose 2 n + (n + 1) : ℤ) - A057427 n).toNat

end

end A051716.P6452666259605155412

/-! ## A051716.P11482206203299189912

`A172086(n)+A100218(A000124(n))`
-/

namespace A051716.P11482206203299189912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172086 n + A100218 (A000124 n).toNat

end

end A051716.P11482206203299189912

/-!
# A051717: 1, followed by denominators of first differences of Bernoulli numbers (B(i)-B(i-1)).

The programs for A051717, the canonical program `A051717.P719788567158624044` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051717 has offset 0).

The definition of A051717 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1292 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051717.P7714798026518144023

`lcm(A020639(comp[2*(n+2)]+1), A172087(n))`
-/

namespace A051717.P7714798026518144023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020639 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)) (A172087 n)

end

end A051717.P7714798026518144023

namespace A051717

/-- `lcm(A020639(comp[2*(n+2)]+1), A172087(n))` -/
def P7714798026518144023.Spec : Prop :=
  ∀ n, (P7714798026518144023.a n : ℤ) = A051717 n

end A051717

/-! ## A051717.P719788567158624044

`lcm(A000034(n), A132084(floor(n/2)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A051717

/-- `lcm(A000034(n), A132084(floor(n/2)))` -/
def P719788567158624044.Spec : Prop :=
  ∀ n, (P719788567158624044.a n : ℤ) = A051717 n

theorem P719788567158624044.correct : P719788567158624044.Spec := by
  intro n
  simp only [A051717]

end A051717

/-! ## A051717.P12718325992238832477

`lcm(n%2+1, A132084(A004526(n)))`
-/

namespace A051717.P12718325992238832477
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n % 2 + 1 : ℕ) : ℤ) (A132084 (A004526 n).toNat)

end

end A051717.P12718325992238832477

namespace A051717

/-- `lcm(n%2+1, A132084(A004526(n)))` -/
def P12718325992238832477.Spec : Prop :=
  ∀ n, (P12718325992238832477.a n : ℤ) = A051717 n

end A051717

/-! ## A051717.P14644665051318457046

`lcm(A014963(n+1), A132084(A004526(n)))`
-/

namespace A051717.P14644665051318457046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 1)) (A132084 (A004526 n).toNat)

end

end A051717.P14644665051318457046

namespace A051717

/-- `lcm(A014963(n+1), A132084(A004526(n)))` -/
def P14644665051318457046.Spec : Prop :=
  ∀ n, (P14644665051318457046.a n : ℤ) = A051717 n

end A051717

/-! ## A051717.P1006039068911332777

`A051715(∑[n-char[1]]+n)`
-/

namespace A051717.P1006039068911332777
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)).toNat

end

end A051717.P1006039068911332777

namespace A051717

/-- `A051715(∑[n-char[1]]+n)` -/
def P1006039068911332777.Spec : Prop :=
  ∀ n, P1006039068911332777.a n = A051717 n

end A051717

/-! ## A051717.P15290254736873540049

`A132084(A004526(n))*A329684(A183043(∑[n]+n))`
-/

namespace A051717.P15290254736873540049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132084 (A004526 n).toNat * A329684 (A183043 (∑ j ∈ Finset.range (n + 1), f1 j + n)).toNat

end

end A051717.P15290254736873540049

namespace A051717

/-- `A132084(A004526(n))*A329684(A183043(∑[n]+n))` -/
def P15290254736873540049.Spec : Prop :=
  ∀ n, P15290254736873540049.a n = A051717 n

end A051717

/-!
# A051718: Numerators of column 2 of table described in A051714/A051715.

The programs for A051718, there is no canonical definition to state claims against.
-/

/-! ## A051718.P9597656954562839695

`A051714(∑[n+3])`
-/

namespace A051718.P9597656954562839695
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051718.P9597656954562839695

/-! ## A051718.P17911721711104013344

`or(1, A051714(A055998(n+1)))`
-/

namespace A051718.P17911721711104013344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051714 (A055998 (n + 1)).toNat)

end

end A051718.P17911721711104013344

/-! ## A051718.P4937943199077048787

`or(1, A051714(A165157(2*(n+1))))`
-/

namespace A051718.P4937943199077048787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051714 (A165157 (2 * (n + 1))).toNat)

end

end A051718.P4937943199077048787

/-! ## A051718.P1614197784319867047

`A020985(n)²*A051714(A165157(2*n+2))`
-/

namespace A051718.P1614197784319867047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A051714 (A165157 (2 * n + 2)).toNat

end

end A051718.P1614197784319867047

/-! ## A051718.P10363717344909166598

`A051714(A165157(2*n+2))+A000007(n+1)`
-/

namespace A051718.P10363717344909166598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A165157 (2 * n + 2)).toNat + A000007 (n + 1)

end

end A051718.P10363717344909166598

/-! ## A051718.P4702363954832203394

`A005408(n)%2*A051714(A165157(2*n+2))`
-/

namespace A051718.P4702363954832203394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n) 2 * A051714 (A165157 (2 * n + 2)).toNat

end

end A051718.P4702363954832203394

/-! ## A051718.P2817501505606266248

`A142150(2*n+1)+A051714(A165157(2*(n+1)))`
-/

namespace A051718.P2817501505606266248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (2 * n + 1) + A051714 (A165157 (2 * (n + 1))).toNat

end

end A051718.P2817501505606266248

/-! ## A051718.P2735779950046867043

`A014963(A008458(n))*A051714(A165157(2*n+2))`
-/

namespace A051718.P2735779950046867043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A051714 (A165157 (2 * n + 2)).toNat

end

end A051718.P2735779950046867043

/-!
# A051719: Denominators of column 2 of table described in A051714/A051715.

The programs for A051719, there is no canonical definition to state claims against.
-/

/-! ## A051719.P14605526470646571999

`A051715(∑[n+3])`
-/

namespace A051719.P14605526470646571999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051719.P14605526470646571999

/-! ## A051719.P14566480800147167738

`abs(1-A051715(A027379(n+1)))+1`
-/

namespace A051719.P14566480800147167738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A051715 (A027379 (n + 1)).toNat| + 1

end

end A051719.P14566480800147167738

/-! ## A051719.P2560063571896434823

`char[A106610(n)]*A051715(A027379(n+1))`
-/

namespace A051719.P2560063571896434823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106610 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051715 (A027379 (n + 1)).toNat

end

end A051719.P2560063571896434823

/-! ## A051719.P15558667408466656931

`A051715(A027379(n+1))%A016760(n+1)`
-/

namespace A051719.P15558667408466656931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051715 (A027379 (n + 1)).toNat) (A016760 (n + 1))

end

end A051719.P15558667408466656931

/-! ## A051719.P7218247612265918449

`char[A265910(2*n+1)]*A051715(A027379(n+1))`
-/

namespace A051719.P7218247612265918449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265910 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A051715 (A027379 (n + 1)).toNat

end

end A051719.P7218247612265918449

/-! ## A051719.P6582706789904274425

`A007318(A000217(n))*A051715(A027379(n+1))`
-/

namespace A051719.P6582706789904274425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A051715 (A027379 (n + 1)).toNat

end

end A051719.P6582706789904274425

/-!
# A051720: Numerators of column 3 of table described in A051714/A051715.

The programs for A051720, there is no canonical definition to state claims against.
-/

/-! ## A051720.P4185711869388776309

`A051714(∑[n+4]+2)`
-/

namespace A051720.P4185711869388776309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A051720.P4185711869388776309

/-! ## A051720.P14879553411414492360

`A051714(A046691(n+2))^A052409(n²+1)`
-/

namespace A051720.P14879553411414492360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051714 (A046691 (n + 2)).toNat : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ)

end

end A051720.P14879553411414492360

/-! ## A051720.P9108072862774162336

`A051714(A046691(n+2))+A035363(2*n+1)`
-/

namespace A051720.P9108072862774162336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A046691 (n + 2)).toNat + A035363 (2 * n + 1)

end

end A051720.P9108072862774162336

/-! ## A051720.P16478215714677054810

`A297330(A034444(n+1))+A051714(A046691(n+2))`
-/

namespace A051720.P16478215714677054810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297330 (A034444 (n + 1)).toNat + A051714 (A046691 (n + 2)).toNat

end

end A051720.P16478215714677054810

/-! ## A051720.P11250359862545334521

`A155161(A000217(3*(n+1)))+A051714(A046691(n+2))`
-/

namespace A051720.P11250359862545334521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 (A000217 (3 * (n + 1))).toNat + A051714 (A046691 (n + 2)).toNat

end

end A051720.P11250359862545334521

/-!
# A051721: Denominators of column 3 of table described in A051714/A051715.

The programs for A051721, there is no canonical definition to state claims against.
-/

/-! ## A051721.P7924663090068536349

`A051715(∑[n+3]+n+3)`
-/

namespace A051721.P7924663090068536349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A051721.P7924663090068536349

/-! ## A051721.P6820024504790430372

`A344678(or(A086177(n+2), A143711(n+1)))`
-/

namespace A051721.P6820024504790430372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344678 (Int.lor (A086177 (n + 2)) (A143711 (n + 1))).toNat

end

end A051721.P6820024504790430372

/-!
# A051722: Numerators of row 4 of table described in A051714/A051715.

The programs for A051722, there is no canonical definition to state claims against.
-/

/-! ## A051722.P12723800402423116889

`A051714(∑[n+4]+10)`
-/

namespace A051722.P12723800402423116889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A051722.P12723800402423116889

/-! ## A051722.P8652221346115585921

`A051714(A145018(n+5))+val(A000265(n+1), 2)`
-/

namespace A051722.P8652221346115585921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A145018 (n + 5)).toNat + (SequenceMachineLib.valuation (A000265 (n + 1)).toNat 2 : ℤ)

end

end A051722.P8652221346115585921

/-! ## A051722.P2043735048103851712

`A051714(A145018(n+5))+val(A001359(n+1), 2)`
-/

namespace A051722.P2043735048103851712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A145018 (n + 5)).toNat + (SequenceMachineLib.valuation (A001359 (n + 1)).toNat 2 : ℤ)

end

end A051722.P2043735048103851712

/-! ## A051722.P10476745236774918977

`A051714(A145018(n+5))+val(A191106(n+1), 2)`
-/

namespace A051722.P10476745236774918977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A145018 (n + 5)).toNat + (SequenceMachineLib.valuation (A191106 (n + 1)).toNat 2 : ℤ)

end

end A051722.P10476745236774918977

/-! ## A051722.P1663936495706435407

`A051714(A145018(n+5))+val(A059987(n+1), 3)`
-/

namespace A051722.P1663936495706435407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A145018 (n + 5)).toNat + (SequenceMachineLib.valuation (A059987 (n + 1)).toNat 3 : ℤ)

end

end A051722.P1663936495706435407

/-! ## A051722.P12316200951340969338

`A051714(A145018(n+5))+val(A059981(n+1), 20)`
-/

namespace A051722.P12316200951340969338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051714 (A145018 (n + 5)).toNat + (SequenceMachineLib.valuation (A059981 (n + 1)).toNat 20 : ℤ)

end

end A051722.P12316200951340969338

/-! ## A051722.P8742318377575131422

`A051714(A145018(n+5))%A068444(n)`
-/

namespace A051722.P8742318377575131422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051714 (A145018 (n + 5)).toNat) (A068444 n)

end

end A051722.P8742318377575131422

/-!
# A051723: Denominators of row 4 of table described in A051714/A051715.

The programs for A051723, there is no canonical definition to state claims against.
-/

/-! ## A051723.P12640188847520140334

`A051715(∑[n+4]+10)`
-/

namespace A051723.P12640188847520140334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A051723.P12640188847520140334

/-! ## A051723.P16542738119190621852

`or(A000038(n), A051715(A145018(n+5)))`
-/

namespace A051723.P16542738119190621852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A051715 (A145018 (n + 5)).toNat)

end

end A051723.P16542738119190621852

/-! ## A051723.P8336612480427220512

`A051715(A145018(n+5))%A290503(n+1)`
-/

namespace A051723.P8336612480427220512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051715 (A145018 (n + 5)).toNat) (A290503 (n + 1))

end

end A051723.P8336612480427220512

/-! ## A051723.P5199245652201843742

`lcm(A014963(n+2), A051715(A145018(n+5)))`
-/

namespace A051723.P5199245652201843742
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014963 (n + 2)) (A051715 (A145018 (n + 5)).toNat)

end

end A051723.P5199245652201843742

/-! ## A051723.P9278007280404884169

`A051715(A145018(n+5))+A007814(2*n+1)`
-/

namespace A051723.P9278007280404884169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051715 (A145018 (n + 5)).toNat + A007814 (2 * n + 1)

end

end A051723.P9278007280404884169

/-!
# A051724: Numerator of n/12.

The programs for A051724, the canonical program `A051724.P8825803802415537857` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051724 has offset 0).

The definition of A051724 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051724.P8825803802415537857

`lcm(n, 12)/12`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051724

/-- `lcm(n, 12)/12` -/
def P8825803802415537857.Spec : Prop :=
  ∀ n, P8825803802415537857.a n = (A051724 n : ℚ)

end A051724

/-! ## A051724.P11381543476687772274

`n/gcd(n, 12)`
-/

namespace A051724.P11381543476687772274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd n 12 : ℚ)

end

end A051724.P11381543476687772274

namespace A051724

/-- `n/gcd(n, 12)` -/
def P11381543476687772274.Spec : Prop :=
  ∀ n, P11381543476687772274.a n = (A051724 n : ℚ)

end A051724

/-! ## A051724.P4428153171752340115

`A109053(n)/12`
-/

namespace A051724.P4428153171752340115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109053 n : ℚ) / 12

end

end A051724.P4428153171752340115

namespace A051724

/-- `A109053(n)/12` -/
def P4428153171752340115.Spec : Prop :=
  ∀ n, P4428153171752340115.a n = (A051724 n : ℚ)

end A051724

/-! ## A051724.P11197055914206242547

`gcd(1-∑[∑[n+1]], ∑[∑[∑[n]]])`
-/

namespace A051724.P11197055914206242547
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A051724.P11197055914206242547

namespace A051724

/-- `gcd(1-∑[∑[n+1]], ∑[∑[∑[n]]])` -/
def P11197055914206242547.Spec : Prop :=
  ∀ n, (P11197055914206242547.a n : ℤ) = A051724 n

end A051724

/-! ## A051724.P8139678714939100217

`n/A109015(n)`
-/

namespace A051724.P8139678714939100217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A109015 n : ℚ)

end

end A051724.P8139678714939100217

namespace A051724

/-- `n/A109015(n)` -/
def P8139678714939100217.Spec : Prop :=
  ∀ n, P8139678714939100217.a n = (A051724 n : ℚ)

end A051724

/-! ## A051724.P3640720509017366394

`A026741(n/A089128(n))`
-/

namespace A051724.P3640720509017366394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A089128 n : ℚ))).toNat

end

end A051724.P3640720509017366394

namespace A051724

/-- `A026741(n/A089128(n))` -/
def P3640720509017366394.Spec : Prop :=
  ∀ n, P3640720509017366394.a n = A051724 n

end A051724

/-! ## A051724.P5513610219215678501

`A051176(n/A109008(n))`
-/

namespace A051724.P5513610219215678501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((n : ℚ) / (A109008 n : ℚ))).toNat

end

end A051724.P5513610219215678501

namespace A051724

/-- `A051176(n/A109008(n))` -/
def P5513610219215678501.Spec : Prop :=
  ∀ n, P5513610219215678501.a n = A051724 n

end A051724

/-! ## A051724.P4048837682687574532

`A026741(gcd(∑[n²], A026741(n)))`
-/

namespace A051724.P4048837682687574532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A026741 n))

end

end A051724.P4048837682687574532

namespace A051724

/-- `A026741(gcd(∑[n²], A026741(n)))` -/
def P4048837682687574532.Spec : Prop :=
  ∀ n, P4048837682687574532.a n = A051724 n

end A051724

/-! ## A051724.P3799176030987326851

`A051176(A026741(A026741(n)))`
-/

namespace A051724.P3799176030987326851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A026741 (A026741 n).toNat).toNat

end

end A051724.P3799176030987326851

namespace A051724

/-- `A051176(A026741(A026741(n)))` -/
def P3799176030987326851.Spec : Prop :=
  ∀ n, P3799176030987326851.a n = A051724 n

end A051724

/-! ## A051724.P12796576489921943833

`A214392(A283971(A051176(n)))`
-/

namespace A051724.P12796576489921943833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214392 (A283971 (A051176 n).toNat).toNat

end

end A051724.P12796576489921943833

namespace A051724

/-- `A214392(A283971(A051176(n)))` -/
def P12796576489921943833.Spec : Prop :=
  ∀ n, P12796576489921943833.a n = A051724 n

end A051724

/-! ## A051724.P12813628866007240330

`A026741(A026741(n/A109007(n)))`
-/

namespace A051724.P12813628866007240330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A109007 n : ℚ))).toNat).toNat

end

end A051724.P12813628866007240330

namespace A051724

/-- `A026741(A026741(n/A109007(n)))` -/
def P12813628866007240330.Spec : Prop :=
  ∀ n, P12813628866007240330.a n = A051724 n

end A051724

/-! ## A051724.P6692620716680113584

`A283971(A051176(n))/A010121(n)`
-/

namespace A051724.P6692620716680113584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283971 (A051176 n).toNat : ℚ) / (A010121 n : ℚ)

end

end A051724.P6692620716680113584

namespace A051724

/-- `A283971(A051176(n))/A010121(n)` -/
def P6692620716680113584.Spec : Prop :=
  ∀ n, P6692620716680113584.a n = (A051724 n : ℚ)

end A051724

/-! ## A051724.P18218390552976259342

`A026741(gcd(A064680(n), A130724(n)))`
-/

namespace A051724.P18218390552976259342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.gcd (A064680 n) (A130724 n))

end

end A051724.P18218390552976259342

namespace A051724

/-- `A026741(gcd(A064680(n), A130724(n)))` -/
def P18218390552976259342.Spec : Prop :=
  ∀ n, P18218390552976259342.a n = A051724 n

end A051724

/-! ## A051724.P14421811972441752543

`A051176(A064038(n+1)/A060819(n+1))`
-/

namespace A051724.P14421811972441752543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (SequenceMachineLib.roundAway ((A064038 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ))).toNat

end

end A051724.P14421811972441752543

namespace A051724

/-- `A051176(A064038(n+1)/A060819(n+1))` -/
def P14421811972441752543.Spec : Prop :=
  ∀ n, P14421811972441752543.a n = A051724 n

end A051724

/-! ## A051724.P8837790865576939427

`A026741(n/A089145(n+3))`
-/

namespace A051724.P8837790865576939427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway ((n : ℚ) / (A089145 (n + 3) : ℚ))).toNat

end

end A051724.P8837790865576939427

namespace A051724

/-- `A026741(n/A089145(n+3))` -/
def P8837790865576939427.Spec : Prop :=
  ∀ n, P8837790865576939427.a n = A051724 n

end A051724

/-! ## A051724.P16572729514235063872

`A146306(n+6)`
-/

namespace A051724.P16572729514235063872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146306 (n + 6)

end

end A051724.P16572729514235063872

namespace A051724

/-- `A146306(n+6)` -/
def P16572729514235063872.Spec : Prop :=
  ∀ n, P16572729514235063872.a n = A051724 n

end A051724

/-! ## A051724.P13889044736361738854

`A106609(2*n/A109007(n))`
-/

namespace A051724.P13889044736361738854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / (A109007 n : ℚ)))).toNat

end

end A051724.P13889044736361738854

namespace A051724

/-- `A106609(2*n/A109007(n))` -/
def P13889044736361738854.Spec : Prop :=
  ∀ n, P13889044736361738854.a n = A051724 n

end A051724

/-! ## A051724.P896116189061015505

`A106609(A051176(n)+A051176(n))`
-/

namespace A051724.P896116189061015505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A051176 n + A051176 n).toNat

end

end A051724.P896116189061015505

namespace A051724

/-- `A106609(A051176(n)+A051176(n))` -/
def P896116189061015505.Spec : Prop :=
  ∀ n, P896116189061015505.a n = A051724 n

end A051724

/-! ## A051724.P15012430781091623679

`A106609(A109044(n)-A051176(n))`
-/

namespace A051724.P15012430781091623679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106609 (A109044 n - A051176 n).toNat

end

end A051724.P15012430781091623679

namespace A051724

/-- `A106609(A109044(n)-A051176(n))` -/
def P15012430781091623679.Spec : Prop :=
  ∀ n, P15012430781091623679.a n = A051724 n

end A051724

/-! ## A051724.P8825731555520262417

`A051176(A106609(2*n))`
-/

namespace A051724.P8825731555520262417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A106609 (2 * n)).toNat

end

end A051724.P8825731555520262417

namespace A051724

/-- `A051176(A106609(2*n))` -/
def P8825731555520262417.Spec : Prop :=
  ∀ n, P8825731555520262417.a n = A051724 n

end A051724

/-!
# A051725: Denominator of n/12.

The programs for A051725, the canonical program `A051725.P11300003535364123409` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051725 has offset 0).

The definition of A051725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051725.P11300003535364123409

`12/gcd(12, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051725

/-- `12/gcd(12, n)` -/
def P11300003535364123409.Spec : Prop :=
  ∀ n, P11300003535364123409.a n = (A051725 n : ℚ)

end A051725

/-!
# A051726: Numerator of n*(n-1)*(n-2)/720.

The programs for A051726, there is no canonical definition to state claims against.
-/

/-! ## A051726.P6759104984229306229

`A106611(A051724(C(n, 3)))`
-/

namespace A051726.P6759104984229306229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A051724 (Nat.choose n 3)).toNat

end

end A051726.P6759104984229306229

/-! ## A051726.P17547538637891280260

`A106616(A106609(C(n, 3)))`
-/

namespace A051726.P17547538637891280260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106616 (A106609 (Nat.choose n 3)).toNat

end

end A051726.P17547538637891280260

/-! ## A051726.P843538922094390669

`A106611(A051724(∑[∑[n]]-n²))`
-/

namespace A051726.P843538922094390669
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A051724 (∑ j ∈ Finset.range (n + 1), f1 j - n ^ 2)).toNat

end

end A051726.P843538922094390669

/-! ## A051726.P8214297619646383064

`A093411(8*A280058(n))`
-/

namespace A051726.P8214297619646383064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (8 * A280058 n).toNat

end

end A051726.P8214297619646383064

/-! ## A051726.P5388538704319020761

`A093411(16*A007531(n))`
-/

namespace A051726.P5388538704319020761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (16 * A007531 n).toNat

end

end A051726.P5388538704319020761

/-!
# A051728: Smallest number at distance 2n from nearest prime.

The programs for A051728, there is no canonical definition to state claims against.
-/

/-! ## A051728.P15526784470882467657

`A051652(2*n)`
-/

namespace A051728.P15526784470882467657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (2 * n)

end

end A051728.P15526784470882467657

/-! ## A051728.P10557076782786064496

`or(char[2], A051652(A005843(n)))`
-/

namespace A051728.P10557076782786064496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A051652 (A005843 n).toNat)

end

end A051728.P10557076782786064496

/-! ## A051728.P16378639836949220390

`floor(A051652(A004277(n))+acot(n))`
-/

namespace A051728.P16378639836949220390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A051652 (A004277 n).toNat : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A051728.P16378639836949220390

/-! ## A051728.P3038670791684414616

`A051652(A028310(n)+n)+floor(acot(n))`
-/

namespace A051728.P3038670791684414616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A028310 n + (n : ℤ)).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A051728.P3038670791684414616

/-! ## A051728.P7230399870691767874

`A051652(record[A185048(n+1)])+C(2, n+2)`
-/

namespace A051728.P7230399870691767874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + (Nat.choose 2 (n + 2) : ℤ)

end

end A051728.P7230399870691767874

/-! ## A051728.P6212830272274484538

`A051652(A004277(n))+A000007(n)`
-/

namespace A051728.P6212830272274484538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A004277 n).toNat + A000007 n

end

end A051728.P6212830272274484538

/-! ## A051728.P10773366569194685103

`A051652(A005843(n))/A007318(∑[n])`
-/

namespace A051728.P10773366569194685103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051652 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A051728.P10773366569194685103

/-! ## A051728.P2681682691791308117

`A051652(A004275(n+1))+A000007(n)`
-/

namespace A051728.P2681682691791308117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A004275 (n + 1)).toNat + A000007 n

end

end A051728.P2681682691791308117

/-! ## A051728.P7340300264511909095

`A051652(A005843(n))^A007318(C(2, n))`
-/

namespace A051728.P7340300264511909095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051652 (A005843 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A051728.P7340300264511909095

/-! ## A051728.P12147728985843850696

`A051652(A005843(n))+A000045(C(n, n+2))`
-/

namespace A051728.P12147728985843850696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A005843 n).toNat + A000045 (Nat.choose n (n + 2))

end

end A051728.P12147728985843850696

/-!
# A051729: Smallest number at distance 2n+1 from nearest prime.

The programs for A051729, there is no canonical definition to state claims against.
-/

/-! ## A051729.P3990852796911525631

`A051652(2*n+1)`
-/

namespace A051729.P3990852796911525631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (2 * n + 1)

end

end A051729.P3990852796911525631

/-! ## A051729.P1245920568360663063

`A077019(Δ[n²])`
-/

namespace A051729.P1245920568360663063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051729.P1245920568360663063

/-! ## A051729.P9914868886794440696

`A079582(Δ[n²])`
-/

namespace A051729.P9914868886794440696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079582 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051729.P9914868886794440696

/-! ## A051729.P3000224362283961266

`record[A051652(n^(n%2))]`
-/

namespace A051729.P3000224362283961266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (n ^ (n % 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P3000224362283961266

/-! ## A051729.P18398942420261039869

`record[A051652(n^and(1, n))]`
-/

namespace A051729.P18398942420261039869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P18398942420261039869

/-! ## A051729.P15897245352662986516

`record[A077019(n^and(1, n))]`
-/

namespace A051729.P15897245352662986516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (n ^ Nat.land 1 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P15897245352662986516

/-! ## A051729.P12234163304494686596

`record[A051652(A000265(n+1))]`
-/

namespace A051729.P12234163304494686596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P12234163304494686596

/-! ## A051729.P1950026780216321492

`record[A051652(A004275(n)+1)]`
-/

namespace A051729.P1950026780216321492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051652 (A004275 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P1950026780216321492

/-! ## A051729.P16742523202361610445

`record[A077019(A186421(n)+1)]`
-/

namespace A051729.P16742523202361610445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077019 (A186421 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P16742523202361610445

/-! ## A051729.P8134981255751229194

`record[A077019(n)/A019426(n+1)]`
-/

namespace A051729.P8134981255751229194
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077019 n : ℚ) / (A019426 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051729.P8134981255751229194

/-!
# A051730: Distance from A051650(n) to nearest prime.

The programs for A051730, there is no canonical definition to state claims against.
-/

/-! ## A051730.P16859278599083701817

`lt[1, A331969(A194061(n+2))]`
-/

namespace A051730.P16859278599083701817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331969 (A194061 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051730.P16859278599083701817

/-!
# A051731: Triangle read by rows: T(n, k) = 1 if k divides n, T(n, k) = 0 otherwise, for 1 <= k <= n.

The programs for A051731, the canonical program `A051731.P11318043630102858095` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051731 has offset 1).

The definition of A051731 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048158, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A051731.P11318043630102858095

`A000007(A048158(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A051731

/-- `A000007(A048158(n+1))` -/
def P11318043630102858095.Spec : Prop :=
  ∀ n, P11318043630102858095.a n = A051731 (n + 1)

theorem P11318043630102858095.correct : P11318043630102858095.Spec := by
  intro n
  simp only [A051731, Nat.add_sub_cancel]

end A051731

/-! ## A051731.P6101167466888276707

`A385674(n)%2`
-/

namespace A051731.P6101167466888276707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A385674 n) 2

end

end A051731.P6101167466888276707

namespace A051731

/-- `A385674(n)%2` -/
def P6101167466888276707.Spec : Prop :=
  ∀ n, P6101167466888276707.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P482000341242567025

`floor(sqrt(A114002(n)))`
-/

namespace A051731.P482000341242567025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A114002 n)

end

end A051731.P482000341242567025

namespace A051731

/-- `floor(sqrt(A114002(n)))` -/
def P482000341242567025.Spec : Prop :=
  ∀ n, P482000341242567025.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P18230521069596557720

`A130888(n+1)%2`
-/

namespace A051731.P18230521069596557720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130888 (n + 1)) 2

end

end A051731.P18230521069596557720

namespace A051731

/-- `A130888(n+1)%2` -/
def P18230521069596557720.Spec : Prop :=
  ∀ n, P18230521069596557720.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P7244220894846546156

`A134560(n+1)%2`
-/

namespace A051731.P7244220894846546156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134560 (n + 1)) 2

end

end A051731.P7244220894846546156

namespace A051731

/-- `A134560(n+1)%2` -/
def P7244220894846546156.Spec : Prop :=
  ∀ n, P7244220894846546156.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P3186227582746814299

`A143315(n+1)%2`
-/

namespace A051731.P3186227582746814299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143315 (n + 1)) 2

end

end A051731.P3186227582746814299

namespace A051731

/-- `A143315(n+1)%2` -/
def P3186227582746814299.Spec : Prop :=
  ∀ n, P3186227582746814299.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P1759673053255502507

`floor(sqrt(A131088(n+1)))`
-/

namespace A051731.P1759673053255502507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A131088 (n + 1))

end

end A051731.P1759673053255502507

namespace A051731

/-- `floor(sqrt(A131088(n+1)))` -/
def P1759673053255502507.Spec : Prop :=
  ∀ n, P1759673053255502507.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P201802740709773184

`floor(sqrt(A143110(n+1)))`
-/

namespace A051731.P201802740709773184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A143110 (n + 1))

end

end A051731.P201802740709773184

namespace A051731

/-- `floor(sqrt(A143110(n+1)))` -/
def P201802740709773184.Spec : Prop :=
  ∀ n, P201802740709773184.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P11530025811473316864

`∑{e}[A127639(n+1), #]`
-/

namespace A051731.P11530025811473316864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051731.P11530025811473316864

namespace A051731

/-- `∑{e}[A127639(n+1), #]` -/
def P11530025811473316864.Spec : Prop :=
  ∀ n, (P11530025811473316864.a n : ℤ) = A051731 (n + 1)

end A051731

/-! ## A051731.P11592353504320583000

`∑{e}[A127641(n+1), #]`
-/

namespace A051731.P11592353504320583000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127641 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051731.P11592353504320583000

namespace A051731

/-- `∑{e}[A127641(n+1), #]` -/
def P11592353504320583000.Spec : Prop :=
  ∀ n, (P11592353504320583000.a n : ℤ) = A051731 (n + 1)

end A051731

/-! ## A051731.P9790894271032690957

`1-floor(acot(A127168(n)))`
-/

namespace A051731.P9790894271032690957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊SequenceMachineLib.acot (A127168 n : ℝ)⌋

end

end A051731.P9790894271032690957

namespace A051731

/-- `1-floor(acot(A127168(n)))` -/
def P9790894271032690957.Spec : Prop :=
  ∀ n, P9790894271032690957.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P5773141024405508414

`round(acot(A164306(n+1)))`
-/

namespace A051731.P5773141024405508414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A164306 (n + 1) : ℝ))

end

end A051731.P5773141024405508414

namespace A051731

/-- `round(acot(A164306(n+1)))` -/
def P5773141024405508414.Spec : Prop :=
  ∀ n, P5773141024405508414.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P14816889971941233319

`C(2, A173541(n+1)²)`
-/

namespace A051731.P14816889971941233319
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A173541 (n + 1) ^ 2).toNat

end

end A051731.P14816889971941233319

namespace A051731

/-- `C(2, A173541(n+1)²)` -/
def P14816889971941233319.Spec : Prop :=
  ∀ n, (P14816889971941233319.a n : ℤ) = A051731 (n + 1)

end A051731

/-! ## A051731.P6525258473382186058

`floor(1/A107435(n+1))`
-/

namespace A051731.P6525258473382186058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A107435 (n + 1) : ℚ)⌋

end

end A051731.P6525258473382186058

namespace A051731

/-- `floor(1/A107435(n+1))` -/
def P6525258473382186058.Spec : Prop :=
  ∀ n, P6525258473382186058.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P1408142033542924176

`floor(1/A268057(n+1))`
-/

namespace A051731.P1408142033542924176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A268057 (n + 1) : ℚ)⌋

end

end A051731.P1408142033542924176

namespace A051731

/-- `floor(1/A268057(n+1))` -/
def P1408142033542924176.Spec : Prop :=
  ∀ n, P1408142033542924176.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P2592105635119278393

`ceil(A286563(n+1)/7)`
-/

namespace A051731.P2592105635119278393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286563 (n + 1) : ℚ) / 7⌉

end

end A051731.P2592105635119278393

namespace A051731

/-- `ceil(A286563(n+1)/7)` -/
def P2592105635119278393.Spec : Prop :=
  ∀ n, P2592105635119278393.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P14317990456361081438

`ceil(atan(atan(A127170(n+1))))`
-/

namespace A051731.P14317990456361081438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.arctan (Real.arctan (A127170 (n + 1) : ℝ))⌉

end

end A051731.P14317990456361081438

namespace A051731

/-- `ceil(atan(atan(A127170(n+1))))` -/
def P14317990456361081438.Spec : Prop :=
  ∀ n, P14317990456361081438.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P3000017260263067142

`ceil(A286239(n+1)/(n+1))`
-/

namespace A051731.P3000017260263067142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A286239 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

end

end A051731.P3000017260263067142

namespace A051731

/-- `ceil(A286239(n+1)/(n+1))` -/
def P3000017260263067142.Spec : Prop :=
  ∀ n, P3000017260263067142.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P9705011319049554602

`A000007(A049828(n+1))`
-/

namespace A051731.P9705011319049554602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A049828 (n + 1)).toNat

end

end A051731.P9705011319049554602

namespace A051731

/-- `A000007(A049828(n+1))` -/
def P9705011319049554602.Spec : Prop :=
  ∀ n, P9705011319049554602.a n = A051731 (n + 1)

end A051731

/-! ## A051731.P14015647905912218932

`A000001(A127639(n+1))`
-/

namespace A051731.P14015647905912218932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A127639 (n + 1)).toNat

end

end A051731.P14015647905912218932

namespace A051731

/-- `A000001(A127639(n+1))` -/
def P14015647905912218932.Spec : Prop :=
  ∀ n, P14015647905912218932.a n = A051731 (n + 1)

end A051731

/-!
# A051732: Number of rounds of shuffling required to restore a deck of n cards to its original order: shuffling is done by keeping first card, putting second at end of deck, keeping next, putting next at end and so on.

The programs for A051732, there is no canonical definition to state claims against.
-/

/-! ## A051732.P2621501572575732022

`A384184(Δ[n²])`
-/

namespace A051732.P2621501572575732022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384184 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A051732.P2621501572575732022

/-! ## A051732.P4731808670081932207

`A000027(A384184(2*n+1))`
-/

namespace A051732.P4731808670081932207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A384184 (2 * n + 1)).toNat

end

end A051732.P4731808670081932207

/-! ## A051732.P10140735982556260930

`filter[A384184(2*n+1), A307430(#)]`
-/

namespace A051732.P10140735982556260930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384184 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A307430 (f1 j).toNat = 1) n)

end

end A051732.P10140735982556260930

/-! ## A051732.P337007667647261874

`filter[A384184(2*n+1), A370598(#)]`
-/

namespace A051732.P337007667647261874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384184 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A370598 (f1 j).toNat = 1) n)

end

end A051732.P337007667647261874

/-! ## A051732.P3875665401469203898

`filter[A384184(2*n+1), A102609(#)]`
-/

namespace A051732.P3875665401469203898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384184 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A102609 (f1 j).toNat = 1) n)

end

end A051732.P3875665401469203898

/-!
# A051733: Numbers n such that A051732(n) = n-1.

The programs for A051733, there is no canonical definition to state claims against.
-/

/-! ## A051733.P15515036289884224441

`A217948(n+1)/2`
-/

namespace A051733.P15515036289884224441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217948 (n + 1) : ℚ) / 2

end

end A051733.P15515036289884224441

/-! ## A051733.P948694120948694857

`ceil(A001122(n+1)/2)`
-/

namespace A051733.P948694120948694857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001122 (n + 1) : ℚ) / 2⌉

end

end A051733.P948694120948694857

/-! ## A051733.P1459967731040999381

`(A050229(n+3)+1)/2`
-/

namespace A051733.P1459967731040999381
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050229 (n + 3) + 1 : ℚ) / 2

end

end A051733.P1459967731040999381

/-! ## A051733.P10967597311519676379

`A071642(n+3)/2+1`
-/

namespace A051733.P10967597311519676379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071642 (n + 3) : ℚ) / 2 + 1

end

end A051733.P10967597311519676379

/-! ## A051733.P10490907712990880184

`ceil(p?[A139099(n+1)]/2)`
-/

namespace A051733.P10490907712990880184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 2⌉

end

end A051733.P10490907712990880184

/-! ## A051733.P4327916498900040252

`(p?[A167791(n+1)]+1)/2`
-/

namespace A051733.P4327916498900040252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167791 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A051733.P4327916498900040252

/-! ## A051733.P1959497148153533769

`(A279185(A279185(n+1))+A001122(n+1))/2`
-/

namespace A051733.P1959497148153533769
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279185 (A279185 (n + 1)).toNat + A001122 (n + 1) : ℚ) / 2

end

end A051733.P1959497148153533769

/-! ## A051733.P4471009874378727157

`round(A001122(n+1)/A056619(2*n+3))`
-/

namespace A051733.P4471009874378727157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001122 (n + 1) : ℚ) / (A056619 (2 * n + 3) : ℚ))

end

end A051733.P4471009874378727157

/-! ## A051733.P11456441859008139808

`filter[A137606(n+2), A166486(#)]`
-/

namespace A051733.P11456441859008139808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A051733.P11456441859008139808

/-! ## A051733.P17826815509599343980

`(A179194(n+1)-1)/2`
-/

namespace A051733.P17826815509599343980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A179194 (n + 1) - 1 : ℚ) / 2

end

end A051733.P17826815509599343980

/-! ## A051733.P11947112144007810026

`record[A014664(n+2)/2+1]`
-/

namespace A051733.P11947112144007810026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014664 (n + 2) : ℚ) / 2 + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051733.P11947112144007810026

/-! ## A051733.P2960413002213539373

`A111333(A072190(n+1))`
-/

namespace A051733.P2960413002213539373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (A072190 (n + 1)).toNat

end

end A051733.P2960413002213539373

/-! ## A051733.P14862844338304649243

`record[(A005097(n+1)+1)/A001917(n+2)]`
-/

namespace A051733.P14862844338304649243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005097 (n + 1) + 1 : ℚ) / (A001917 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051733.P14862844338304649243

/-! ## A051733.P8412664610538812637

`A000203(A050229(n+3))/2`
-/

namespace A051733.P8412664610538812637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A050229 (n + 3)).toNat : ℚ) / 2

end

end A051733.P8412664610538812637

/-! ## A051733.P17927932012825868315

`record[A240657(n+2)+1]`
-/

namespace A051733.P17927932012825868315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240657 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051733.P17927932012825868315

/-! ## A051733.P8213426051245011860

`(A029883(A157971(n+1))+A001122(n+1))/2`
-/

namespace A051733.P8213426051245011860
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029883 (A157971 (n + 1)).toNat + A001122 (n + 1) : ℚ) / 2

end

end A051733.P8213426051245011860

/-! ## A051733.P5080817030094603751

`∩[A042964(n+1), A137606(n+1)]`
-/

namespace A051733.P5080817030094603751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051733.P5080817030094603751

/-! ## A051733.P17212112827523212873

`∩[A042964(n+1), A054639(n+1)+1]`
-/

namespace A051733.P17212112827523212873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042964 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054639 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051733.P17212112827523212873

/-! ## A051733.P1317317768130887362

`(p?[A319009(n+1)]+1)/2`
-/

namespace A051733.P1317317768130887362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319009 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1 : ℚ) / 2

end

end A051733.P1317317768130887362

/-! ## A051733.P7902342834278928641

`∩[A047586(n+1), A137606(n+1)]`
-/

namespace A051733.P7902342834278928641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051733.P7902342834278928641

/-!
# A051736: Number of 3 X n (0,1)-matrices with no consecutive 1's in any row or column.

The programs for A051736, the canonical program `A051736.P7695227722432717112` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051736 has offset 0).

The definition of A051736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051736.P7695227722432717112

`2*a(n-1)+6*a(n-2)-a(n-4)` with `a(0)=1, a(1)=5, a(2)=17, a(3)=63`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051736

/-- `2*a(n-1)+6*a(n-2)-a(n-4)` -/
def P7695227722432717112.Spec : Prop :=
  ∀ n, P7695227722432717112.a n = A051736 n

theorem P7695227722432717112.correct : P7695227722432717112.Spec := by
  intro n
  simp only [A051736]

end A051736

/-! ## A051736.P9238522314774224090

`sqrt(A208081(n+1))/5`
-/

namespace A051736.P9238522314774224090
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A208081 (n + 1) : ℝ) / 5

end

end A051736.P9238522314774224090

namespace A051736

/-- `sqrt(A208081(n+1))/5` -/
def P9238522314774224090.Spec : Prop :=
  ∀ n, P9238522314774224090.a n = (A051736 n : ℝ)

end A051736

/-! ## A051736.P12896329166271691335

`A089980(A167614(n+2))`
-/

namespace A051736.P12896329166271691335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A167614 (n + 2)).toNat

end

end A051736.P12896329166271691335

namespace A051736

/-- `A089980(A167614(n+2))` -/
def P12896329166271691335.Spec : Prop :=
  ∀ n, P12896329166271691335.a n = A051736 n

end A051736

/-! ## A051736.P8661903490845539397

`A089980(A000217(n+4)-(n+1))`
-/

namespace A051736.P8661903490845539397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A000217 (n + 4) - (n + 1 : ℤ)).toNat

end

end A051736.P8661903490845539397

namespace A051736

/-- `A089980(A000217(n+4)-(n+1))` -/
def P8661903490845539397.Spec : Prop :=
  ∀ n, P8661903490845539397.a n = A051736 n

end A051736

/-! ## A051736.P8856310060956918563

`A089934(A034856(n+1))-A000007(n)`
-/

namespace A051736.P8856310060956918563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089934 (A034856 (n + 1)).toNat - A000007 n

end

end A051736.P8856310060956918563

namespace A051736

/-- `A089934(A034856(n+1))-A000007(n)` -/
def P8856310060956918563.Spec : Prop :=
  ∀ n, P8856310060956918563.a n = A051736 n

end A051736

/-!
# A051737: Number of 4 X n (0,1)-matrices with no consecutive 1's in any row or column.

The programs for A051737, there is no canonical definition to state claims against.
-/

/-! ## A051737.P17831038524673632509

`A089980(A000217(n+4)+n)`
-/

namespace A051737.P17831038524673632509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089980 (A000217 (n + 4) + (n : ℤ)).toNat

end

end A051737.P17831038524673632509

/-!
# A051738: Number of rooted 2-dimensional polyominoes with n pentagonal cells, with no symmetries removed.

The programs for A051738, there is no canonical definition to state claims against.
-/

/-! ## A051738.P17845199839657096091

`A094166(∑[n+3]+1)`
-/

namespace A051738.P17845199839657096091
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A051738.P17845199839657096091

/-! ## A051738.P6789076811421320447

`record[A094166(A130297(n+1))]`
-/

namespace A051738.P6789076811421320447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094166 (A130297 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051738.P6789076811421320447

/-! ## A051738.P16473049448936745565

`record[and(A094166(n+1), A104975(n))]`
-/

namespace A051738.P16473049448936745565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094166 (n + 1)) (A104975 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051738.P16473049448936745565

/-! ## A051738.P9353906764284780295

`record[A023531(n+2)*A094166(n+1)]`
-/

namespace A051738.P9353906764284780295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 2) * A094166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051738.P9353906764284780295

/-!
# A051739: Primes of the form (k!)^2 + 1.

The programs for A051739, there is no canonical definition to state claims against.
-/

/-! ## A051739.P1874293782613262749

`record[A282706(n)]`
-/

namespace A051739.P1874293782613262749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051739.P1874293782613262749

/-! ## A051739.P6443752665044771195

`record[C(A301346(n), n!²)]`
-/

namespace A051739.P6443752665044771195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301346 n).toNat (Nat.factorial n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051739.P6443752665044771195

/-! ## A051739.P6273581192866723435

`A020549(A046029(n+2))`
-/

namespace A051739.P6273581192866723435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020549 (A046029 (n + 2)).toNat

end

end A051739.P6273581192866723435

/-! ## A051739.P6640772129139791797

`record[C(A301346(n), A001044(n))]`
-/

namespace A051739.P6640772129139791797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A301346 n).toNat (A001044 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051739.P6640772129139791797

/-! ## A051739.P7386294706895233133

`A282706(A046029(n+1)+Δ[A046029(n+1)])`
-/

namespace A051739.P7386294706895233133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282706 (A046029 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A051739.P7386294706895233133

/-!
# A051740: Partial sums of A007584.

The programs for A051740, the canonical program `A051740.P17250970843597280547` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051740 has offset 0).

The definition of A051740 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051740.P17250970843597280547

`(7*n+4)*C(n+3, 3)/4`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051740

/-- `(7*n+4)*C(n+3, 3)/4` -/
def P17250970843597280547.Spec : Prop :=
  ∀ n, P17250970843597280547.a n = (A051740 n : ℚ)

end A051740

/-! ## A051740.P985039893113589503

`∑[∑[∑[7*n+1]]]`
-/

namespace A051740.P985039893113589503
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P985039893113589503

namespace A051740

/-- `∑[∑[∑[7*n+1]]]` -/
def P985039893113589503.Spec : Prop :=
  ∀ n, (P985039893113589503.a n : ℤ) = A051740 n

end A051740

/-! ## A051740.P17583855772008289902

`floor(∑[∑[∑[a(n-1)+7]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A051740.P17583855772008289902
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 7

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P17583855772008289902

namespace A051740

/-- `floor(∑[∑[∑[a(n-1)+7]]])` -/
def P17583855772008289902.Spec : Prop :=
  ∀ n, (P17583855772008289902.a n : ℤ) = A051740 n

end A051740

/-! ## A051740.P13269373499068512543

`C(n+4, 4)+6*C(n+3, 4)`
-/

namespace A051740.P13269373499068512543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + 6 * Nat.choose (n + 3) 4

end

end A051740.P13269373499068512543

namespace A051740

/-- `C(n+4, 4)+6*C(n+3, 4)` -/
def P13269373499068512543.Spec : Prop :=
  ∀ n, (P13269373499068512543.a n : ℤ) = A051740 n

end A051740

/-! ## A051740.P287734710804799366

`∑[∑[a(n-1)+7]]+a(n-1)` with `a(0)=1`
-/

namespace A051740.P287734710804799366
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A051740.P287734710804799366

namespace A051740

/-- `∑[∑[a(n-1)+7]]+a(n-1)` -/
def P287734710804799366.Spec : Prop :=
  ∀ n, (P287734710804799366.a n : ℤ) = A051740 n

end A051740

/-! ## A051740.P16722376041573477842

`A051797(n)-∑[∑[∑[n]]]`
-/

namespace A051740.P16722376041573477842
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051797 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051740.P16722376041573477842

namespace A051740

/-- `A051797(n)-∑[∑[∑[n]]]` -/
def P16722376041573477842.Spec : Prop :=
  ∀ n, P16722376041573477842.a n = A051740 n

end A051740

/-! ## A051740.P13506125743654810064

`A005582(n)+∑[n+1]²`
-/

namespace A051740.P13506125743654810064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A051740.P13506125743654810064

namespace A051740

/-- `A005582(n)+∑[n+1]²` -/
def P13506125743654810064.Spec : Prop :=
  ∀ n, P13506125743654810064.a n = A051740 n

end A051740

/-! ## A051740.P2739768433401250417

`A006323(n+1)+∑[∑[n]]`
-/

namespace A051740.P2739768433401250417
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051740.P2739768433401250417

namespace A051740

/-- `A006323(n+1)+∑[∑[n]]` -/
def P2739768433401250417.Spec : Prop :=
  ∀ n, P2739768433401250417.a n = A051740 n

end A051740

/-! ## A051740.P4720841693664400056

`∑[A000292(n)]+∑[n+1]²+C(n+2, 3)`
-/

namespace A051740.P4720841693664400056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 + Nat.choose (n + 2) 3 : ℕ) : ℤ)

end

end A051740.P4720841693664400056

namespace A051740

/-- `∑[A000292(n)]+∑[n+1]²+C(n+2, 3)` -/
def P4720841693664400056.Spec : Prop :=
  ∀ n, P4720841693664400056.a n = A051740 n

end A051740

/-! ## A051740.P3950688635728080058

`A290312(n)+A004320(n)`
-/

namespace A051740.P3950688635728080058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n + A004320 n

end

end A051740.P3950688635728080058

namespace A051740

/-- `A290312(n)+A004320(n)` -/
def P3950688635728080058.Spec : Prop :=
  ∀ n, P3950688635728080058.a n = A051740 n

end A051740

/-! ## A051740.P1814127912303270670

`A055268(n)-A033488(n)`
-/

namespace A051740.P1814127912303270670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055268 n - A033488 n

end

end A051740.P1814127912303270670

namespace A051740

/-- `A055268(n)-A033488(n)` -/
def P1814127912303270670.Spec : Prop :=
  ∀ n, P1814127912303270670.a n = A051740 n

end A051740

/-! ## A051740.P3921543723480022457

`A002419(n+1)+∑[A000292(n)]`
-/

namespace A051740.P3921543723480022457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P3921543723480022457

namespace A051740

/-- `A002419(n+1)+∑[A000292(n)]` -/
def P3921543723480022457.Spec : Prop :=
  ∀ n, P3921543723480022457.a n = A051740 n

end A051740

/-! ## A051740.P9029287595193296588

`A002417(n+1)+∑[A027480(n)]`
-/

namespace A051740.P9029287595193296588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P9029287595193296588

namespace A051740

/-- `A002417(n+1)+∑[A027480(n)]` -/
def P9029287595193296588.Spec : Prop :=
  ∀ n, P9029287595193296588.a n = A051740 n

end A051740

/-! ## A051740.P7203127990060844450

`A033487(n)+∑[A000292(n+1)]`
-/

namespace A051740.P7203127990060844450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051740.P7203127990060844450

namespace A051740

/-- `A033487(n)+∑[A000292(n+1)]` -/
def P7203127990060844450.Spec : Prop :=
  ∀ n, P7203127990060844450.a n = A051740 n

end A051740

/-! ## A051740.P6718105512114365020

`A052149(n+1)+A022815(n+1)`
-/

namespace A051740.P6718105512114365020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052149 (n + 1) + A022815 (n + 1)

end

end A051740.P6718105512114365020

namespace A051740

/-- `A052149(n+1)+A022815(n+1)` -/
def P6718105512114365020.Spec : Prop :=
  ∀ n, P6718105512114365020.a n = A051740 n

end A051740

/-! ## A051740.P13542209616053733095

`A002417(n+1)+A033487(n)/2`
-/

namespace A051740.P13542209616053733095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002417 (n + 1) : ℚ) + (A033487 n : ℚ) / 2

end

end A051740.P13542209616053733095

namespace A051740

/-- `A002417(n+1)+A033487(n)/2` -/
def P13542209616053733095.Spec : Prop :=
  ∀ n, P13542209616053733095.a n = (A051740 n : ℚ)

end A051740

/-! ## A051740.P13603089322044898199

`A051744(n+1)+A000096(n)²-1`
-/

namespace A051740.P13603089322044898199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) + (A000096 n ^ 2 - 1)

end

end A051740.P13603089322044898199

namespace A051740

/-- `A051744(n+1)+A000096(n)²-1` -/
def P13603089322044898199.Spec : Prop :=
  ∀ n, P13603089322044898199.a n = A051740 n

end A051740

/-! ## A051740.P8927873988240523719

`A000217(n+1)*(n+1)²-A002418(n)`
-/

namespace A051740.P8927873988240523719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) * ((n + 1) ^ 2 : ℤ) - A002418 n

end

end A051740.P8927873988240523719

namespace A051740

/-- `A000217(n+1)*(n+1)²-A002418(n)` -/
def P8927873988240523719.Spec : Prop :=
  ∀ n, P8927873988240523719.a n = A051740 n

end A051740

/-! ## A051740.P17575009397590270836

`∑[A000292(n+1)]+∑[n]+(1-A000217(n+1))²+n`
-/

namespace A051740.P17575009397590270836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + ((1 - A000217 (n + 1)) ^ 2 + (n : ℤ)))

end

end A051740.P17575009397590270836

namespace A051740

/-- `∑[A000292(n+1)]+∑[n]+(1-A000217(n+1))²+n` -/
def P17575009397590270836.Spec : Prop :=
  ∀ n, P17575009397590270836.a n = A051740 n

end A051740

/-! ## A051740.P13889814841357945974

`A051880(n)-A000217(n)*A000292(n+1)`
-/

namespace A051740.P13889814841357945974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051880 n - A000217 n * A000292 (n + 1)

end

end A051740.P13889814841357945974

namespace A051740

/-- `A051880(n)-A000217(n)*A000292(n+1)` -/
def P13889814841357945974.Spec : Prop :=
  ∀ n, P13889814841357945974.a n = A051740 n

end A051740

/-!
# A051741: Associated with a chi-inequality greedy algorithm.

The programs for A051741, there is no canonical definition to state claims against.
-/

/-! ## A051741.P8883248179121410374

`(n+3)*A014011(n+2)-(n+2)*A014011(n+1)`
-/

namespace A051741.P8883248179121410374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A014011 (n + 2) - (n + 2 : ℤ) * A014011 (n + 1)

end

end A051741.P8883248179121410374

/-! ## A051741.P16344269395021116832

`Δ[(n+2)*A014011(n+1)]`
-/

namespace A051741.P16344269395021116832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A014011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051741.P16344269395021116832

/-! ## A051741.P4180090515993286221

`∑[A227389(n+2)]+2`
-/

namespace A051741.P4180090515993286221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A051741.P4180090515993286221

/-! ## A051741.P6939524086161407332

`A227389(n+2)+A227388(n+2)`
-/

namespace A051741.P6939524086161407332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227389 (n + 2) + A227388 (n + 2)

end

end A051741.P6939524086161407332

/-! ## A051741.P6633466634560567400

`A227388(n+3)`
-/

namespace A051741.P6633466634560567400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (n + 3)

end

end A051741.P6633466634560567400

/-! ## A051741.P983881370910775906

`record[A227388(A052938(A004442(n)))]`
-/

namespace A051741.P983881370910775906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A052938 (A004442 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P983881370910775906

/-! ## A051741.P9268084206652805042

`record[A227388(A052938(A008611(n)))]`
-/

namespace A051741.P9268084206652805042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A052938 (A008611 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P9268084206652805042

/-! ## A051741.P8586224982102983142

`record[A227388(A052938(A008619(n)))]`
-/

namespace A051741.P8586224982102983142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A052938 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P8586224982102983142

/-! ## A051741.P18217146286393823253

`record[A227388(A052938(A029579(n)))]`
-/

namespace A051741.P18217146286393823253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A052938 (A029579 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P18217146286393823253

/-! ## A051741.P7602354773907513444

`record[A227388(A052938(A052938(n)))]`
-/

namespace A051741.P7602354773907513444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A052938 (A052938 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P7602354773907513444

/-! ## A051741.P12780049690375250014

`record[A227388(A185452(A103517(n)))]`
-/

namespace A051741.P12780049690375250014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A185452 (A103517 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P12780049690375250014

/-! ## A051741.P2037751730336856317

`record[A227388(A185585(n))]`
-/

namespace A051741.P2037751730336856317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227388 (A185585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051741.P2037751730336856317

/-!
# A051742: Associated with a chi-inequality greedy algorithm.

The programs for A051742, there is no canonical definition to state claims against.
-/

/-! ## A051742.P15299976035614943863

`A028310(A226390(n+1)-1)`
-/

namespace A051742.P15299976035614943863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A226390 (n + 1) - 1).toNat

end

end A051742.P15299976035614943863

/-! ## A051742.P4176544006675630144

`A226390(n+1)+A057428(n)`
-/

namespace A051742.P4176544006675630144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) + A057428 n

end

end A051742.P4176544006675630144

/-! ## A051742.P5984727411231572444

`A226390(n+1)-A057427(n)`
-/

namespace A051742.P5984727411231572444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - A057427 n

end

end A051742.P5984727411231572444

/-! ## A051742.P2422531134539270325

`A226390(n+1)-a(A000038(n))` with `a(0)=1`
-/

namespace A051742.P2422531134539270325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226390 (n + 1) - a (A000038 n).toNat

end

end A051742.P2422531134539270325

/-! ## A051742.P111302107365664747

`A226390(n+1)-and(1, A000040(n+1))`
-/

namespace A051742.P111302107365664747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - Int.land 1 (A000040 (n + 1))

end

end A051742.P111302107365664747

/-! ## A051742.P2119372379126421417

`A002262(and(1, a(n-1)))-(1-A226390(n+1))` with `a(0)=1`
-/

namespace A051742.P2119372379126421417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A002262 (Int.land 1 (a (n - 1))).toNat - (1 - A226390 (n + 1))

end

end A051742.P2119372379126421417

/-! ## A051742.P13786150048906362165

`Δ[A014011(n+1)]-n²%(n+1)`
-/

namespace A051742.P13786150048906362165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A051742.P13786150048906362165

/-! ## A051742.P16728689926770158182

`Δ[A014011(n+1)]-A057427(n)`
-/

namespace A051742.P16728689926770158182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A057427 n

end

end A051742.P16728689926770158182

/-! ## A051742.P2765366519967105730

`Δ[A014011(n+1)]-A010051(A020639(n+1))`
-/

namespace A051742.P2765366519967105730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A010051 (A020639 (n + 1)).toNat

end

end A051742.P2765366519967105730

/-! ## A051742.P14135532553895858840

`A226390(n+1)-A001221(A000961(n+1))`
-/

namespace A051742.P14135532553895858840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - A001221 (A000961 (n + 1)).toNat

end

end A051742.P14135532553895858840

/-! ## A051742.P9071996528783322802

`A226390(n+1)-A001221(A008578(n+1))`
-/

namespace A051742.P9071996528783322802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - A001221 (A008578 (n + 1)).toNat

end

end A051742.P9071996528783322802

/-! ## A051742.P3042320722960509277

`A226390(n+1)-char[A038722(n+1)]`
-/

namespace A051742.P3042320722960509277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A051742.P3042320722960509277

/-! ## A051742.P16976836495839609788

`A226390(n+1)-A000035(A000040(n+1))`
-/

namespace A051742.P16976836495839609788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - A000035 (A000040 (n + 1)).toNat

end

end A051742.P16976836495839609788

/-! ## A051742.P2373946345586371092

`A226390(n+1)-A001221(A165826(n+1))`
-/

namespace A051742.P2373946345586371092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226390 (n + 1) - A001221 (A165826 (n + 1)).toNat

end

end A051742.P2373946345586371092

/-!
# A051743: a(n) = (1/24)*n*(n + 5)*(n^2 + n + 6).

The programs for A051743, the canonical program `A051743.P17654337321609114764` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051743 has offset 1).

The definition of A051743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/24*(n+1)*(n+6)*((n+1)²+n+1+6)` (program `A051743.P17489545811378347506`, by `A051743.P17489545811378347506.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051743.P5537282907115179804

`C(n+4, n)+C(n+1, n)`
-/

namespace A051743.P5537282907115179804
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) n + Nat.choose (n + 1) n

end

end A051743.P5537282907115179804

namespace A051743

/-- `C(n+4, n)+C(n+1, n)` -/
def P5537282907115179804.Spec : Prop :=
  ∀ n, (P5537282907115179804.a n : ℤ) = A051743 (n + 1)

end A051743

/-! ## A051743.P4493670085907031597

`(n+1)*(n+6)*((n+1)²+n+1+6)/24`
-/

namespace A051743.P4493670085907031597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 6) * ((n + 1) ^ 2 + (n + 1) + 6) : ℚ) / 24

end

end A051743.P4493670085907031597

namespace A051743

/-- `(n+1)*(n+6)*((n+1)²+n+1+6)/24` -/
def P4493670085907031597.Spec : Prop :=
  ∀ n, P4493670085907031597.a n = (A051743 (n + 1) : ℚ)

theorem P4493670085907031597.correct : P4493670085907031597.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A051743, Nat.add_sub_cancel, A051743.P4493670085907031597.a, A051743.P17654337321609114764.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A051743, Nat.add_sub_cancel, A051743.P4493670085907031597.a, A051743.P17654337321609114764.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051743

/-! ## A051743.P17489545811378347506

`1/24*(n+1)*(n+6)*((n+1)²+n+1+6)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051743.P17489545811378347506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 24 * (n + 1 : ℚ) * (n + 6 : ℚ) * ((n + 1) ^ 2 + (n + 1) + 6 : ℚ)

end

end A051743.P17489545811378347506

namespace A051743

/-- `1/24*(n+1)*(n+6)*((n+1)²+n+1+6)` -/
def P17489545811378347506.Spec : Prop :=
  ∀ n, P17489545811378347506.a n = (A051743 (n + 1) : ℚ)

theorem P17489545811378347506.correct : P17489545811378347506.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A051743, Nat.add_sub_cancel, A051743.P17489545811378347506.a, A051743.P17654337321609114764.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A051743, Nat.add_sub_cancel, A051743.P17489545811378347506.a, A051743.P17654337321609114764.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051743

/-! ## A051743.P17654337321609114764

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=7, a(2)=18, a(3)=39, a(4)=75`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051743

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17654337321609114764.Spec : Prop :=
  ∀ n, P17654337321609114764.a n = A051743 (n + 1)

theorem P17654337321609114764.correct : P17654337321609114764.Spec := by
  intro n
  simp only [A051743, Nat.add_sub_cancel]

end A051743

/-! ## A051743.P15101269566787572380

`∑[C(n+3, 3)+1]`
-/

namespace A051743.P15101269566787572380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051743.P15101269566787572380

namespace A051743

/-- `∑[C(n+3, 3)+1]` -/
def P15101269566787572380.Spec : Prop :=
  ∀ n, (P15101269566787572380.a n : ℤ) = A051743 (n + 1)

end A051743

/-! ## A051743.P3423868206351156095

`C(n+4, 4)+1+n`
-/

namespace A051743.P3423868206351156095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + 1 + n

end

end A051743.P3423868206351156095

namespace A051743

/-- `C(n+4, 4)+1+n` -/
def P3423868206351156095.Spec : Prop :=
  ∀ n, (P3423868206351156095.a n : ℤ) = A051743 (n + 1)

end A051743

/-! ## A051743.P2600536169737475439

`(4/n+1)*a(n-1)-3` with `a(0)=2`
-/

namespace A051743.P2600536169737475439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (4 / (n : ℚ) + 1) * a (n - 1) - 3

end

end A051743.P2600536169737475439

namespace A051743

/-- `(4/n+1)*a(n-1)-3` -/
def P2600536169737475439.Spec : Prop :=
  ∀ n, P2600536169737475439.a n = (A051743 (n + 1) : ℚ)

end A051743

/-! ## A051743.P9438558538480383464

`floor(∑[1-∑[∑[a(n-1)-1]]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A051743.P9438558538480383464
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051743.P9438558538480383464

namespace A051743

/-- `floor(∑[1-∑[∑[a(n-1)-1]]])` -/
def P9438558538480383464.Spec : Prop :=
  ∀ n, P9438558538480383464.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P16305821820265110640

`4*a(n-1)/n-(3-a(n-1))` with `a(0)=2`
-/

namespace A051743.P16305821820265110640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  4 * (a (n - 1) / (n : ℚ)) - (3 - a (n - 1))

end

end A051743.P16305821820265110640

namespace A051743

/-- `4*a(n-1)/n-(3-a(n-1))` -/
def P16305821820265110640.Spec : Prop :=
  ∀ n, P16305821820265110640.a n = (A051743 (n + 1) : ℚ)

end A051743

/-! ## A051743.P7094262890993128410

`A363256(n)+Δ[n²]`
-/

namespace A051743.P7094262890993128410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051743.P7094262890993128410

namespace A051743

/-- `A363256(n)+Δ[n²]` -/
def P7094262890993128410.Spec : Prop :=
  ∀ n, P7094262890993128410.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P2081024992608127626

`∑[A000292(n+1)+1]`
-/

namespace A051743.P2081024992608127626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051743.P2081024992608127626

namespace A051743

/-- `∑[A000292(n+1)+1]` -/
def P2081024992608127626.Spec : Prop :=
  ∀ n, P2081024992608127626.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P1860458759163839433

`sqrt(A288876(n))+1+n`
-/

namespace A051743.P1860458759163839433
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 n : ℝ) + 1 + (n : ℝ)

end

end A051743.P1860458759163839433

namespace A051743

/-- `sqrt(A288876(n))+1+n` -/
def P1860458759163839433.Spec : Prop :=
  ∀ n, P1860458759163839433.a n = (A051743 (n + 1) : ℝ)

end A051743

/-! ## A051743.P7068495473709025860

`∑[A349417(n+1)+n]`
-/

namespace A051743.P7068495473709025860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349417 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051743.P7068495473709025860

namespace A051743

/-- `∑[A349417(n+1)+n]` -/
def P7068495473709025860.Spec : Prop :=
  ∀ n, P7068495473709025860.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P11381483979608022183

`A005582(n)+∑[n+2]`
-/

namespace A051743.P11381483979608022183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051743.P11381483979608022183

namespace A051743

/-- `A005582(n)+∑[n+2]` -/
def P11381483979608022183.Spec : Prop :=
  ∀ n, P11381483979608022183.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P7758688026641532262

`A051744(n+1)-∑[n]`
-/

namespace A051743.P7758688026641532262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051743.P7758688026641532262

namespace A051743

/-- `A051744(n+1)-∑[n]` -/
def P7758688026641532262.Spec : Prop :=
  ∀ n, P7758688026641532262.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P15821133480843461309

`A086274(n+1)+∑[n+1]`
-/

namespace A051743.P15821133480843461309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051743.P15821133480843461309

namespace A051743

/-- `A086274(n+1)+∑[n+1]` -/
def P15821133480843461309.Spec : Prop :=
  ∀ n, P15821133480843461309.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P14457609660847557329

`A027800(n)/(n+1)+n+1`
-/

namespace A051743.P14457609660847557329
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027800 n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A051743.P14457609660847557329

namespace A051743

/-- `A027800(n)/(n+1)+n+1` -/
def P14457609660847557329.Spec : Prop :=
  ∀ n, P14457609660847557329.a n = (A051743 (n + 1) : ℚ)

end A051743

/-! ## A051743.P9281931998737387450

`A055417(n)+A006000(n)`
-/

namespace A051743.P9281931998737387450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + A006000 n

end

end A051743.P9281931998737387450

namespace A051743

/-- `A055417(n)+A006000(n)` -/
def P9281931998737387450.Spec : Prop :=
  ∀ n, P9281931998737387450.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P17846413865703607336

`A368881(n)+A028387(n)`
-/

namespace A051743.P17846413865703607336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368881 n + A028387 n

end

end A051743.P17846413865703607336

namespace A051743

/-- `A368881(n)+A028387(n)` -/
def P17846413865703607336.Spec : Prop :=
  ∀ n, P17846413865703607336.a n = A051743 (n + 1)

end A051743

/-! ## A051743.P4336724991709331874

`A341209(n)+A145126(n)`
-/

namespace A051743.P4336724991709331874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A145126 n

end

end A051743.P4336724991709331874

namespace A051743

/-- `A341209(n)+A145126(n)` -/
def P4336724991709331874.Spec : Prop :=
  ∀ n, P4336724991709331874.a n = A051743 (n + 1)

end A051743

/-!
# A051744: a(n) = n*(n+1)*(n^2+5*n+18)/24.

The programs for A051744, the canonical program `A051744.P3077733476710149678` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051744 has offset 1).

The definition of A051744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*((n+1)²+5*(n+1)+18)/24` (program `A051744.P10257215052525923390`, by `A051744.P10257215052525923390.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051744.P592861601314894796

`C(n+4, 4)+C(n+2, 2)`
-/

namespace A051744.P592861601314894796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + Nat.choose (n + 2) 2

end

end A051744.P592861601314894796

namespace A051744

/-- `C(n+4, 4)+C(n+2, 2)` -/
def P592861601314894796.Spec : Prop :=
  ∀ n, (P592861601314894796.a n : ℤ) = A051744 (n + 1)

end A051744

/-! ## A051744.P10257215052525923390

`(n+1)*(n+2)*((n+1)²+5*(n+1)+18)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051744.P10257215052525923390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * ((n + 1) ^ 2 + 5 * (n + 1) + 18) : ℚ) / 24

end

end A051744.P10257215052525923390

namespace A051744

/-- `(n+1)*(n+2)*((n+1)²+5*(n+1)+18)/24` -/
def P10257215052525923390.Spec : Prop :=
  ∀ n, P10257215052525923390.a n = (A051744 (n + 1) : ℚ)

theorem P10257215052525923390.correct : P10257215052525923390.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A051744, Nat.add_sub_cancel, A051744.P10257215052525923390.a, A051744.P3077733476710149678.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A051744, Nat.add_sub_cancel, A051744.P10257215052525923390.a, A051744.P3077733476710149678.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051744

/-! ## A051744.P3077733476710149678

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=2, a(1)=8, a(2)=21, a(3)=45, a(4)=85`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051744

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3077733476710149678.Spec : Prop :=
  ∀ n, P3077733476710149678.a n = A051744 (n + 1)

theorem P3077733476710149678.correct : P3077733476710149678.Spec := by
  intro n
  simp only [A051744, Nat.add_sub_cancel]

end A051744

/-! ## A051744.P8804643933142241612

`floor(∑[∑[1-∑[a(n-1)-1]]])` with `a(0)=-1`

`floor` is left out, it is the identity on integers.
-/

namespace A051744.P8804643933142241612
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f3 =>
  f3 (n - 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051744.P8804643933142241612

namespace A051744

/-- `floor(∑[∑[1-∑[a(n-1)-1]]])` -/
def P8804643933142241612.Spec : Prop :=
  ∀ n, P8804643933142241612.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P16041287282340516022

`∑[∑[n]]-∑[∑[a(n-1)-n]]` with `a(0)=-2`
-/

namespace A051744.P16041287282340516022
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f4 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f4 =>
  f4 (n - 1) - (n : ℤ)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A051744.P16041287282340516022

namespace A051744

/-- `∑[∑[n]]-∑[∑[a(n-1)-n]]` -/
def P16041287282340516022.Spec : Prop :=
  ∀ n, P16041287282340516022.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P10959985789304004029

`(4/n+1)*a(n-1)-(n+1)` with `a(0)=2`
-/

namespace A051744.P10959985789304004029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (4 / (n : ℚ) + 1) * a (n - 1) - (n + 1 : ℚ)

end

end A051744.P10959985789304004029

namespace A051744

/-- `(4/n+1)*a(n-1)-(n+1)` -/
def P10959985789304004029.Spec : Prop :=
  ∀ n, P10959985789304004029.a n = (A051744 (n + 1) : ℚ)

end A051744

/-! ## A051744.P11172738829625568228

`∑[A341209(n)+1]`
-/

namespace A051744.P11172738829625568228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051744.P11172738829625568228

namespace A051744

/-- `∑[A341209(n)+1]` -/
def P11172738829625568228.Spec : Prop :=
  ∀ n, P11172738829625568228.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P8839148391805668150

`A223718(n+1)-1`
-/

namespace A051744.P8839148391805668150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) - 1

end

end A051744.P8839148391805668150

namespace A051744

/-- `A223718(n+1)-1` -/
def P8839148391805668150.Spec : Prop :=
  ∀ n, P8839148391805668150.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P2820745189109037622

`sqrt(A223719(n+1))-1`
-/

namespace A051744.P2820745189109037622
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A223719 (n + 1) : ℝ) - 1

end

end A051744.P2820745189109037622

namespace A051744

/-- `sqrt(A223719(n+1))-1` -/
def P2820745189109037622.Spec : Prop :=
  ∀ n, P2820745189109037622.a n = (A051744 (n + 1) : ℝ)

end A051744

/-! ## A051744.P2580681145605542172

`A051743(n+1)+∑[n]`
-/

namespace A051744.P2580681145605542172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051744.P2580681145605542172

namespace A051744

/-- `A051743(n+1)+∑[n]` -/
def P2580681145605542172.Spec : Prop :=
  ∀ n, P2580681145605542172.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P7339075214981497309

`∑[A000125(n)+(n+1)²]`
-/

namespace A051744.P7339075214981497309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000125 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051744.P7339075214981497309

namespace A051744

/-- `∑[A000125(n)+(n+1)²]` -/
def P7339075214981497309.Spec : Prop :=
  ∀ n, P7339075214981497309.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P12604382227440394432

`A095661(n)-∑[(n+1)²]`
-/

namespace A051744.P12604382227440394432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095661 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051744.P12604382227440394432

namespace A051744

/-- `A095661(n)-∑[(n+1)²]` -/
def P12604382227440394432.Spec : Prop :=
  ∀ n, P12604382227440394432.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P3371785638797570847

`A086274(n+1)+(n+1)²`
-/

namespace A051744.P3371785638797570847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + ((n + 1) ^ 2 : ℤ)

end

end A051744.P3371785638797570847

namespace A051744

/-- `A086274(n+1)+(n+1)²` -/
def P3371785638797570847.Spec : Prop :=
  ∀ n, P3371785638797570847.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P7070087181167553069

`∑[A000292(n+1)+n+1]`
-/

namespace A051744.P7070087181167553069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051744.P7070087181167553069

namespace A051744

/-- `∑[A000292(n+1)+n+1]` -/
def P7070087181167553069.Spec : Prop :=
  ∀ n, P7070087181167553069.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P9020819513250239240

`(n+1)/4*A255993(n+1)`
-/

namespace A051744.P9020819513250239240
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 4 * (A255993 (n + 1) : ℚ)

end

end A051744.P9020819513250239240

namespace A051744

/-- `(n+1)/4*A255993(n+1)` -/
def P9020819513250239240.Spec : Prop :=
  ∀ n, P9020819513250239240.a n = (A051744 (n + 1) : ℚ)

end A051744

/-! ## A051744.P1917849424995954645

`A005582(n)+(n+1)*(n+2)`
-/

namespace A051744.P1917849424995954645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n + ((n + 1) * (n + 2) : ℤ)

end

end A051744.P1917849424995954645

namespace A051744

/-- `A005582(n)+(n+1)*(n+2)` -/
def P1917849424995954645.Spec : Prop :=
  ∀ n, P1917849424995954645.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P15900283067885091297

`A145126(n)+A005286(n)`
-/

namespace A051744.P15900283067885091297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A005286 n

end

end A051744.P15900283067885091297

namespace A051744

/-- `A145126(n)+A005286(n)` -/
def P15900283067885091297.Spec : Prop :=
  ∀ n, P15900283067885091297.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P11445750946139127092

`A341209(n)+A223718(n)`
-/

namespace A051744.P11445750946139127092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341209 n + A223718 n

end

end A051744.P11445750946139127092

namespace A051744

/-- `A341209(n)+A223718(n)` -/
def P11445750946139127092.Spec : Prop :=
  ∀ n, P11445750946139127092.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P11625914374443030594

`A062988(n)-A257890(n)`
-/

namespace A051744.P11625914374443030594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - A257890 n

end

end A051744.P11625914374443030594

namespace A051744

/-- `A062988(n)-A257890(n)` -/
def P11625914374443030594.Spec : Prop :=
  ∀ n, P11625914374443030594.a n = A051744 (n + 1)

end A051744

/-! ## A051744.P16149319950565474146

`record[A223718(A344180(n))-1]`
-/

namespace A051744.P16149319950565474146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (A344180 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051744.P16149319950565474146

namespace A051744

/-- `record[A223718(A344180(n))-1]` -/
def P16149319950565474146.Spec : Prop :=
  ∀ n, P16149319950565474146.a n = A051744 (n + 1)

end A051744

/-!
# A051745: a(n) = n*(n^4 + 10*n^3 + 35*n^2 + 50*n + 144)/120.

The programs for A051745, the canonical program `A051745.P5054150048059455946` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051745 has offset 1).

The definition of A051745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051745.P12973002103081653075

`C(n+5, 5)+n+1`
-/

namespace A051745.P12973002103081653075
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 5) 5 + (n + 1)

end

end A051745.P12973002103081653075

namespace A051745

/-- `C(n+5, 5)+n+1` -/
def P12973002103081653075.Spec : Prop :=
  ∀ n, (P12973002103081653075.a n : ℤ) = A051745 (n + 1)

end A051745

/-! ## A051745.P10259206805120103402

`(n+1)*((n+1)^4+10*(n+1)^3+35*(n+1)²+50*(n+1)+144)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051745.P10259206805120103402
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * ((n + 1) ^ 4 + 10 * (n + 1) ^ 3 + 35 * (n + 1) ^ 2 + 50 * (n + 1) + 144) : ℚ) / 120

end

end A051745.P10259206805120103402

namespace A051745

/-- `(n+1)*((n+1)^4+10*(n+1)^3+35*(n+1)²+50*(n+1)+144)/120` -/
def P10259206805120103402.Spec : Prop :=
  ∀ n, P10259206805120103402.a n = (A051745 (n + 1) : ℚ)

end A051745

/-! ## A051745.P5054150048059455946

`A000389(n+5)+n+1`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A051745

/-- `A000389(n+5)+n+1` -/
def P5054150048059455946.Spec : Prop :=
  ∀ n, P5054150048059455946.a n = A051745 (n + 1)

theorem P5054150048059455946.correct : P5054150048059455946.Spec := by
  intro n
  simp only [A051745, Nat.add_sub_cancel]

end A051745

/-! ## A051745.P3142857369054181217

`∑[C(n+4, 4)+1]`
-/

namespace A051745.P3142857369054181217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 4) 4 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051745.P3142857369054181217

namespace A051745

/-- `∑[C(n+4, 4)+1]` -/
def P3142857369054181217.Spec : Prop :=
  ∀ n, (P3142857369054181217.a n : ℤ) = A051745 (n + 1)

end A051745

/-! ## A051745.P12201977004411156378

`(5/n+1)*a(n-1)-4` with `a(0)=2`
-/

namespace A051745.P12201977004411156378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (5 / (n : ℚ) + 1) * a (n - 1) - 4

end

end A051745.P12201977004411156378

namespace A051745

/-- `(5/n+1)*a(n-1)-4` -/
def P12201977004411156378.Spec : Prop :=
  ∀ n, P12201977004411156378.a n = (A051745 (n + 1) : ℚ)

end A051745

/-! ## A051745.P782608628960195981

`5*a(n-1)/n-(4-a(n-1))` with `a(0)=2`
-/

namespace A051745.P782608628960195981
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  5 * (a (n - 1) / (n : ℚ)) - (4 - a (n - 1))

end

end A051745.P782608628960195981

namespace A051745

/-- `5*a(n-1)/n-(4-a(n-1))` -/
def P782608628960195981.Spec : Prop :=
  ∀ n, P782608628960195981.a n = (A051745 (n + 1) : ℚ)

end A051745

/-! ## A051745.P17935989480898874209

`∑[A363256(n)+n+1]`
-/

namespace A051745.P17935989480898874209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051745.P17935989480898874209

namespace A051745

/-- `∑[A363256(n)+n+1]` -/
def P17935989480898874209.Spec : Prop :=
  ∀ n, P17935989480898874209.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P2531777076160324138

`∑[A051743(n+1)-n]`
-/

namespace A051745.P2531777076160324138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051745.P2531777076160324138

namespace A051745

/-- `∑[A051743(n+1)-n]` -/
def P2531777076160324138.Spec : Prop :=
  ∀ n, P2531777076160324138.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P4622958188430046661

`A051746(n+1)-∑[n]`
-/

namespace A051745.P4622958188430046661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051746 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051745.P4622958188430046661

namespace A051745

/-- `A051746(n+1)-∑[n]` -/
def P4622958188430046661.Spec : Prop :=
  ∀ n, P4622958188430046661.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P15981759538659807877

`∑[A368881(n)+(n+1)²]`
-/

namespace A051745.P15981759538659807877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368881 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051745.P15981759538659807877

namespace A051745

/-- `∑[A368881(n)+(n+1)²]` -/
def P15981759538659807877.Spec : Prop :=
  ∀ n, P15981759538659807877.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P4758414301085673988

`∑[sqrt(A288876(n))]+n+1`
-/

namespace A051745.P4758414301085673988
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A288876 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℝ)

end

end A051745.P4758414301085673988

namespace A051745

/-- `∑[sqrt(A288876(n))]+n+1` -/
def P4758414301085673988.Spec : Prop :=
  ∀ n, P4758414301085673988.a n = (A051745 (n + 1) : ℝ)

end A051745

/-! ## A051745.P1343779401719705975

`A027810(n)/(n+1)+n+1`
-/

namespace A051745.P1343779401719705975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027810 n : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A051745.P1343779401719705975

namespace A051745

/-- `A027810(n)/(n+1)+n+1` -/
def P1343779401719705975.Spec : Prop :=
  ∀ n, P1343779401719705975.a n = (A051745 (n + 1) : ℚ)

end A051745

/-! ## A051745.P12679456242356790150

`A161701(n)+A132366(n)`
-/

namespace A051745.P12679456242356790150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161701 n + A132366 n

end

end A051745.P12679456242356790150

namespace A051745

/-- `A161701(n)+A132366(n)` -/
def P12679456242356790150.Spec : Prop :=
  ∀ n, P12679456242356790150.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P12381137306057562736

`A062988(n)-A005718(n)`
-/

namespace A051745.P12381137306057562736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062988 n - A005718 n

end

end A051745.P12381137306057562736

namespace A051745

/-- `A062988(n)-A005718(n)` -/
def P12381137306057562736.Spec : Prop :=
  ∀ n, P12381137306057562736.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P518875387920879199

`A086274(n+1)+A027658(n)`
-/

namespace A051745.P518875387920879199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + A027658 n

end

end A051745.P518875387920879199

namespace A051745

/-- `A086274(n+1)+A027658(n)` -/
def P518875387920879199.Spec : Prop :=
  ∀ n, P518875387920879199.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P4220879188686295334

`A005584(n+1)-A062989(n)`
-/

namespace A051745.P4220879188686295334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005584 (n + 1) - A062989 n

end

end A051745.P4220879188686295334

namespace A051745

/-- `A005584(n+1)-A062989(n)` -/
def P4220879188686295334.Spec : Prop :=
  ∀ n, P4220879188686295334.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P183151981333016286

`A257890(n)-A000292(n+1)`
-/

namespace A051745.P183151981333016286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n - A000292 (n + 1)

end

end A051745.P183151981333016286

namespace A051745

/-- `A257890(n)-A000292(n+1)` -/
def P183151981333016286.Spec : Prop :=
  ∀ n, P183151981333016286.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P13990123530916211676

`∑[A063258(n)+2]-A063258(n)`
-/

namespace A051745.P13990123530916211676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A063258 n

end

end A051745.P13990123530916211676

namespace A051745

/-- `∑[A063258(n)+2]-A063258(n)` -/
def P13990123530916211676.Spec : Prop :=
  ∀ n, P13990123530916211676.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P17592641914423605894

`A002817(n+1)+A161701(n+1)-1`
-/

namespace A051745.P17592641914423605894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (n + 1) + (A161701 (n + 1) - 1)

end

end A051745.P17592641914423605894

namespace A051745

/-- `A002817(n+1)+A161701(n+1)-1` -/
def P17592641914423605894.Spec : Prop :=
  ∀ n, P17592641914423605894.a n = A051745 (n + 1)

end A051745

/-! ## A051745.P1249479373292648712

`A005583(n+1)-(A005582(n)+A000217(n))`
-/

namespace A051745.P1249479373292648712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) - (A005582 n + A000217 n)

end

end A051745.P1249479373292648712

namespace A051745

/-- `A005583(n+1)-(A005582(n)+A000217(n))` -/
def P1249479373292648712.Spec : Prop :=
  ∀ n, P1249479373292648712.a n = A051745 (n + 1)

end A051745

/-!
# A051746: a(n) = n(n+7)(n+1)(n^2+2n+12)/120.

The programs for A051746, the canonical program `A051746.P219453601751731679` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051746 has offset 1).

The definition of A051746 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051746.P219453601751731679

`C(n+5, n)+C(n+2, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051746

/-- `C(n+5, n)+C(n+2, n)` -/
def P219453601751731679.Spec : Prop :=
  ∀ n, (P219453601751731679.a n : ℤ) = A051746 (n + 1)

theorem P219453601751731679.correct : P219453601751731679.Spec := by
  intro n
  simp only [A051746, Nat.add_sub_cancel]

end A051746

/-! ## A051746.P8081823735203920557

`(n+1)*(n+8)*(n+2)*((n+1)²+2*(n+1)+12)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051746.P8081823735203920557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 8) * (n + 2) * ((n + 1) ^ 2 + 2 * (n + 1) + 12) : ℚ) / 120

end

end A051746.P8081823735203920557

namespace A051746

/-- `(n+1)*(n+8)*(n+2)*((n+1)²+2*(n+1)+12)/120` -/
def P8081823735203920557.Spec : Prop :=
  ∀ n, P8081823735203920557.a n = (A051746 (n + 1) : ℚ)

end A051746

/-! ## A051746.P5107373186940866111

`∑[∑[C(n+3, 3)+1]]`
-/

namespace A051746.P5107373186940866111
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051746.P5107373186940866111

namespace A051746

/-- `∑[∑[C(n+3, 3)+1]]` -/
def P5107373186940866111.Spec : Prop :=
  ∀ n, (P5107373186940866111.a n : ℤ) = A051746 (n + 1)

end A051746

/-! ## A051746.P8318539283208732805

`∑[A051743(n+1)]`
-/

namespace A051746.P8318539283208732805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051743 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051746.P8318539283208732805

namespace A051746

/-- `∑[A051743(n+1)]` -/
def P8318539283208732805.Spec : Prop :=
  ∀ n, P8318539283208732805.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P12578403446221673462

`A051745(n+1)+∑[n]`
-/

namespace A051746.P12578403446221673462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051746.P12578403446221673462

namespace A051746

/-- `A051745(n+1)+∑[n]` -/
def P12578403446221673462.Spec : Prop :=
  ∀ n, P12578403446221673462.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P13856239233923968370

`∑[A363256(n)]+(n+1)²`
-/

namespace A051746.P13856239233923968370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n + 1) ^ 2 : ℤ)

end

end A051746.P13856239233923968370

namespace A051746

/-- `∑[A363256(n)]+(n+1)²` -/
def P13856239233923968370.Spec : Prop :=
  ∀ n, P13856239233923968370.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P4813398609550327635

`A005583(n+1)-A005582(n)`
-/

namespace A051746.P4813398609550327635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005583 (n + 1) - A005582 n

end

end A051746.P4813398609550327635

namespace A051746

/-- `A005583(n+1)-A005582(n)` -/
def P4813398609550327635.Spec : Prop :=
  ∀ n, P4813398609550327635.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P15172022446086688044

`A051747(n+1)-A000292(n)`
-/

namespace A051746.P15172022446086688044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) - A000292 n

end

end A051746.P15172022446086688044

namespace A051746

/-- `A051747(n+1)-A000292(n)` -/
def P15172022446086688044.Spec : Prop :=
  ∀ n, P15172022446086688044.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P9261119837086604755

`A115129(n)-A024183(n+1)`
-/

namespace A051746.P9261119837086604755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115129 n - A024183 (n + 1)

end

end A051746.P9261119837086604755

namespace A051746

/-- `A115129(n)-A024183(n+1)` -/
def P9261119837086604755.Spec : Prop :=
  ∀ n, P9261119837086604755.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P12714394795257025376

`∑[A005582(n+1)]-A005582(n)`
-/

namespace A051746.P12714394795257025376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005582 n

end

end A051746.P12714394795257025376

namespace A051746

/-- `∑[A005582(n+1)]-A005582(n)` -/
def P12714394795257025376.Spec : Prop :=
  ∀ n, P12714394795257025376.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P10701215946200408603

`A051747(n+1)-(A005581(n)+n)`
-/

namespace A051746.P10701215946200408603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051747 (n + 1) - (A005581 n + (n : ℤ))

end

end A051746.P10701215946200408603

namespace A051746

/-- `A051747(n+1)-(A005581(n)+n)` -/
def P10701215946200408603.Spec : Prop :=
  ∀ n, P10701215946200408603.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P12887495894815311784

`A000217(n)+A257890(n)-A000292(n+1)`
-/

namespace A051746.P12887495894815311784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A257890 n - A000292 (n + 1))

end

end A051746.P12887495894815311784

namespace A051746

/-- `A000217(n)+A257890(n)-A000292(n+1)` -/
def P12887495894815311784.Spec : Prop :=
  ∀ n, P12887495894815311784.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P10734263118578333709

`A000217(n+1)+A107417(n)/A000217(n+1)`
-/

namespace A051746.P10734263118578333709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (n + 1) : ℚ) + (A107417 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A051746.P10734263118578333709

namespace A051746

/-- `A000217(n+1)+A107417(n)/A000217(n+1)` -/
def P10734263118578333709.Spec : Prop :=
  ∀ n, P10734263118578333709.a n = (A051746 (n + 1) : ℚ)

end A051746

/-! ## A051746.P16354639759355344010

`∑[A145126(n+1)+n]`
-/

namespace A051746.P16354639759355344010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051746.P16354639759355344010

namespace A051746

/-- `∑[A145126(n+1)+n]` -/
def P16354639759355344010.Spec : Prop :=
  ∀ n, P16354639759355344010.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P6271859198615697075

`A027658(n+1)-(n+2)`
-/

namespace A051746.P6271859198615697075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 (n + 1) - (n + 2 : ℤ)

end

end A051746.P6271859198615697075

namespace A051746

/-- `A027658(n+1)-(n+2)` -/
def P6271859198615697075.Spec : Prop :=
  ∀ n, P6271859198615697075.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P15821791168752195122

`A323228(n+1)+A000096(n)`
-/

namespace A051746.P15821791168752195122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323228 (n + 1) + A000096 n

end

end A051746.P15821791168752195122

namespace A051746

/-- `A323228(n+1)+A000096(n)` -/
def P15821791168752195122.Spec : Prop :=
  ∀ n, P15821791168752195122.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P6941866620401521528

`A000124(n+1)+A323228(n+1)-2`
-/

namespace A051746.P6941866620401521528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) + (A323228 (n + 1) - 2)

end

end A051746.P6941866620401521528

namespace A051746

/-- `A000124(n+1)+A323228(n+1)-2` -/
def P6941866620401521528.Spec : Prop :=
  ∀ n, P6941866620401521528.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P12432539062952015474

`A000217(n+1)+A027800(n+1)-A034263(n+1)`
-/

namespace A051746.P12432539062952015474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A027800 (n + 1) - A034263 (n + 1))

end

end A051746.P12432539062952015474

namespace A051746

/-- `A000217(n+1)+A027800(n+1)-A034263(n+1)` -/
def P12432539062952015474.Spec : Prop :=
  ∀ n, P12432539062952015474.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P9629655989887023668

`A005581(n+2)+∑[A005582(n)]`
-/

namespace A051746.P9629655989887023668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051746.P9629655989887023668

namespace A051746

/-- `A005581(n+2)+∑[A005582(n)]` -/
def P9629655989887023668.Spec : Prop :=
  ∀ n, P9629655989887023668.a n = A051746 (n + 1)

end A051746

/-! ## A051746.P10051273442907090819

`A179257(n+3)-(n+3)`
-/

namespace A051746.P10051273442907090819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179257 (n + 3) - (n + 3 : ℤ)

end

end A051746.P10051273442907090819

namespace A051746

/-- `A179257(n+3)-(n+3)` -/
def P10051273442907090819.Spec : Prop :=
  ∀ n, P10051273442907090819.a n = A051746 (n + 1)

end A051746

/-!
# A051747: a(n) = n*(n+1)*(n+2)*(n^2+7*n+32)/120.

The programs for A051747, the canonical program `A051747.P2197146063866797474` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051747 has offset 1).

The definition of A051747 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051747.P2197146063866797474

`C(n+5, n)+C(n+3, n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051747

/-- `C(n+5, n)+C(n+3, n)` -/
def P2197146063866797474.Spec : Prop :=
  ∀ n, (P2197146063866797474.a n : ℤ) = A051747 (n + 1)

theorem P2197146063866797474.correct : P2197146063866797474.Spec := by
  intro n
  simp only [A051747, Nat.add_sub_cancel]

end A051747

/-! ## A051747.P3925801536041116228

`(n+1)*(n+2)*(n+3)*((n+1)²+7*(n+1)+32)/120`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051747.P3925801536041116228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * ((n + 1) ^ 2 + 7 * (n + 1) + 32) : ℚ) / 120

end

end A051747.P3925801536041116228

namespace A051747

/-- `(n+1)*(n+2)*(n+3)*((n+1)²+7*(n+1)+32)/120` -/
def P3925801536041116228.Spec : Prop :=
  ∀ n, P3925801536041116228.a n = (A051747 (n + 1) : ℚ)

end A051747

/-! ## A051747.P13740198509636325171

`∑[A051744(n+1)]`
-/

namespace A051747.P13740198509636325171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051744 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051747.P13740198509636325171

namespace A051747

/-- `∑[A051744(n+1)]` -/
def P13740198509636325171.Spec : Prop :=
  ∀ n, P13740198509636325171.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P364533205836140176

`A257890(n)-(n+1)`
-/

namespace A051747.P364533205836140176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257890 n - (n + 1 : ℤ)

end

end A051747.P364533205836140176

namespace A051747

/-- `A257890(n)-(n+1)` -/
def P364533205836140176.Spec : Prop :=
  ∀ n, P364533205836140176.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P15969233819845151642

`∑[A223718(n+1)-1]`
-/

namespace A051747.P15969233819845151642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051747.P15969233819845151642

namespace A051747

/-- `∑[A223718(n+1)-1]` -/
def P15969233819845151642.Spec : Prop :=
  ∀ n, P15969233819845151642.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P12608118285867592414

`Δ[A223659(n)]-(n+1)`
-/

namespace A051747.P12608118285867592414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A051747.P12608118285867592414

namespace A051747

/-- `Δ[A223659(n)]-(n+1)` -/
def P12608118285867592414.Spec : Prop :=
  ∀ n, P12608118285867592414.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P4831740444028130689

`A051746(n+1)+∑[∑[n]]`
-/

namespace A051747.P4831740444028130689
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051746 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051747.P4831740444028130689

namespace A051747

/-- `A051746(n+1)+∑[∑[n]]` -/
def P4831740444028130689.Spec : Prop :=
  ∀ n, P4831740444028130689.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P17650288064387282067

`A000292(n+1)+C(n+5, 5)`
-/

namespace A051747.P17650288064387282067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (Nat.choose (n + 5) 5 : ℤ)

end

end A051747.P17650288064387282067

namespace A051747

/-- `A000292(n+1)+C(n+5, 5)` -/
def P17650288064387282067.Spec : Prop :=
  ∀ n, P17650288064387282067.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P15834079892780690807

`∑[A086274(n+1)+(n+1)²]`
-/

namespace A051747.P15834079892780690807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086274 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051747.P15834079892780690807

namespace A051747

/-- `∑[A086274(n+1)+(n+1)²]` -/
def P15834079892780690807.Spec : Prop :=
  ∀ n, P15834079892780690807.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P3592445126623113930

`A027658(n)+A005712(n+2)`
-/

namespace A051747.P3592445126623113930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027658 n + A005712 (n + 2)

end

end A051747.P3592445126623113930

namespace A051747

/-- `A027658(n)+A005712(n+2)` -/
def P3592445126623113930.Spec : Prop :=
  ∀ n, P3592445126623113930.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P7893654266668914921

`A027659(n)-A051744(n+1)`
-/

namespace A051747.P7893654266668914921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 n - A051744 (n + 1)

end

end A051747.P7893654266668914921

namespace A051747

/-- `A027659(n)-A051744(n+1)` -/
def P7893654266668914921.Spec : Prop :=
  ∀ n, P7893654266668914921.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P4095490917999315632

`A005719(n+2)-A005582(n)`
-/

namespace A051747.P4095490917999315632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005719 (n + 2) - A005582 n

end

end A051747.P4095490917999315632

namespace A051747

/-- `A005719(n+2)-A005582(n)` -/
def P4095490917999315632.Spec : Prop :=
  ∀ n, P4095490917999315632.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P7396795028213103201

`∑[A024191(n+1)]-A005701(n)`
-/

namespace A051747.P7396795028213103201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005701 n

end

end A051747.P7396795028213103201

namespace A051747

/-- `∑[A024191(n+1)]-A005701(n)` -/
def P7396795028213103201.Spec : Prop :=
  ∀ n, P7396795028213103201.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P17877401125904601421

`A051745(n+1)+A000292(n)+A000217(n)`
-/

namespace A051747.P17877401125904601421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051745 (n + 1) + (A000292 n + A000217 n)

end

end A051747.P17877401125904601421

namespace A051747

/-- `A051745(n+1)+A000292(n)+A000217(n)` -/
def P17877401125904601421.Spec : Prop :=
  ∀ n, P17877401125904601421.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P16932399856570136657

`A000292(n+1)+A107417(n)/A000217(n+1)`
-/

namespace A051747.P16932399856570136657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) + (A107417 n : ℚ) / (A000217 (n + 1) : ℚ)

end

end A051747.P16932399856570136657

namespace A051747

/-- `A000292(n+1)+A107417(n)/A000217(n+1)` -/
def P16932399856570136657.Spec : Prop :=
  ∀ n, P16932399856570136657.a n = (A051747 (n + 1) : ℚ)

end A051747

/-! ## A051747.P3073823890193633773

`∑[∑[A003600(n+1)]]`
-/

namespace A051747.P3073823890193633773
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051747.P3073823890193633773

namespace A051747

/-- `∑[∑[A003600(n+1)]]` -/
def P3073823890193633773.Spec : Prop :=
  ∀ n, P3073823890193633773.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P10530692947160438506

`A257199(n+2)-A000217(n+2)`
-/

namespace A051747.P10530692947160438506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257199 (n + 2) - A000217 (n + 2)

end

end A051747.P10530692947160438506

namespace A051747

/-- `A257199(n+2)-A000217(n+2)` -/
def P10530692947160438506.Spec : Prop :=
  ∀ n, P10530692947160438506.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P10685645084467708392

`A000292(n+1)+A277935(n+2)/2`
-/

namespace A051747.P10685645084467708392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000292 (n + 1) : ℚ) + (A277935 (n + 2) : ℚ) / 2

end

end A051747.P10685645084467708392

namespace A051747

/-- `A000292(n+1)+A277935(n+2)/2` -/
def P10685645084467708392.Spec : Prop :=
  ∀ n, P10685645084467708392.a n = (A051747 (n + 1) : ℚ)

end A051747

/-! ## A051747.P5321159544036084633

`A000292(n+1)+A132366(n)+A000389(n+1)`
-/

namespace A051747.P5321159544036084633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A132366 n + A000389 (n + 1))

end

end A051747.P5321159544036084633

namespace A051747

/-- `A000292(n+1)+A132366(n)+A000389(n+1)` -/
def P5321159544036084633.Spec : Prop :=
  ∀ n, P5321159544036084633.a n = A051747 (n + 1)

end A051747

/-! ## A051747.P2888510918580626948

`A000292(n+1)+A167566(n+3)-A024166(n+1)`
-/

namespace A051747.P2888510918580626948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1) + (A167566 (n + 3) - A024166 (n + 1))

end

end A051747.P2888510918580626948

namespace A051747

/-- `A000292(n+1)+A167566(n+3)-A024166(n+1)` -/
def P2888510918580626948.Spec : Prop :=
  ∀ n, P2888510918580626948.a n = A051747 (n + 1)

end A051747

/-!
# A051748: Number of character table entries of the symmetric group S_n which are < 0.

The programs for A051748, there is no canonical definition to state claims against.
-/

/-! ## A051748.P2419038867015711562

`A006908(n+1)-A051749(n+1)`
-/

namespace A051748.P2419038867015711562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006908 (n + 1) - A051749 (n + 1)

end

end A051748.P2419038867015711562

/-! ## A051748.P7122077642491068700

`A006908(A000027(n+1))%A051749(n+1)`
-/

namespace A051748.P7122077642491068700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006908 (A000027 (n + 1)).toNat) (A051749 (n + 1))

end

end A051748.P7122077642491068700

/-! ## A051748.P18042884090517943717

`A006908(n+1)%A051749(A130446(n+1))`
-/

namespace A051748.P18042884090517943717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006908 (n + 1)) (A051749 (A130446 (n + 1)).toNat)

end

end A051748.P18042884090517943717

/-! ## A051748.P10545296309250224680

`A001255(n+1)-(A051749(n+1)+A006907(n+1))`
-/

namespace A051748.P10545296309250224680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - (A051749 (n + 1) + A006907 (n + 1))

end

end A051748.P10545296309250224680

/-! ## A051748.P11839885302607541774

`A000041(n+1)²-A006907(n+1)-A051749(n+1)`
-/

namespace A051748.P11839885302607541774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A006907 (n + 1) - A051749 (n + 1)

end

end A051748.P11839885302607541774

/-!
# A051749: Number of character table entries of the symmetric group S_n which are > 0.

The programs for A051749, there is no canonical definition to state claims against.
-/

/-! ## A051749.P12647773966448711255

`A006908(n+1)-A051748(n+1)`
-/

namespace A051749.P12647773966448711255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006908 (n + 1) - A051748 (n + 1)

end

end A051749.P12647773966448711255

/-! ## A051749.P9696915610645341381

`A001255(n+1)-(A051748(n+1)+A006907(n+1))`
-/

namespace A051749.P9696915610645341381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001255 (n + 1) - (A051748 (n + 1) + A006907 (n + 1))

end

end A051749.P9696915610645341381

/-! ## A051749.P13544776688421071998

`Δ[A000070(n)]²-A006907(n+1)-A051748(n+1)`
-/

namespace A051749.P13544776688421071998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 - A006907 (n + 1) - A051748 (n + 1)

end

end A051749.P13544776688421071998

/-! ## A051749.P4624454164520350830

`record[A035363(n)²]-A006907(n+1)-A051748(n+1)`
-/

namespace A051749.P4624454164520350830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A006907 (n + 1) - A051748 (n + 1)

end

end A051749.P4624454164520350830

/-! ## A051749.P6898200583295629557

`A000041(n+1)²-A006907(n+1)-A051748(n+1)`
-/

namespace A051749.P6898200583295629557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (n + 1) ^ 2 - A006907 (n + 1) - A051748 (n + 1)

end

end A051749.P6898200583295629557

/-!
# A051750: Primes whose cubes lack zeros.

The programs for A051750, there is no canonical definition to state claims against.
-/

/-! ## A051750.P15431260976669766967

`A051751(n+1)^(1/3)`
-/

namespace A051750.P15431260976669766967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A051751 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A051750.P15431260976669766967

/-! ## A051750.P1652829458618137074

`p?[A052044(n+1)]`
-/

namespace A051750.P1652829458618137074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A051750.P1652829458618137074

/-! ## A051750.P12172836293149998248

`filter[A052044(n+1), A010051(#)]`
-/

namespace A051750.P12172836293149998248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A051750.P12172836293149998248

/-! ## A051750.P6339682635628565211

`∩[A000040(n+1), A052044(n+1)]`
-/

namespace A051750.P6339682635628565211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051750.P6339682635628565211

/-! ## A051750.P8879546491872050085

`∩[A052044(n+1), A182986(n+1)]`
-/

namespace A051750.P8879546491872050085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051750.P8879546491872050085

/-! ## A051750.P10370639197974172360

`filter[A052044(n+2), A080339(#)]`
-/

namespace A051750.P10370639197974172360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A051750.P10370639197974172360

/-! ## A051750.P8402091289190174388

`∩[A052044(n+1), A385492(n+1)]`
-/

namespace A051750.P8402091289190174388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051750.P8402091289190174388

/-!
# A051751: Cubes arising in A051750.

The programs for A051751, there is no canonical definition to state claims against.
-/

/-! ## A051751.P6788170971813222690

`A051750(n+1)^3`
-/

namespace A051751.P6788170971813222690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051750 (n + 1) ^ 3

end

end A051751.P6788170971813222690

/-! ## A051751.P9595434014277660381

`A051750(n+1)²*A051750(Δ[n²]-n)`
-/

namespace A051751.P9595434014277660381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051750 (n + 1) ^ 2 * A051750 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat

end

end A051751.P9595434014277660381

/-! ## A051751.P13205129103012425093

`p?[A052044(n+1)]^3`
-/

namespace A051751.P13205129103012425093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) ^ 3

end

end A051751.P13205129103012425093

/-! ## A051751.P6291297822020248093

`∩[A030078(n+1), A052045(n+1)]`
-/

namespace A051751.P6291297822020248093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P6291297822020248093

/-! ## A051751.P17210885295273235142

`∩[A052045(n+1), A033477(n)]`
-/

namespace A051751.P17210885295273235142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P17210885295273235142

/-! ## A051751.P3942290481105498091

`A000578(A051750(n+1))`
-/

namespace A051751.P3942290481105498091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A051750 (n + 1)).toNat

end

end A051751.P3942290481105498091

/-! ## A051751.P6209509974794327401

`A000578(p?[A052044(n+1)])`
-/

namespace A051751.P6209509974794327401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052044 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A051751.P6209509974794327401

/-! ## A051751.P17530141406419613561

`∩[A195942(n+1), A033477(n)]`
-/

namespace A051751.P17530141406419613561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033477 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P17530141406419613561

/-! ## A051751.P7130496459164282007

`∩[A052045(n+1), A053810(n+1)]`
-/

namespace A051751.P7130496459164282007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P7130496459164282007

/-! ## A051751.P17424458703294110732

`∩[A030078(n+1), A195942(n+1)]`
-/

namespace A051751.P17424458703294110732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P17424458703294110732

/-! ## A051751.P511902216213151270

`∩[A153147(n+1), A195942(n+1)]`
-/

namespace A051751.P511902216213151270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P511902216213151270

/-! ## A051751.P7775420468323546454

`∩[A052045(n+1), A352423(n+1)]`
-/

namespace A051751.P7775420468323546454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052045 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P7775420468323546454

/-! ## A051751.P18122162142451952137

`∩[A195942(n+1), A352423(n+1)]`
-/

namespace A051751.P18122162142451952137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051751.P18122162142451952137

/-!
# A051752: Number of n X n (real) {0,1}-matrices having determinant A003432(n).

The programs for A051752, there is no canonical definition to state claims against.
-/

/-! ## A051752.P14237589222223897624

`A144880(A082938(n+1))`
-/

namespace A051752.P14237589222223897624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144880 (A082938 (n + 1)).toNat

end

end A051752.P14237589222223897624

/-! ## A051752.P14701243515124639388

`∏[A204016(∏[A139316(n+1)])]`
-/

namespace A051752.P14701243515124639388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139316 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204016 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A051752.P14701243515124639388

/-!
# A051753: Number of n X n (-1,0,1)-matrices having maximum determinant (=A003433(n)).

The programs for A051753, there is no canonical definition to state claims against.
-/

/-! ## A051753.P4557533197530979793

`A002805(n+1)*A221590(A000045(2*(n+1)))`
-/

namespace A051753.P4557533197530979793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002805 (n + 1) * A221590 (A000045 (2 * (n + 1))).toNat

end

end A051753.P4557533197530979793

/-!
# A051754: Consider problem of placing N queens on an n X n board so that each queen attacks precisely 1 other. Sequence gives maximal number of queens.

The programs for A051754, there is no canonical definition to state claims against.
-/

/-! ## A051754.P16402340557097612088

`∑[A260686(2*(n+1))]-A128049(3*n)`
-/

namespace A051754.P16402340557097612088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260686 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A128049 (3 * n)

end

end A051754.P16402340557097612088

/-! ## A051754.P7202172205970750509

`A302402(gcd(A180119(n), A302402(3*(n+1))))`
-/

namespace A051754.P7202172205970750509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302402 (Int.gcd (A180119 n) (A302402 (3 * (n + 1))))

end

end A051754.P7202172205970750509

/-! ## A051754.P13284457392425422313

`A052928(A260113(n+2))`
-/

namespace A051754.P13284457392425422313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052928 (A260113 (n + 2)).toNat

end

end A051754.P13284457392425422313

/-!
# A051755: Consider problem of placing N queens on an n X n board so that each queen attacks precisely 2 others. Sequence gives maximal number of queens.

The programs for A051755, the canonical program `A051755.P12682415417044185776` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051755 has offset 2).

The definition of A051755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051755.P12682415417044185776

`2*a(n-1)-a(n-2)` with `a(0)=3, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051755

/-- `2*a(n-1)-a(n-2)` -/
def P12682415417044185776.Spec : Prop :=
  ∀ n, P12682415417044185776.a n = A051755 (n + 2)

theorem P12682415417044185776.correct : P12682415417044185776.Spec := by
  intro n
  simp only [A051755, Nat.add_sub_cancel]

end A051755

/-!
# A051756: Consider the problem of placing N queens on an n X n board so that each queen attacks precisely 3 others. Sequence gives maximal number of queens.

The programs for A051756, there is no canonical definition to state claims against.
-/

/-! ## A051756.P1151144042904558146

`2*(comp[6*n]+1)`
-/

namespace A051756.P1151144042904558146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A051756.P1151144042904558146

/-! ## A051756.P1791168543403307554

`∑[(gcd(5, n)+3)/2]`
-/

namespace A051756.P1791168543403307554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 5 n + 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P1791168543403307554

/-! ## A051756.P13136297807575943565

`∑[gcd(10, 2*n)%6]`
-/

namespace A051756.P13136297807575943565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 10 (2 * n) % 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P13136297807575943565

/-! ## A051756.P13056635406546258896

`2*lt[n, lcm(6, n)]+2`
-/

namespace A051756.P13056635406546258896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 6 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 2

end

end A051756.P13056635406546258896

/-! ## A051756.P5761867380159165519

`∑[gcd(3, n²%5)+1]`
-/

namespace A051756.P5761867380159165519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n ^ 2 % 5) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P5761867380159165519

/-! ## A051756.P2837436198876934570

`∑[(3*(n²²+3))%5]`
-/

namespace A051756.P2837436198876934570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n ^ 2) ^ 2 + 3) % 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P2837436198876934570

/-! ## A051756.P4735345984535678560

`∑[floor(a(n-5))]` with `a(0)=4, a(1)=2, a(2)=2, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A051756.P4735345984535678560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 2, 2, 2, 2] fun n f1 =>
  f1 (n - 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P4735345984535678560

/-! ## A051756.P16509667365291130903

`lt[(n+2)%6, xor(n, n-1)]`
-/

namespace A051756.P16509667365291130903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A051756.P16509667365291130903

/-! ## A051756.P10495796583873876702

`A047314(n+3)+n`
-/

namespace A051756.P10495796583873876702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047314 (n + 3) + (n : ℤ)

end

end A051756.P10495796583873876702

/-! ## A051756.P6360914444982918947

`∑[A074459(2*n²)]`
-/

namespace A051756.P6360914444982918947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074459 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051756.P6360914444982918947

/-!
# A051759: Consider the problem of placing A051756(n) queens on an n X n board so that each queen attacks precisely 3 others. Sequence gives number of solutions up to square symmetry.

The programs for A051759, there is no canonical definition to state claims against.
-/

/-! ## A051759.P11053113566178366560

`A051569(n+2)+A253641(n)²-1`
-/

namespace A051759.P11053113566178366560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051569 (n + 2) + (A253641 n ^ 2 - 1)

end

end A051759.P11053113566178366560

/-! ## A051759.P18112056277309183816

`A051570((n+2)*a(A326291(n+1)))` with `a(0)=1`
-/

namespace A051759.P18112056277309183816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A051570 ((n + 2 : ℤ) * a (A326291 (n + 1)).toNat).toNat

end

end A051759.P18112056277309183816

/-! ## A051759.P8832951033478692288

`A051569(n+2)+3*A320656(3*n+2)`
-/

namespace A051759.P8832951033478692288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051569 (n + 2) + 3 * A320656 (3 * n + 2)

end

end A051759.P8832951033478692288

/-! ## A051759.P179233606579576241

`A051569(n+2)+A000045(A105570(n))`
-/

namespace A051759.P179233606579576241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051569 (n + 2) + A000045 (A105570 n).toNat

end

end A051759.P179233606579576241

/-!
# A051760: Numbers that are simultaneously a sum of distinct factorials and of the form a^b with b >= 3.

The programs for A051760, there is no canonical definition to state claims against.
-/

/-! ## A051760.P4531130939024558943

`A245713(eq[1, lcm(20, n)/20])`
-/

namespace A051760.P4531130939024558943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 20 n : ℚ) / 20

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245713 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n)

end

end A051760.P4531130939024558943

/-!
# A051761: Numbers that are simultaneously a sum of factorials of distinct integers and of the form a^b with b >= 2.

The programs for A051761, there is no canonical definition to state claims against.
-/

/-! ## A051761.P15392471694451869996

`∪[A025494(n+1)%A051760(n+1), A051760(n+1)]`
-/

namespace A051761.P15392471694451869996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025494 (n + 1)) (A051760 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051761.P15392471694451869996

/-!
# A051763: Number of nonalternating prime knots with n crossings.

The programs for A051763, there is no canonical definition to state claims against.
-/

/-! ## A051763.P8663768751420344699

`A002863(n+1)-A002864(n+1)`
-/

namespace A051763.P8663768751420344699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A002864 (n + 1)

end

end A051763.P8663768751420344699

/-! ## A051763.P5700112588957584563

`A002863(n+1)+-A002864(n+1)%A002864(n+3)`
-/

namespace A051763.P5700112588957584563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) + Int.tmod (-A002864 (n + 1)) (A002864 (n + 3))

end

end A051763.P5700112588957584563

/-! ## A051763.P5022089208395037128

`A051764(n+1)+A052408(n+1)+A051765(n+1)-A002864(n+1)`
-/

namespace A051763.P5022089208395037128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051764 (n + 1) + (A052408 (n + 1) + A051765 (n + 1)) - A002864 (n + 1)

end

end A051763.P5022089208395037128

/-! ## A051763.P17191197260527606866

`Δ[A116584(abs(1-n)+1)]-A002864(n+1)`
-/

namespace A051763.P17191197260527606866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116584 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002864 (n + 1)

end

end A051763.P17191197260527606866

/-! ## A051763.P550847056675213789

`A052402(n+1)+A052403(n+1)-A002864(n+1)`
-/

namespace A051763.P550847056675213789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) + (A052403 (n + 1) - A002864 (n + 1))

end

end A051763.P550847056675213789

/-!
# A051764: Number of torus knots with n crossings.

The programs for A051764, there is no canonical definition to state claims against.
-/

/-! ## A051764.P3326796647681467938

`A263958(n+1)%A001221(∑[A050530(n+1)])`
-/

namespace A051764.P3326796647681467938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A263958 (n + 1)) (A001221 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A051764.P3326796647681467938

/-! ## A051764.P15183629306312763272

`A352823(((n+1)/∏{p}[n+1, #^val(n+1, #²)])%A352774(3*n+2))`
-/

namespace A051764.P15183629306312763272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352823 (Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ))) (A352774 (3 * n + 2))).toNat

end

end A051764.P15183629306312763272

/-! ## A051764.P17634547386744128499

`A316827(A122978(n+1))-A055881(n+1)`
-/

namespace A051764.P17634547386744128499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316827 (A122978 (n + 1)).toNat - A055881 (n + 1)

end

end A051764.P17634547386744128499

/-! ## A051764.P4199865786000878624

`A333254(A196707(n+3))%A265893(n+1)`
-/

namespace A051764.P4199865786000878624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333254 (A196707 (n + 3)).toNat) (A265893 (n + 1))

end

end A051764.P4199865786000878624

/-! ## A051764.P10324464325774950187

`A243148(lcm(A122330(3*n+4), A261293(n+3)))`
-/

namespace A051764.P10324464325774950187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (Int.lcm (A122330 (3 * n + 4)) (A261293 (n + 3)))

end

end A051764.P10324464325774950187

/-!
# A051765: Number of prime satellite knots with n crossings.

The programs for A051765, there is no canonical definition to state claims against.
-/

/-! ## A051765.P14978724593325965189

`A052407(n+1)-A051764(n+1)`
-/

namespace A051765.P14978724593325965189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052407 (n + 1) - A051764 (n + 1)

end

end A051765.P14978724593325965189

/-! ## A051765.P6851133866690769750

`A002863(n+1)-(A052408(n+1)+A051764(n+1))`
-/

namespace A051765.P6851133866690769750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052408 (n + 1) + A051764 (n + 1))

end

end A051765.P6851133866690769750

/-! ## A051765.P11757978657196890960

`A051763(n+1)+A002864(n+1)-(A052408(n+1)+A051764(n+1))`
-/

namespace A051765.P11757978657196890960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A052408 (n + 1) + A051764 (n + 1))

end

end A051765.P11757978657196890960

/-!
# A051766: Number of chiral noninvertible prime knots with n crossings.

The programs for A051766, there is no canonical definition to state claims against.
-/

/-! ## A051766.P7609024240743699927

`A002863(n+1)-(A052401(n+1)+A051769(n+1))`
-/

namespace A051766.P7609024240743699927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052401 (n + 1) + A051769 (n + 1))

end

end A051766.P7609024240743699927

/-! ## A051766.P853092650787938315

`A052403(n+1)-(A051768(n+1)+A051767(n+1))`
-/

namespace A051766.P853092650787938315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052403 (n + 1) - (A051768 (n + 1) + A051767 (n + 1))

end

end A051766.P853092650787938315

/-! ## A051766.P6269688212686260621

`A052400(n+1)+A052403(n+1)-A052401(n+1)`
-/

namespace A051766.P6269688212686260621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052400 (n + 1) + (A052403 (n + 1) - A052401 (n + 1))

end

end A051766.P6269688212686260621

/-! ## A051766.P15527416025105905106

`A051763(n+1)+A002864(n+1)-(A052401(n+1)+A051769(n+1))`
-/

namespace A051766.P15527416025105905106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A052401 (n + 1) + A051769 (n + 1))

end

end A051766.P15527416025105905106

/-! ## A051766.P12327111144293639732

`A002863(n+1)-A052402(n+1)-(A051768(n+1)+A051767(n+1))`
-/

namespace A051766.P12327111144293639732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052402 (n + 1) - (A051768 (n + 1) + A051767 (n + 1))

end

end A051766.P12327111144293639732

/-!
# A051767: Number of amphichiral (+) noninvertible prime knots with n crossings.

The programs for A051767, there is no canonical definition to state claims against.
-/

/-! ## A051767.P8885059165054153983

`floor((log(3)+n)^((-log(3))^(n+1)-3))`
-/

namespace A051767.P8885059165054153983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Real.log (3 : ℝ) + (n : ℝ)) ^ ((-Real.log (3 : ℝ)) ^ (n + 1) - 3)⌋

end

end A051767.P8885059165054153983

/-! ## A051767.P18231425697188294085

`A129722(floor(2^(∑[n]%(n+1))/(∑{d}[n+1, #]+1)))`
-/

namespace A051767.P18231425697188294085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129722 ⌊(2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℚ) / ((∑ d ∈ Nat.divisors (f2 n), d + 1 : ℕ) : ℚ)⌋.toNat

end

end A051767.P18231425697188294085

/-! ## A051767.P18118018115247151066

`A345166(A073711(n))`
-/

namespace A051767.P18118018115247151066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345166 (A073711 n).toNat

end

end A051767.P18118018115247151066

/-! ## A051767.P663525000271313787

`Δ[A035563(A103609(n))]`
-/

namespace A051767.P663525000271313787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035563 (A103609 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051767.P663525000271313787

/-! ## A051767.P10121999867201581851

`A139600(round(sqrt(A115205(n))))`
-/

namespace A051767.P10121999867201581851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139600 (SequenceMachineLib.roundAway (Real.sqrt (A115205 n : ℝ))).toNat

end

end A051767.P10121999867201581851

/-!
# A051768: Number of amphichiral (-) noninvertible prime knots with n crossings.

The programs for A051768, there is no canonical definition to state claims against.
-/

/-! ## A051768.P6472047038588118778

`A052403(n+1)-(A051767(n+1)+A051766(n+1))`
-/

namespace A051768.P6472047038588118778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052403 (n + 1) - (A051767 (n + 1) + A051766 (n + 1))

end

end A051768.P6472047038588118778

/-! ## A051768.P3705550658480890154

`A052401(n+1)-(A052400(n+1)+A051767(n+1))`
-/

namespace A051768.P3705550658480890154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052401 (n + 1) - (A052400 (n + 1) + A051767 (n + 1))

end

end A051768.P3705550658480890154

/-! ## A051768.P8856303060567571254

`A002863(n+1)-A052402(n+1)-(A051767(n+1)+A051766(n+1))`
-/

namespace A051768.P8856303060567571254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - A052402 (n + 1) - (A051767 (n + 1) + A051766 (n + 1))

end

end A051768.P8856303060567571254

/-! ## A051768.P5483024357334934275

`A052401(n+1)-(A051767(n+1)+A052402(n+1)-A051769(n+1))`
-/

namespace A051768.P5483024357334934275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052401 (n + 1) - (A051767 (n + 1) + (A052402 (n + 1) - A051769 (n + 1)))

end

end A051768.P5483024357334934275

/-! ## A051768.P18160574897633516629

`Δ[A173557(A067659(n)!)]`
-/

namespace A051768.P18160574897633516629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173557 (Nat.factorial (A067659 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051768.P18160574897633516629

/-!
# A051769: Number of chiral invertible prime knots with n crossings.

The programs for A051769, there is no canonical definition to state claims against.
-/

/-! ## A051769.P1180828275788155004

`A052402(n+1)-A052400(n+1)`
-/

namespace A051769.P1180828275788155004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052402 (n + 1) - A052400 (n + 1)

end

end A051769.P1180828275788155004

/-! ## A051769.P18041898568603108938

`A002863(n+1)-(A052401(n+1)+A051766(n+1))`
-/

namespace A051769.P18041898568603108938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052401 (n + 1) + A051766 (n + 1))

end

end A051769.P18041898568603108938

/-! ## A051769.P10375524802600711185

`A002863(n+1)-(A052403(n+1)+A052400(n+1))`
-/

namespace A051769.P10375524802600711185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002863 (n + 1) - (A052403 (n + 1) + A052400 (n + 1))

end

end A051769.P10375524802600711185

/-! ## A051769.P16857910595588568660

`A051763(n+1)+A002864(n+1)-(A052401(n+1)+A051766(n+1))`
-/

namespace A051769.P16857910595588568660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A052401 (n + 1) + A051766 (n + 1))

end

end A051769.P16857910595588568660

/-! ## A051769.P6400796305975099464

`A051763(n+1)+A002864(n+1)-(A052403(n+1)+A052400(n+1))`
-/

namespace A051769.P6400796305975099464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051763 (n + 1) + A002864 (n + 1) - (A052403 (n + 1) + A052400 (n + 1))

end

end A051769.P6400796305975099464

/-!
# A051772: Distended numbers.

The programs for A051772, there is no canonical definition to state claims against.
-/

/-! ## A051772.P8046123637305763958

`comp[A051774(n+1)-1]+1`
-/

namespace A051772.P8046123637305763958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A051772.P8046123637305763958

/-! ## A051772.P1549403336921650048

`comp[∪[A051774(n+1), A008588(n)]]`
-/

namespace A051772.P1549403336921650048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A051772.P1549403336921650048

/-! ## A051772.P9774467451094022626

`record[A331694(n+1)-A001065(n+1)]`
-/

namespace A051772.P9774467451094022626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (n + 1) - A001065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051772.P9774467451094022626

/-! ## A051772.P16880730777671036491

`eq[A000203(n+1), A331694(n+1)]+1`
-/

namespace A051772.P16880730777671036491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A051772.P16880730777671036491

/-! ## A051772.P2787855840298152314

`A000027(lt[A000203(n+1), A331694(n+1)+1]+1)`
-/

namespace A051772.P2787855840298152314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A051772.P2787855840298152314

/-! ## A051772.P16765244604264434

`eq[A209229(A057728(n+1)), A308608(n+1)]+1`
-/

namespace A051772.P16765244604264434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (A057728 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A051772.P16765244604264434

/-! ## A051772.P8837041852785727780

`record[A114327(A308608(n+1)+A000096(n))]`
-/

namespace A051772.P8837041852785727780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (A308608 (n + 1) + A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051772.P8837041852785727780

/-! ## A051772.P498621621692611741

`record[(n+1)/A181322(A308608(n+1)+A000096(n))]`
-/

namespace A051772.P498621621692611741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A181322 (A308608 (n + 1) + A000096 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A051772.P498621621692611741

/-! ## A051772.P18056095610942490550

`eq[A178334(n)², A308608(A233583(n+1))]`
-/

namespace A051772.P18056095610942490550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308608 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051772.P18056095610942490550

/-!
# A051773: Deficient numbers that are not distended.

The programs for A051773, there is no canonical definition to state claims against.
-/

/-! ## A051773.P6384794961238049276

`filter[A051774(n+1), A294934(#)]`
-/

namespace A051773.P6384794961238049276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A051773.P6384794961238049276

/-! ## A051773.P14686178317653515483

`∩[A051774(n+1), A354145(n+1)]`
-/

namespace A051773.P14686178317653515483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P14686178317653515483

/-! ## A051773.P4006132623615545604

`∩[A051774(n+1), A237046(n+1)]`
-/

namespace A051773.P4006132623615545604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P4006132623615545604

/-! ## A051773.P7910901536005230855

`∩[A005100(n+1), A051774(n+1)]`
-/

namespace A051773.P7910901536005230855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P7910901536005230855

/-! ## A051773.P8411016589466083963

`∩[A051774(n+1), A205099(n+1)+A033884(n+1)]`
-/

namespace A051773.P8411016589466083963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205099 (n + 1) + A033884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P8411016589466083963

/-! ## A051773.P13253916349490404297

`∩[A051774(n+1), A204823(n+1)-A205099(n+1)]`
-/

namespace A051773.P13253916349490404297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204823 (n + 1) - A205099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P13253916349490404297

/-! ## A051773.P15740310121472630655

`∩[A051774(n+1), A125493(n+1)]`
-/

namespace A051773.P15740310121472630655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125493 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P15740310121472630655

/-! ## A051773.P519262109709267344

`∪[A307222(n+1), A332047(n+1)]`
-/

namespace A051773.P519262109709267344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332047 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051773.P519262109709267344

/-!
# A051774: Contracted numbers.

The programs for A051774, there is no canonical definition to state claims against.
-/

/-! ## A051774.P7264895837528517347

`∪[A023196(n+1), A051773(n+1)]`
-/

namespace A051774.P7264895837528517347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051773 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051774.P7264895837528517347

/-! ## A051774.P4219393540618476947

`∪[A051773(n+1), A119357(n+1)]`
-/

namespace A051774.P4219393540618476947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051774.P4219393540618476947

/-! ## A051774.P16724723810195010211

`∪[A051773(n+1), A177052(n+1)]`
-/

namespace A051774.P16724723810195010211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177052 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051774.P16724723810195010211

/-! ## A051774.P12617749296907109842

`∪[A051773(n+1), A326133(n+1)]`
-/

namespace A051774.P12617749296907109842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051773 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A051774.P12617749296907109842

/-! ## A051774.P12489957372482985780

`lt[A331694(n+1), A000203(n+1)]+1`
-/

namespace A051774.P12489957372482985780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A051774.P12489957372482985780

/-! ## A051774.P5978484802039380852

`lt[A331694(n+1)-A001065(n+1), n+1]+1`
-/

namespace A051774.P5978484802039380852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (n + 1) - A001065 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A051774.P5978484802039380852

/-! ## A051774.P15862105205662012746

`lt[A331694(A028310(n)), A039653(n)]`
-/

namespace A051774.P15862105205662012746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051774.P15862105205662012746

/-! ## A051774.P18046691005056786812

`lt[A331694(A233583(n+1)), A039653(n)]`
-/

namespace A051774.P18046691005056786812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331694 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A051774.P18046691005056786812

/-! ## A051774.P16530833575314522629

`A119357(n+1)%A219785(n+1)`
-/

namespace A051774.P16530833575314522629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119357 (n + 1)) (A219785 (n + 1))

end

end A051774.P16530833575314522629

/-!
# A051775: Table T(n,m) = Nim-product of n and m, read by antidiagonals, for n >= 0, m >= 0.

The programs for A051775, there is no canonical definition to state claims against.
-/

/-! ## A051775.P12255449176286891900

`∑{e}[or(A118190(n), A285118(n)), #]`
-/

namespace A051775.P12255449176286891900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118190 n) (A285118 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A051775.P12255449176286891900

/-! ## A051775.P8095153572901867335

`A008288(n)%A049108(A155971(n))`
-/

namespace A051775.P8095153572901867335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008288 n) (A049108 (A155971 n).toNat)

end

end A051775.P8095153572901867335

/-! ## A051775.P15323953300265787675

`A132781(A167040(n))%A007318(n)`
-/

namespace A051775.P15323953300265787675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132781 (A167040 n).toNat) (A007318 n)

end

end A051775.P15323953300265787675

/-! ## A051775.P4661852670838813026

`A283002(A008288(n)+1)%A130595(n)`
-/

namespace A051775.P4661852670838813026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A283002 (A008288 n + 1).toNat) (A130595 n)

end

end A051775.P4661852670838813026

/-! ## A051775.P14636679252549978929

`A104414(A176427(n)%A245705(n+1))`
-/

namespace A051775.P14636679252549978929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104414 (Int.tmod (A176427 n) (A245705 (n + 1))).toNat

end

end A051775.P14636679252549978929

/-!
# A051776: Table T(n,m) = Nim-product of n and m, read by antidiagonals, for n >= 1, m >= 1.

The programs for A051776, there is no canonical definition to state claims against.
-/

/-! ## A051776.P7483905512648135173

`A051775(lt[0, A051775(n)])`
-/

namespace A051776.P7483905512648135173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A051776.P7483905512648135173

/-! ## A051776.P10460699510175373745

`A051775(2*A003057(n+2)+n)`
-/

namespace A051776.P10460699510175373745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (2 * A003057 (n + 2) + (n : ℤ)).toNat

end

end A051776.P10460699510175373745

/-! ## A051776.P14728559840676542165

`A051775(2*A014132(n+1)-n)`
-/

namespace A051776.P14728559840676542165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A051776.P14728559840676542165

/-! ## A051776.P1953751378978577107

`A051775(A014132(A014132(n+1)))`
-/

namespace A051776.P1953751378978577107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A014132 (A014132 (n + 1)).toNat).toNat

end

end A051776.P1953751378978577107

/-! ## A051776.P4591537480239046395

`A051775(eq[0, A000007(A051775(n))])`
-/

namespace A051776.P4591537480239046395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A051775 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051776.P4591537480239046395

/-! ## A051776.P14826570539647034718

`A051775(eq[A023532(n), A035214(n)])`
-/

namespace A051776.P14826570539647034718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A051776.P14826570539647034718

/-! ## A051776.P10901459529836032079

`A051775(A003057(n+2)+A003057(n+2)+n)`
-/

namespace A051776.P10901459529836032079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ))).toNat

end

end A051776.P10901459529836032079

/-! ## A051776.P7428172974115611486

`A051775(A003057(n+2)²-n)`
-/

namespace A051776.P7428172974115611486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 (A003057 (n + 2) ^ 2 - (n : ℤ)).toNat

end

end A051776.P7428172974115611486

/-! ## A051776.P11538263390834771224

`A051775((A002024(n+1)+1)²-n)`
-/

namespace A051776.P11538263390834771224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 ((A002024 (n + 1) + 1) ^ 2 - (n : ℤ)).toNat

end

end A051776.P11538263390834771224

/-!
# A051777: Triangle read by rows, where row (n) = n mod n, n mod (n-1), n mod (n-2), ...n mod 1.

The programs for A051777, the canonical program `A051777.P15797319284762546370` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051777 has offset 1).

The definition of A051777 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051777.P2359020823604938867

`A048158(∑[char[∑[n]]]²-n)`
-/

namespace A051777.P2359020823604938867
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A051777.P2359020823604938867

namespace A051777

/-- `A048158(∑[char[∑[n]]]²-n)` -/
def P2359020823604938867.Spec : Prop :=
  ∀ n, P2359020823604938867.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P352268234712684345

`∑[char[∑[n]]]%A004736(n+1)`
-/

namespace A051777.P352268234712684345
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A004736 (n + 1))

end

end A051777.P352268234712684345

namespace A051777

/-- `∑[char[∑[n]]]%A004736(n+1)` -/
def P352268234712684345.Spec : Prop :=
  ∀ n, P352268234712684345.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P14528989716479005533

`A002262(n)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051777.P14528989716479005533
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051777.P14528989716479005533

namespace A051777

/-- `A002262(n)%(C(comp[∑[n]]-n, 2)-n)` -/
def P14528989716479005533.Spec : Prop :=
  ∀ n, P14528989716479005533.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P1509076577072600837

`A002024(n+1)%(C(comp[∑[n]]-n, 2)-n)`
-/

namespace A051777.P1509076577072600837
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ))

end

end A051777.P1509076577072600837

namespace A051777

/-- `A002024(n+1)%(C(comp[∑[n]]-n, 2)-n)` -/
def P1509076577072600837.Spec : Prop :=
  ∀ n, P1509076577072600837.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P17084842175574637966

`A002262(A286159(n+1))`
-/

namespace A051777.P17084842175574637966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A286159 (n + 1)).toNat

end

end A051777.P17084842175574637966

namespace A051777

/-- `A002262(A286159(n+1))` -/
def P17084842175574637966.Spec : Prop :=
  ∀ n, P17084842175574637966.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P18192134718122475325

`A002262(n)%A065625(n)`
-/

namespace A051777.P18192134718122475325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002262 n) (A065625 n)

end

end A051777.P18192134718122475325

namespace A051777

/-- `A002262(n)%A065625(n)` -/
def P18192134718122475325.Spec : Prop :=
  ∀ n, P18192134718122475325.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P13706838789995026450

`A114219(n)%A089688(n)`
-/

namespace A051777.P13706838789995026450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114219 n) (A089688 n)

end

end A051777.P13706838789995026450

namespace A051777

/-- `A114219(n)%A089688(n)` -/
def P13706838789995026450.Spec : Prop :=
  ∀ n, P13706838789995026450.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P15395718841819844993

`A191532(n)%A089688(n)`
-/

namespace A051777.P15395718841819844993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191532 n) (A089688 n)

end

end A051777.P15395718841819844993

namespace A051777

/-- `A191532(n)%A089688(n)` -/
def P15395718841819844993.Spec : Prop :=
  ∀ n, P15395718841819844993.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P15797319284762546370

`A123578(n)%A193592(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A051777

/-- `A123578(n)%A193592(n)` -/
def P15797319284762546370.Spec : Prop :=
  ∀ n, P15797319284762546370.a n = A051777 (n + 1)

theorem P15797319284762546370.correct : P15797319284762546370.Spec := by
  intro n
  simp only [A051777, Nat.add_sub_cancel]

end A051777

/-! ## A051777.P16480680269391075902

`A130855(n)%A193592(n)`
-/

namespace A051777.P16480680269391075902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130855 n) (A193592 n)

end

end A051777.P16480680269391075902

namespace A051777

/-- `A130855(n)%A193592(n)` -/
def P16480680269391075902.Spec : Prop :=
  ∀ n, P16480680269391075902.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P9658934655802665046

`A139601(n)%A193592(n)`
-/

namespace A051777.P9658934655802665046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139601 n) (A193592 n)

end

end A051777.P9658934655802665046

namespace A051777

/-- `A139601(n)%A193592(n)` -/
def P9658934655802665046.Spec : Prop :=
  ∀ n, P9658934655802665046.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P12838793420138854863

`A329221(n)%A089688(n)`
-/

namespace A051777.P12838793420138854863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A329221 n) (A089688 n)

end

end A051777.P12838793420138854863

namespace A051777

/-- `A329221(n)%A089688(n)` -/
def P12838793420138854863.Spec : Prop :=
  ∀ n, P12838793420138854863.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P14511328584606590356

`A002024(n+1)%A193592(n)`
-/

namespace A051777.P14511328584606590356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A193592 n)

end

end A051777.P14511328584606590356

namespace A051777

/-- `A002024(n+1)%A193592(n)` -/
def P14511328584606590356.Spec : Prop :=
  ∀ n, P14511328584606590356.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P2090186933659423812

`A130270(n+1)%A089688(n)`
-/

namespace A051777.P2090186933659423812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130270 (n + 1)) (A089688 n)

end

end A051777.P2090186933659423812

namespace A051777

/-- `A130270(n+1)%A089688(n)` -/
def P2090186933659423812.Spec : Prop :=
  ∀ n, P2090186933659423812.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P4920092847881442032

`A144328(n+1)%A089688(n)`
-/

namespace A051777.P4920092847881442032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144328 (n + 1)) (A089688 n)

end

end A051777.P4920092847881442032

namespace A051777

/-- `A144328(n+1)%A089688(n)` -/
def P4920092847881442032.Spec : Prop :=
  ∀ n, P4920092847881442032.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P4685100248742867056

`A002260(A286159(n+1)+1)-1`
-/

namespace A051777.P4685100248742867056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A286159 (n + 1) + 1).toNat - 1

end

end A051777.P4685100248742867056

namespace A051777

/-- `A002260(A286159(n+1)+1)-1` -/
def P4685100248742867056.Spec : Prop :=
  ∀ n, P4685100248742867056.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P4193980897505448173

`A051126(n+1)-A191907(n+1)`
-/

namespace A051777.P4193980897505448173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (n + 1) - A191907 (n + 1)

end

end A051777.P4193980897505448173

namespace A051777

/-- `A051126(n+1)-A191907(n+1)` -/
def P4193980897505448173.Spec : Prop :=
  ∀ n, P4193980897505448173.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P17551342313722421180

`A185908(n+1)%A003983(n+1)`
-/

namespace A051777.P17551342313722421180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185908 (n + 1)) (A003983 (n + 1))

end

end A051777.P17551342313722421180

namespace A051777

/-- `A185908(n+1)%A003983(n+1)` -/
def P17551342313722421180.Spec : Prop :=
  ∀ n, P17551342313722421180.a n = A051777 (n + 1)

end A051777

/-! ## A051777.P2221183175140281336

`A275730(n)%A065625(n)`
-/

namespace A051777.P2221183175140281336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275730 n) (A065625 n)

end

end A051777.P2221183175140281336

namespace A051777

/-- `A275730(n)%A065625(n)` -/
def P2221183175140281336.Spec : Prop :=
  ∀ n, P2221183175140281336.a n = A051777 (n + 1)

end A051777

/-!
# A051778: Triangle read by rows, where row (n) = n mod (n-1), n mod (n-2), n mod (n-3), ...n mod 2.

The programs for A051778, the canonical program `A051778.P6932995160286021118` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051778 has offset 3).

The definition of A051778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A051778.P5754484673699978268

`A002260(n+1)%A049805(n+1)`
-/

namespace A051778.P5754484673699978268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002260 (n + 1)) (A049805 (n + 1))

end

end A051778.P5754484673699978268

namespace A051778

/-- `A002260(n+1)%A049805(n+1)` -/
def P5754484673699978268.Spec : Prop :=
  ∀ n, P5754484673699978268.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P11659674697413598241

`A128077(n+1)%A049805(n+1)`
-/

namespace A051778.P11659674697413598241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128077 (n + 1)) (A049805 (n + 1))

end

end A051778.P11659674697413598241

namespace A051778

/-- `A128077(n+1)%A049805(n+1)` -/
def P11659674697413598241.Spec : Prop :=
  ∀ n, P11659674697413598241.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P6932995160286021118

`(A002262(n)+1)%(A025581(n)+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A051778

/-- `(A002262(n)+1)%(A025581(n)+2)` -/
def P6932995160286021118.Spec : Prop :=
  ∀ n, P6932995160286021118.a n = A051778 (n + 3)

theorem P6932995160286021118.correct : P6932995160286021118.Spec := by
  intro n
  simp only [A051778, Nat.add_sub_cancel]

end A051778

/-! ## A051778.P17750591983092738420

`A051777(2*A003057(n+2)+n+1)`
-/

namespace A051778.P17750591983092738420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (2 * A003057 (n + 2) + (n : ℤ) + 1).toNat

end

end A051778.P17750591983092738420

namespace A051778

/-- `A051777(2*A003057(n+2)+n+1)` -/
def P17750591983092738420.Spec : Prop :=
  ∀ n, P17750591983092738420.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P9872608725295229509

`(A057554(2*n+1)+1)%(A127739(n+1)-n+1)`
-/

namespace A051778.P9872608725295229509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057554 (2 * n + 1) + 1) (A127739 (n + 1) - (n : ℤ) + 1)

end

end A051778.P9872608725295229509

namespace A051778

/-- `(A057554(2*n+1)+1)%(A127739(n+1)-n+1)` -/
def P9872608725295229509.Spec : Prop :=
  ∀ n, P9872608725295229509.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P10276493869307833071

`A051777(A003057(n+2)+A003057(n+2)+n+1)`
-/

namespace A051778.P10276493869307833071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051777 (A003057 (n + 2) + (A003057 (n + 2) + (n : ℤ)) + 1).toNat

end

end A051778.P10276493869307833071

namespace A051778

/-- `A051777(A003057(n+2)+A003057(n+2)+n+1)` -/
def P10276493869307833071.Spec : Prop :=
  ∀ n, P10276493869307833071.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P9532977147821213838

`A004736(A061579(n)+1)%(A004736(n+1)+1)`
-/

namespace A051778.P9532977147821213838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (A061579 n + 1).toNat) (A004736 (n + 1) + 1)

end

end A051778.P9532977147821213838

namespace A051778

/-- `A004736(A061579(n)+1)%(A004736(n+1)+1)` -/
def P9532977147821213838.Spec : Prop :=
  ∀ n, P9532977147821213838.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P16436372655532036692

`A004736(A038722(n+2)+1)%(A004736(n+1)+1)`
-/

namespace A051778.P16436372655532036692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004736 (A038722 (n + 2) + 1).toNat) (A004736 (n + 1) + 1)

end

end A051778.P16436372655532036692

namespace A051778

/-- `A004736(A038722(n+2)+1)%(A004736(n+1)+1)` -/
def P16436372655532036692.Spec : Prop :=
  ∀ n, P16436372655532036692.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P10999946091388304957

`A051126(comp[∑[n]])`
-/

namespace A051778.P10999946091388304957
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051126 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A051778.P10999946091388304957

namespace A051778

/-- `A051126(comp[∑[n]])` -/
def P10999946091388304957.Spec : Prop :=
  ∀ n, P10999946091388304957.a n = A051778 (n + 3)

end A051778

/-! ## A051778.P16600321431564079974

`A057555(2*n+1)%(A025581(n)+2)`
-/

namespace A051778.P16600321431564079974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057555 (2 * n + 1)) (A025581 n + 2)

end

end A051778.P16600321431564079974

namespace A051778

/-- `A057555(2*n+1)%(A025581(n)+2)` -/
def P16600321431564079974.Spec : Prop :=
  ∀ n, P16600321431564079974.a n = A051778 (n + 3)

end A051778

/-!
# A051779: Primes of form p*q + 2 where p and q are twin primes.

The programs for A051779, there is no canonical definition to state claims against.
-/

/-! ## A051779.P3080220838028948175

`1+A070155(n+1)²`
-/

namespace A051779.P3080220838028948175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A070155 (n + 1) ^ 2

end

end A051779.P3080220838028948175

/-! ## A051779.P13236387759663261581

`A129293(n+2)²+1`
-/

namespace A051779.P13236387759663261581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129293 (n + 2) ^ 2 + 1

end

end A051779.P13236387759663261581

/-! ## A051779.P16087983745105198313

`A175078(A255313(n+1)+1)+A070155(n+1)^2`
-/

namespace A051779.P16087983745105198313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A255313 (n + 1) + 1).toNat + A070155 (n + 1) ^ 2

end

end A051779.P16087983745105198313

/-! ## A051779.P13360464960698225202

`(A108013(n+1)+1)²+1`
-/

namespace A051779.P13360464960698225202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108013 (n + 1) + 1) ^ 2 + 1

end

end A051779.P13360464960698225202

/-! ## A051779.P13842222855321883300

`A014963(12*(n+1))+A070155(n+1)^2`
-/

namespace A051779.P13842222855321883300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (12 * (n + 1)) + A070155 (n + 1) ^ 2

end

end A051779.P13842222855321883300

/-! ## A051779.P13420457892007525779

`∩[A048880(n+1), A093343(n+1)]`
-/

namespace A051779.P13420457892007525779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P13420457892007525779

/-! ## A051779.P3268624986233899567

`∩[A048880(n+1), A140121(n+1)]`
-/

namespace A051779.P3268624986233899567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P3268624986233899567

/-! ## A051779.P16249471204359535199

`∩[A093343(n+1), A140121(n+1)]`
-/

namespace A051779.P16249471204359535199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P16249471204359535199

/-! ## A051779.P2960315188248812232

`∩[A048880(n+1), A127436(n+1)]`
-/

namespace A051779.P2960315188248812232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P2960315188248812232

/-! ## A051779.P5485417982131835691

`∩[A093343(n+1), A127436(n+1)]`
-/

namespace A051779.P5485417982131835691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127436 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P5485417982131835691

/-! ## A051779.P4827833848283289881

`∩[A127436(n+1), A140121(n+1)]`
-/

namespace A051779.P4827833848283289881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P4827833848283289881

/-! ## A051779.P1314593664065210809

`∩[A014574(n+1), A067720(n+1)]²+1`
-/

namespace A051779.P1314593664065210809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P1314593664065210809

/-! ## A051779.P17782638402238386650

`∩[A014574(n+1), A070689(n+1)]²+1`
-/

namespace A051779.P17782638402238386650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P17782638402238386650

/-! ## A051779.P15787934528277819167

`∩[A056853(n+1), A067720(n+1)]²+1`
-/

namespace A051779.P15787934528277819167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P15787934528277819167

/-! ## A051779.P15154727548289076630

`∩[A056853(n+1), A070689(n+1)]²+1`
-/

namespace A051779.P15154727548289076630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P15154727548289076630

/-! ## A051779.P6644471049837986083

`∩[A048880(n+1), A054755(n+1)]`
-/

namespace A051779.P6644471049837986083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P6644471049837986083

/-! ## A051779.P15308190772664871068

`∩[A054755(n+1), A093343(n+1)]`
-/

namespace A051779.P15308190772664871068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P15308190772664871068

/-! ## A051779.P2108706343048293967

`∩[A054755(n+1), A140121(n+1)]`
-/

namespace A051779.P2108706343048293967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140121 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051779.P2108706343048293967

/-! ## A051779.P31343700265360671

`∩[A067720(n+1), A072568(n+1)]²+1`
-/

namespace A051779.P31343700265360671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067720 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P31343700265360671

/-! ## A051779.P11917378954474040391

`∩[A070689(n+1), A072568(n+1)]²+1`
-/

namespace A051779.P11917378954474040391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072568 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n ^ 2 + 1

end

end A051779.P11917378954474040391

/-!
# A051781: Denominators of Taylor series expansion of (exp(1-exp(x))-1)/(1-exp(x)).

The programs for A051781, there is no canonical definition to state claims against.
-/

/-! ## A051781.P1885824098128054466

`A091137(n)/A099952(A053979(n))`
-/

namespace A051781.P1885824098128054466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091137 n : ℚ) / (A099952 (A053979 n).toNat : ℚ)

end

end A051781.P1885824098128054466

/-! ## A051781.P11736110882071559119

`A028310(A091137(n)/A173585(n))`
-/

namespace A051781.P11736110882071559119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A091137 n : ℚ) / (A173585 n : ℚ))).toNat

end

end A051781.P11736110882071559119

/-!
# A051782: Apply the "Stirling-Bernoulli transform" to Catalan numbers.

The programs for A051782, there is no canonical definition to state claims against.
-/

/-! ## A051782.P16348626294118296704

`A097198(A268721(n))`
-/

namespace A051782.P16348626294118296704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097198 (A268721 n).toNat

end

end A051782.P16348626294118296704

/-!
# A051783: Numbers k such that 3^k + 2 is prime.

The programs for A051783, there is no canonical definition to state claims against.
-/

/-! ## A051783.P4690601760885333080

`lt[A123359(n), 2]`
-/

namespace A051783.P4690601760885333080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051783.P4690601760885333080

/-! ## A051783.P13668530973224421349

`lt[A013598(n), 3]`
-/

namespace A051783.P13668530973224421349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013598 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051783.P13668530973224421349

/-! ## A051783.P14440595437704594896

`eq[1, A123359(A028310(n))]`
-/

namespace A051783.P14440595437704594896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051783.P14440595437704594896

/-! ## A051783.P10957623179704925405

`eq[A057427(n), A123359(n)]`
-/

namespace A051783.P10957623179704925405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123359 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A051783.P10957623179704925405

/-!
# A051784: Apply the "Stirling-Bernoulli transform" to A000081 = (1,1,1,2,4,9,20,...), rooted trees.

The programs for A051784, there is no canonical definition to state claims against.
-/

/-! ## A051784.P6143827135122019266

`A112798(A189748(n+1))-A089677(n)`
-/

namespace A051784.P6143827135122019266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A189748 (n + 1)).toNat - A089677 n

end

end A051784.P6143827135122019266

/-!
# A051786: Propp's cubic recurrence: a(0)=a(1)=a(2)=a(3)=1; for n>3, a(n)=(1+a(n-1)*a(n-2)*a(n-3))/a(n-4).

The programs for A051786, the canonical program `A051786.P1780017622112303399` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051786 has offset 0).

The definition of A051786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051786.P1780017622112303399

`(a(n-1)*a(n-2)*a(n-3)+1)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051786

/-- `(a(n-1)*a(n-2)*a(n-3)+1)/a(n-4)` -/
def P1780017622112303399.Spec : Prop :=
  ∀ n, P1780017622112303399.a n = (A051786 n : ℚ)

end A051786

/-! ## A051786.P15472772684527540526

`(1+a(n-1)*a(n-2)*a(n-3))/a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051786.P15472772684527540526
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 3] fun n a =>
  (1 + a (n - 1) * a (n - 2) * a (n - 3)) / a (n - 4)

end

end A051786.P15472772684527540526

namespace A051786

/-- `(1+a(n-1)*a(n-2)*a(n-3))/a(n-4)` -/
def P15472772684527540526.Spec : Prop :=
  ∀ n, P15472772684527540526.a n = (A051786 n : ℚ)

end A051786

/-!
# A051787: Expected number of spins in a 2-player Dreidel game (rounded to nearest integer) (version 1).

The programs for A051787, there is no canonical definition to state claims against.
-/

/-! ## A051787.P14628605876048518688

`A335469(n²+1)+n²`
-/

namespace A051787.P14628605876048518688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n ^ 2 + 1) + (n ^ 2 : ℤ)

end

end A051787.P14628605876048518688

/-! ## A051787.P639587909279264151

`A335524(n²+1)+n²`
-/

namespace A051787.P639587909279264151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n ^ 2 + 1) + (n ^ 2 : ℤ)

end

end A051787.P639587909279264151

/-! ## A051787.P2222468550925351551

`A003056(∑[∑[3*n]]+(C(n, 2)+n²)²)`
-/

namespace A051787.P2222468550925351551
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (∑ j ∈ Finset.range (n + 1), f1 j + (Nat.choose n 2 + n ^ 2) ^ 2)

end

end A051787.P2222468550925351551

/-! ## A051787.P6456784000709713010

`A031346(A032011(n))+A001105(n)`
-/

namespace A051787.P6456784000709713010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031346 (A032011 n).toNat + A001105 n

end

end A051787.P6456784000709713010

/-! ## A051787.P9385695738146692413

`A341596(A276534(n))+A001105(n)`
-/

namespace A051787.P9385695738146692413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341596 (A276534 n).toNat + A001105 n

end

end A051787.P9385695738146692413

/-!
# A051788: a(1) = 1, a(2) = 3; for n>2, a(n) = least value > a(n-1) such that pairwise differences are unique.

The programs for A051788, there is no canonical definition to state claims against.
-/

/-! ## A051788.P2900954717870619529

`eq[2, A281511(n+2)]`
-/

namespace A051788.P2900954717870619529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281511 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A051788.P2900954717870619529

/-! ## A051788.P16591731960965762660

`lt[A000677(A281511(n+2)+1), 1]`
-/

namespace A051788.P16591731960965762660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000677 (A281511 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051788.P16591731960965762660

/-! ## A051788.P7354209229012242901

`lt[A026806(A281511(n+2)+1), 2]`
-/

namespace A051788.P7354209229012242901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026806 (A281511 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051788.P7354209229012242901

/-! ## A051788.P17565232471413437838

`lt[A064614(A281511(n+2)+1), 3]`
-/

namespace A051788.P17565232471413437838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064614 (A281511 (n + 2) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A051788.P17565232471413437838

/-! ## A051788.P10534737151895322005

`A364043(A175657(n+3))+A005282(n+1)`
-/

namespace A051788.P10534737151895322005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364043 (A175657 (n + 3)).toNat + A005282 (n + 1)

end

end A051788.P10534737151895322005

/-!
# A051789: a(n) = C(n)*(C(n)-1)/2, where C(n) are the Catalan numbers (A000108).

The programs for A051789, the canonical program `A051789.P4103290776027320750` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051789 has offset 0).

The definition of A051789 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051789.P4103290776027320750

`C(C(2*n, n)/(n+1), 2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051789

/-- `C(C(2*n, n)/(n+1), 2)` -/
def P4103290776027320750.Spec : Prop :=
  ∀ n, (P4103290776027320750.a n : ℤ) = A051789 n

theorem P4103290776027320750.correct : P4103290776027320750.Spec := by
  intro n
  simp only [A051789]

end A051789

/-! ## A051789.P7022044860463461391

`C(C(2*n, n)-C(2*n, n+1), 2)`
-/

namespace A051789.P7022044860463461391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((Nat.choose (2 * n) n : ℤ) - (Nat.choose (2 * n) (n + 1) : ℤ)).toNat 2

end

end A051789.P7022044860463461391

namespace A051789

/-- `C(C(2*n, n)-C(2*n, n+1), 2)` -/
def P7022044860463461391.Spec : Prop :=
  ∀ n, (P7022044860463461391.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P8742128629348082432

`C(A000108(n), 2)`
-/

namespace A051789.P8742128629348082432
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat 2

end

end A051789.P8742128629348082432

namespace A051789

/-- `C(A000108(n), 2)` -/
def P8742128629348082432.Spec : Prop :=
  ∀ n, (P8742128629348082432.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P1410262048387055609

`C(abs(A168491(n)), 2)`
-/

namespace A051789.P1410262048387055609
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A168491 n|.toNat 2

end

end A051789.P1410262048387055609

namespace A051789

/-- `C(abs(A168491(n)), 2)` -/
def P1410262048387055609.Spec : Prop :=
  ∀ n, (P1410262048387055609.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P9314098629290407219

`C(A008313(n²), 2)`
-/

namespace A051789.P9314098629290407219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008313 (n ^ 2)).toNat 2

end

end A051789.P9314098629290407219

namespace A051789

/-- `C(A008313(n²), 2)` -/
def P9314098629290407219.Spec : Prop :=
  ∀ n, (P9314098629290407219.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P17285168536426129346

`C(sqrt(A001246(n)), 2)`
-/

namespace A051789.P17285168536426129346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001246 n : ℝ))).toNat 2

end

end A051789.P17285168536426129346

namespace A051789

/-- `C(sqrt(A001246(n)), 2)` -/
def P17285168536426129346.Spec : Prop :=
  ∀ n, (P17285168536426129346.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P9648411417430088892

`C(A028364(∑[n]), 2)`
-/

namespace A051789.P9648411417430088892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A051789.P9648411417430088892

namespace A051789

/-- `C(A028364(∑[n]), 2)` -/
def P9648411417430088892.Spec : Prop :=
  ∀ n, (P9648411417430088892.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P1919721114473942528

`C(A039599(∑[n]), 2)`
-/

namespace A051789.P1919721114473942528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A051789.P1919721114473942528

namespace A051789

/-- `C(A039599(∑[n]), 2)` -/
def P1919721114473942528.Spec : Prop :=
  ∀ n, (P1919721114473942528.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P15570854767570039844

`C(A060693(∑[n]), 2)`
-/

namespace A051789.P15570854767570039844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A060693 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A051789.P15570854767570039844

namespace A051789

/-- `C(A060693(∑[n]), 2)` -/
def P15570854767570039844.Spec : Prop :=
  ∀ n, (P15570854767570039844.a n : ℤ) = A051789 n

end A051789

/-! ## A051789.P18348259347871239301

`C(A124644(∑[n]), 2)`
-/

namespace A051789.P18348259347871239301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124644 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 2

end

end A051789.P18348259347871239301

namespace A051789

/-- `C(A124644(∑[n]), 2)` -/
def P18348259347871239301.Spec : Prop :=
  ∀ n, (P18348259347871239301.a n : ℤ) = A051789 n

end A051789

/-!
# A051790: a(n) = C(n)*(C(n)-1)*(C(n)-2)/6, where C(n) are the Catalan numbers (A000108).

The programs for A051790, the canonical program `A051790.P6459492579711689835` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051790 has offset 0).

The definition of A051790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051790.P6459492579711689835

`C(C(2*n, n)/(n+1), 3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051790

/-- `C(C(2*n, n)/(n+1), 3)` -/
def P6459492579711689835.Spec : Prop :=
  ∀ n, (P6459492579711689835.a n : ℤ) = A051790 n

theorem P6459492579711689835.correct : P6459492579711689835.Spec := by
  intro n
  simp only [A051790]

end A051790

/-! ## A051790.P17605555090397708512

`C(A000108(n), 3)`
-/

namespace A051790.P17605555090397708512
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000108 n).toNat 3

end

end A051790.P17605555090397708512

namespace A051790

/-- `C(A000108(n), 3)` -/
def P17605555090397708512.Spec : Prop :=
  ∀ n, (P17605555090397708512.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P10297501776371475574

`C(abs(A168491(n)), 3)`
-/

namespace A051790.P10297501776371475574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |A168491 n|.toNat 3

end

end A051790.P10297501776371475574

namespace A051790

/-- `C(abs(A168491(n)), 3)` -/
def P10297501776371475574.Spec : Prop :=
  ∀ n, (P10297501776371475574.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P7727805824258645823

`C(A008313(n²), 3)`
-/

namespace A051790.P7727805824258645823
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A008313 (n ^ 2)).toNat 3

end

end A051790.P7727805824258645823

namespace A051790

/-- `C(A008313(n²), 3)` -/
def P7727805824258645823.Spec : Prop :=
  ∀ n, (P7727805824258645823.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P13030359968127727368

`C(sqrt(A001246(n)), 3)`
-/

namespace A051790.P13030359968127727368
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A001246 n : ℝ))).toNat 3

end

end A051790.P13030359968127727368

namespace A051790

/-- `C(sqrt(A001246(n)), 3)` -/
def P13030359968127727368.Spec : Prop :=
  ∀ n, (P13030359968127727368.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P1822585564725187621

`C(A028364(∑[n]), 3)`
-/

namespace A051790.P1822585564725187621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028364 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A051790.P1822585564725187621

namespace A051790

/-- `C(A028364(∑[n]), 3)` -/
def P1822585564725187621.Spec : Prop :=
  ∀ n, (P1822585564725187621.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P12906777315199963963

`C(A039599(∑[n]), 3)`
-/

namespace A051790.P12906777315199963963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A039599 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat 3

end

end A051790.P12906777315199963963

namespace A051790

/-- `C(A039599(∑[n]), 3)` -/
def P12906777315199963963.Spec : Prop :=
  ∀ n, (P12906777315199963963.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P9551182094560889156

`C(A120588(n+1), 3)`
-/

namespace A051790.P9551182094560889156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A120588 (n + 1)).toNat 3

end

end A051790.P9551182094560889156

namespace A051790

/-- `C(A120588(n+1), 3)` -/
def P9551182094560889156.Spec : Prop :=
  ∀ n, (P9551182094560889156.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P17350957215598923990

`C(A028303(2*n), 3)`
-/

namespace A051790.P17350957215598923990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028303 (2 * n)).toNat 3

end

end A051790.P17350957215598923990

namespace A051790

/-- `C(A028303(2*n), 3)` -/
def P17350957215598923990.Spec : Prop :=
  ∀ n, (P17350957215598923990.a n : ℤ) = A051790 n

end A051790

/-! ## A051790.P5295582122877830317

`C(A028304(2*n), 3)`
-/

namespace A051790.P5295582122877830317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A028304 (2 * n)).toNat 3

end

end A051790.P5295582122877830317

namespace A051790

/-- `C(A028304(2*n), 3)` -/
def P5295582122877830317.Spec : Prop :=
  ∀ n, (P5295582122877830317.a n : ℤ) = A051790 n

end A051790

/-!
# A051792: a(n) = (-1)^(n-1)*(a(n-1) - a(n-2)), a(1)=1, a(2)=1.

The programs for A051792, the canonical program `A051792.P16146142526184021908` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051792 has offset 1).

The definition of A051792 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(-1)^n*(a(n-1)-a(n-2))` (program `A051792.P16146142526184021908`, by `A051792.P16146142526184021908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051792.P16146142526184021908

`(-1)^n*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051792

/-- `(-1)^n*(a(n-1)-a(n-2))` -/
def P16146142526184021908.Spec : Prop :=
  ∀ n, P16146142526184021908.a n = A051792 (n + 1)

theorem P16146142526184021908.correct : P16146142526184021908.Spec := by
  intro n
  simp only [A051792, Nat.add_sub_cancel]

end A051792

/-! ## A051792.P3161148904912176695

`ogf((1+x+x^2+2x^3)/(1+x^2-x^4))`
-/

namespace A051792.P3161148904912176695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, 2] [1, 0, 1, 0, -1] n

end

end A051792.P3161148904912176695

namespace A051792

/-- `ogf((1+x+x^2+2x^3)/(1+x^2-x^4))` -/
def P3161148904912176695.Spec : Prop :=
  ∀ n, P3161148904912176695.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P17138501183417519381

`a(n-4)-a(n-2)` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1`
-/

namespace A051792.P17138501183417519381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1] fun n a =>
  a (n - 4) - a (n - 2)

end

end A051792.P17138501183417519381

namespace A051792

/-- `a(n-4)-a(n-2)` -/
def P17138501183417519381.Spec : Prop :=
  ∀ n, P17138501183417519381.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P211761376158592456

`A159864(A165157(n+1))`
-/

namespace A051792.P211761376158592456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159864 (A165157 (n + 1)).toNat

end

end A051792.P211761376158592456

namespace A051792

/-- `A159864(A165157(n+1))` -/
def P211761376158592456.Spec : Prop :=
  ∀ n, P211761376158592456.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P18185536378596625264

`A227431(∑[A152271(n)])`
-/

namespace A051792.P18185536378596625264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A051792.P18185536378596625264

namespace A051792

/-- `A227431(∑[A152271(n)])` -/
def P18185536378596625264.Spec : Prop :=
  ∀ n, P18185536378596625264.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P15328617114259870720

`A227431(A117142(n+1))`
-/

namespace A051792.P15328617114259870720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (A117142 (n + 1)).toNat

end

end A051792.P15328617114259870720

namespace A051792

/-- `A227431(A117142(n+1))` -/
def P15328617114259870720.Spec : Prop :=
  ∀ n, P15328617114259870720.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P17822581669808457519

`A227431(eq[1, A049687(n)])`
-/

namespace A051792.P17822581669808457519
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051792.P17822581669808457519

namespace A051792

/-- `A227431(eq[1, A049687(n)])` -/
def P17822581669808457519.Spec : Prop :=
  ∀ n, P17822581669808457519.a n = A051792 (n + 1)

end A051792

/-! ## A051792.P8143207161476025880

`A227431(eq[2, A134058(n)])`
-/

namespace A051792.P8143207161476025880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227431 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A051792.P8143207161476025880

namespace A051792

/-- `A227431(eq[2, A134058(n)])` -/
def P8143207161476025880.Spec : Prop :=
  ∀ n, P8143207161476025880.a n = A051792 (n + 1)

end A051792

/-!
# A051795: Doubly balanced primes: primes which are averages of both their immediate and their second neighbors.

The programs for A051795, there is no canonical definition to state claims against.
-/

/-! ## A051795.P6642402139194256845

`A267028(A016885(n))`
-/

namespace A051795.P6642402139194256845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267028 (A016885 n).toNat

end

end A051795.P6642402139194256845

/-! ## A051795.P15038483365916131797

`∩[A006562(n+1), A082077(n+1)]`
-/

namespace A051795.P15038483365916131797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051795.P15038483365916131797

/-! ## A051795.P15299661772284796099

`∩[A082077(n+1), A122535(n+1)+A117217(n+1)]`
-/

namespace A051795.P15299661772284796099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122535 (n + 1) + A117217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051795.P15299661772284796099

/-! ## A051795.P9118270401957484176

`∩[A006562(n+1), A098031(n+1)]`
-/

namespace A051795.P9118270401957484176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098031 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051795.P9118270401957484176

/-! ## A051795.P9843276415614155331

`∩[A006562(n+1), A179208(n+1)]`
-/

namespace A051795.P9843276415614155331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006562 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A051795.P9843276415614155331

/-!
# A051797: Partial sums of A007585.

The programs for A051797, the canonical program `A051797.P13875985765154845986` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051797 has offset 0).

The definition of A051797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051797.P13875985765154845986

`(2*n+1)*C(n+3, 3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051797

/-- `(2*n+1)*C(n+3, 3)` -/
def P13875985765154845986.Spec : Prop :=
  ∀ n, (P13875985765154845986.a n : ℤ) = A051797 n

theorem P13875985765154845986.correct : P13875985765154845986.Spec := by
  intro n
  simp only [A051797]

end A051797

/-! ## A051797.P6452191986335490220

`(n+1)*(n+2)*(n+3)*(2*n+1)/6`
-/

namespace A051797.P6452191986335490220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (2 * n + 1) : ℚ) / 6

end

end A051797.P6452191986335490220

namespace A051797

/-- `(n+1)*(n+2)*(n+3)*(2*n+1)/6` -/
def P6452191986335490220.Spec : Prop :=
  ∀ n, P6452191986335490220.a n = (A051797 n : ℚ)

end A051797

/-! ## A051797.P3567678917811914595

`C(n+3, 3)*Δ[n²]`
-/

namespace A051797.P3567678917811914595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A051797.P3567678917811914595

namespace A051797

/-- `C(n+3, 3)*Δ[n²]` -/
def P3567678917811914595.Spec : Prop :=
  ∀ n, P3567678917811914595.a n = A051797 n

theorem P3567678917811914595.correct : P3567678917811914595.Spec := by
  intro n
  simp only [A051797, Nat.add_sub_cancel, A051797.P3567678917811914595.f1, A051797.P3567678917811914595.a, A051797.P13875985765154845986.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A051797

/-! ## A051797.P15388874014382824530

`∑[∑[∑[a(n-1)+8]]]` with `a(0)=1`
-/

namespace A051797.P15388874014382824530
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051797.P15388874014382824530

namespace A051797

/-- `∑[∑[∑[a(n-1)+8]]]` -/
def P15388874014382824530.Spec : Prop :=
  ∀ n, (P15388874014382824530.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P14727411455672434485

`∑[∑[n+1]]*comp[lcm(2, n)]`
-/

namespace A051797.P14727411455672434485
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A051797.P14727411455672434485

namespace A051797

/-- `∑[∑[n+1]]*comp[lcm(2, n)]` -/
def P14727411455672434485.Spec : Prop :=
  ∀ n, (P14727411455672434485.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P3667343026296128208

`∑[∑[n+1]]*record[xor(1, n)]`
-/

namespace A051797.P3667343026296128208
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

end

end A051797.P3667343026296128208

namespace A051797

/-- `∑[∑[n+1]]*record[xor(1, n)]` -/
def P3667343026296128208.Spec : Prop :=
  ∀ n, (P3667343026296128208.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P5136121393811381931

`or(1, 2*n)*∑[∑[n+1]]`
-/

namespace A051797.P5136121393811381931
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051797.P5136121393811381931

namespace A051797

/-- `or(1, 2*n)*∑[∑[n+1]]` -/
def P5136121393811381931.Spec : Prop :=
  ∀ n, (P5136121393811381931.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P3906482027447751802

`xor(1, 2*n)*∑[∑[n+1]]`
-/

namespace A051797.P3906482027447751802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051797.P3906482027447751802

namespace A051797

/-- `xor(1, 2*n)*∑[∑[n+1]]` -/
def P3906482027447751802.Spec : Prop :=
  ∀ n, (P3906482027447751802.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P11645490098242847771

`∑[∑[n+1]]*comp[and(n, n+1)]`
-/

namespace A051797.P11645490098242847771
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

end

end A051797.P11645490098242847771

namespace A051797

/-- `∑[∑[n+1]]*comp[and(n, n+1)]` -/
def P11645490098242847771.Spec : Prop :=
  ∀ n, (P11645490098242847771.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P8959920362328334137

`(2*n+1)*∑[∑[gcd(n, 2*n)+1]]`
-/

namespace A051797.P8959920362328334137
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051797.P8959920362328334137

namespace A051797

/-- `(2*n+1)*∑[∑[gcd(n, 2*n)+1]]` -/
def P8959920362328334137.Spec : Prop :=
  ∀ n, (P8959920362328334137.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P16367172106292243056

`lcm(2*n+1, ∑[∑[(2*n+1)²+n]])`
-/

namespace A051797.P16367172106292243056
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (2 * n + 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051797.P16367172106292243056

namespace A051797

/-- `lcm(2*n+1, ∑[∑[(2*n+1)²+n]])` -/
def P16367172106292243056.Spec : Prop :=
  ∀ n, (P16367172106292243056.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P2825253397622998729

`(and(1, 2*n+1)+2*n)*∑[∑[n+1]]`
-/

namespace A051797.P2825253397622998729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (2 * n + 1) + 2 * n) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A051797.P2825253397622998729

namespace A051797

/-- `(and(1, 2*n+1)+2*n)*∑[∑[n+1]]` -/
def P2825253397622998729.Spec : Prop :=
  ∀ n, (P2825253397622998729.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P15927434758912826965

`∑[∑[n+1]]*∪[2*n+1, (2*n+1)²]`
-/

namespace A051797.P15927434758912826965
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * SequenceMachineLib.nth (fun x => (∃ j, f3 j = x) ∨ ∃ j, f4 j = x) n

end

end A051797.P15927434758912826965

namespace A051797

/-- `∑[∑[n+1]]*∪[2*n+1, (2*n+1)²]` -/
def P15927434758912826965.Spec : Prop :=
  ∀ n, (P15927434758912826965.a n : ℤ) = A051797 n

end A051797

/-! ## A051797.P1449632644013842696

`Δ[n²]*A000292(n+1)`
-/

namespace A051797.P1449632644013842696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A000292 (n + 1)

end

end A051797.P1449632644013842696

namespace A051797

/-- `Δ[n²]*A000292(n+1)` -/
def P1449632644013842696.Spec : Prop :=
  ∀ n, P1449632644013842696.a n = A051797 n

end A051797

/-! ## A051797.P5738644389473517573

`A006324(n+1)+∑[∑[n]]`
-/

namespace A051797.P5738644389473517573
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051797.P5738644389473517573

namespace A051797

/-- `A006324(n+1)+∑[∑[n]]` -/
def P5738644389473517573.Spec : Prop :=
  ∀ n, P5738644389473517573.a n = A051797 n

end A051797

/-! ## A051797.P16324560973731221705

`∑[A219054(n+1)-(n+1)]`
-/

namespace A051797.P16324560973731221705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219054 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051797.P16324560973731221705

namespace A051797

/-- `∑[A219054(n+1)-(n+1)]` -/
def P16324560973731221705.Spec : Prop :=
  ∀ n, P16324560973731221705.a n = A051797 n

end A051797

/-! ## A051797.P22459633561427818

`A213843(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A051797.P22459633561427818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A213843 (n + 1) - a (n - 1)

end

end A051797.P22459633561427818

namespace A051797

/-- `A213843(n+1)-a(n-1)` -/
def P22459633561427818.Spec : Prop :=
  ∀ n, P22459633561427818.a n = A051797 n

end A051797

/-! ## A051797.P8266370833338969377

`A162148(n)+A014820(n)`
-/

namespace A051797.P8266370833338969377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162148 n + A014820 n

end

end A051797.P8266370833338969377

namespace A051797

/-- `A162148(n)+A014820(n)` -/
def P8266370833338969377.Spec : Prop :=
  ∀ n, P8266370833338969377.a n = A051797 n

end A051797

/-! ## A051797.P13530183982649185512

`A053134(n)-A289643(n)`
-/

namespace A051797.P13530183982649185512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - A289643 n

end

end A051797.P13530183982649185512

namespace A051797

/-- `A053134(n)-A289643(n)` -/
def P13530183982649185512.Spec : Prop :=
  ∀ n, P13530183982649185512.a n = A051797 n

end A051797

/-! ## A051797.P1129164010161945950

`A006323(n+1)+A005582(n)`
-/

namespace A051797.P1129164010161945950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006323 (n + 1) + A005582 n

end

end A051797.P1129164010161945950

namespace A051797

/-- `A006323(n+1)+A005582(n)` -/
def P1129164010161945950.Spec : Prop :=
  ∀ n, P1129164010161945950.a n = A051797 n

end A051797

/-!
# A051798: a(n) = (n+1)*(n+2)*(n+3)*(9n+4)/24.

The programs for A051798, the canonical program `A051798.P2584861954710458875` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051798 has offset 0).

The definition of A051798 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(n+2)*(n+3)*(9*n+4)/24` (program `A051798.P5990497839429570001`, by `A051798.P5990497839429570001.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A051798.P17942120175461807081

`C(n+3, 3)*(9*n+4)/4`
-/

namespace A051798.P17942120175461807081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 * (9 * n + 4) : ℚ) / 4

end

end A051798.P17942120175461807081

namespace A051798

/-- `C(n+3, 3)*(9*n+4)/4` -/
def P17942120175461807081.Spec : Prop :=
  ∀ n, P17942120175461807081.a n = (A051798 n : ℚ)

end A051798

/-! ## A051798.P5990497839429570001

`(n+1)*(n+2)*(n+3)*(9*n+4)/24`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A051798.P5990497839429570001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (9 * n + 4) : ℚ) / 24

end

end A051798.P5990497839429570001

namespace A051798

/-- `(n+1)*(n+2)*(n+3)*(9*n+4)/24` -/
def P5990497839429570001.Spec : Prop :=
  ∀ n, P5990497839429570001.a n = (A051798 n : ℚ)

theorem P5990497839429570001.correct : P5990497839429570001.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 | 4 =>
      simp [A051798, Nat.add_sub_cancel, A051798.P5990497839429570001.a, A051798.P2584861954710458875.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 5 =>
      have h1 := ih (m + 4) (by omega)
      have h2 := ih (m + 3) (by omega)
      have h3 := ih (m + 2) (by omega)
      have h4 := ih (m + 1) (by omega)
      have h5 := ih m (by omega)
      simp only [A051798, Nat.add_sub_cancel, A051798.P5990497839429570001.a, A051798.P2584861954710458875.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 h5 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 5 - 1 = m + 4 by omega, show m + 5 - 2 = m + 3 by omega, show m + 5 - 3 = m + 2 by omega, show m + 5 - 4 = m + 1 by omega, show m + 5 - 5 = m by omega, show m + 4 < m + 5 by omega, show m + 3 < m + 5 by omega, show m + 2 < m + 5 by omega, show m + 1 < m + 5 by omega, show m < m + 5 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 h5 ⊢
      rw [← h1, ← h2, ← h3, ← h4, ← h5]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A051798

/-! ## A051798.P2584861954710458875

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=13, a(2)=55, a(3)=155, a(4)=350`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051798

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P2584861954710458875.Spec : Prop :=
  ∀ n, P2584861954710458875.a n = A051798 n

theorem P2584861954710458875.correct : P2584861954710458875.Spec := by
  intro n
  simp only [A051798]

end A051798

/-! ## A051798.P663845840223938832

`∑[∑[a(n-1)+9]]+a(n-1)` with `a(0)=1`
-/

namespace A051798.P663845840223938832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (n - 1) + 9

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A051798.P663845840223938832

namespace A051798

/-- `∑[∑[a(n-1)+9]]+a(n-1)` -/
def P663845840223938832.Spec : Prop :=
  ∀ n, (P663845840223938832.a n : ℤ) = A051798 n

end A051798

/-! ## A051798.P6837230162851308066

`a(n-1)-∑[∑[xor(9*n, -1)]]` with `a(0)=1`
-/

namespace A051798.P6837230162851308066
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (9 * n : ℤ) (-1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051798.P6837230162851308066

namespace A051798

/-- `a(n-1)-∑[∑[xor(9*n, -1)]]` -/
def P6837230162851308066.Spec : Prop :=
  ∀ n, P6837230162851308066.a n = A051798 n

end A051798

/-! ## A051798.P17793903287136206794

`a(n-1)+(3*n+1)*C(n+2, 2)` with `a(0)=1`
-/

namespace A051798.P17793903287136206794
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (3 * n + 1) * Nat.choose (n + 2) 2

end

end A051798.P17793903287136206794

namespace A051798

/-- `a(n-1)+(3*n+1)*C(n+2, 2)` -/
def P17793903287136206794.Spec : Prop :=
  ∀ n, (P17793903287136206794.a n : ℤ) = A051798 n

end A051798

/-! ## A051798.P14543031097584458428

`A088941(n)+1`
-/

namespace A051798.P14543031097584458428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088941 n + 1

end

end A051798.P14543031097584458428

namespace A051798

/-- `A088941(n)+1` -/
def P14543031097584458428.Spec : Prop :=
  ∀ n, P14543031097584458428.a n = A051798 n

end A051798

/-! ## A051798.P16744016781322505848

`A051799(n)-∑[∑[∑[n]]]`
-/

namespace A051798.P16744016781322505848
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051799 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051798.P16744016781322505848

namespace A051798

/-- `A051799(n)-∑[∑[∑[n]]]` -/
def P16744016781322505848.Spec : Prop :=
  ∀ n, P16744016781322505848.a n = A051798 n

end A051798

/-! ## A051798.P15121651470681430049

`A215862(n)+∑[n+1]²`
-/

namespace A051798.P15121651470681430049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ)

end

end A051798.P15121651470681430049

namespace A051798

/-- `A215862(n)+∑[n+1]²` -/
def P15121651470681430049.Spec : Prop :=
  ∀ n, P15121651470681430049.a n = A051798 n

end A051798

/-! ## A051798.P7028714321470765368

`∑[A036659(n+1)-(n+1)]`
-/

namespace A051798.P7028714321470765368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036659 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051798.P7028714321470765368

namespace A051798

/-- `∑[A036659(n+1)-(n+1)]` -/
def P7028714321470765368.Spec : Prop :=
  ∀ n, P7028714321470765368.a n = A051798 n

end A051798

/-! ## A051798.P9297688230591118451

`∑[(n+1)*A095794(n+1)]`
-/

namespace A051798.P9297688230591118451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A095794 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051798.P9297688230591118451

namespace A051798

/-- `∑[(n+1)*A095794(n+1)]` -/
def P9297688230591118451.Spec : Prop :=
  ∀ n, P9297688230591118451.a n = A051798 n

end A051798

/-! ## A051798.P7515570527026581018

`A162668(n)+∑[∑[∑[n+1]]]`
-/

namespace A051798.P7515570527026581018
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162668 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A051798.P7515570527026581018

namespace A051798

/-- `A162668(n)+∑[∑[∑[n+1]]]` -/
def P7515570527026581018.Spec : Prop :=
  ∀ n, P7515570527026581018.a n = A051798 n

end A051798

/-! ## A051798.P4601400526833776783

`A187673(n)+A027480(n)`
-/

namespace A051798.P4601400526833776783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n + A027480 n

end

end A051798.P4601400526833776783

namespace A051798

/-- `A187673(n)+A027480(n)` -/
def P4601400526833776783.Spec : Prop :=
  ∀ n, P4601400526833776783.a n = A051798 n

end A051798

/-! ## A051798.P13159479964522536648

`A006324(n+1)+A005582(n)`
-/

namespace A051798.P13159479964522536648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006324 (n + 1) + A005582 n

end

end A051798.P13159479964522536648

namespace A051798

/-- `A006324(n+1)+A005582(n)` -/
def P13159479964522536648.Spec : Prop :=
  ∀ n, P13159479964522536648.a n = A051798 n

end A051798

/-! ## A051798.P372362782429338466

`A241765(n)+A132117(n+1)`
-/

namespace A051798.P372362782429338466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n + A132117 (n + 1)

end

end A051798.P372362782429338466

namespace A051798

/-- `A241765(n)+A132117(n+1)` -/
def P372362782429338466.Spec : Prop :=
  ∀ n, P372362782429338466.a n = A051798 n

end A051798

/-! ## A051798.P14405379180287741087

`A033486(n)-A059302(n+2)`
-/

namespace A051798.P14405379180287741087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033486 n - A059302 (n + 2)

end

end A051798.P14405379180287741087

namespace A051798

/-- `A033486(n)-A059302(n+2)` -/
def P14405379180287741087.Spec : Prop :=
  ∀ n, P14405379180287741087.a n = A051798 n

end A051798

/-! ## A051798.P12727303858712126847

`A051740(n)+A033488(n)/2`
-/

namespace A051798.P12727303858712126847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051740 n : ℚ) + (A033488 n : ℚ) / 2

end

end A051798.P12727303858712126847

namespace A051798

/-- `A051740(n)+A033488(n)/2` -/
def P12727303858712126847.Spec : Prop :=
  ∀ n, P12727303858712126847.a n = (A051798 n : ℚ)

end A051798

/-! ## A051798.P18308907050167137495

`A055268(n)-A033488(n)/2`
-/

namespace A051798.P18308907050167137495
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055268 n : ℚ) - (A033488 n : ℚ) / 2

end

end A051798.P18308907050167137495

namespace A051798

/-- `A055268(n)-A033488(n)/2` -/
def P18308907050167137495.Spec : Prop :=
  ∀ n, P18308907050167137495.a n = (A051798 n : ℚ)

end A051798

/-! ## A051798.P17825483707268073973

`A000330(n)+∑[A050509(n)+n]`
-/

namespace A051798.P17825483707268073973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050509 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051798.P17825483707268073973

namespace A051798

/-- `A000330(n)+∑[A050509(n)+n]` -/
def P17825483707268073973.Spec : Prop :=
  ∀ n, P17825483707268073973.a n = A051798 n

end A051798

/-! ## A051798.P17478081127824839947

`A228317(n+1)+A213837(n+1)`
-/

namespace A051798.P17478081127824839947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228317 (n + 1) + A213837 (n + 1)

end

end A051798.P17478081127824839947

namespace A051798

/-- `A228317(n+1)+A213837(n+1)` -/
def P17478081127824839947.Spec : Prop :=
  ∀ n, P17478081127824839947.a n = A051798 n

end A051798

/-!
# A051799: Partial sums of A007587.

The programs for A051799, the canonical program `A051799.P3412631491983998149` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A051799 has offset 0).

The definition of A051799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A051799.P3412631491983998149

`C(n+3, 3)*(5*n+2)/2`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A051799

/-- `C(n+3, 3)*(5*n+2)/2` -/
def P3412631491983998149.Spec : Prop :=
  ∀ n, P3412631491983998149.a n = (A051799 n : ℚ)

end A051799

/-! ## A051799.P9058365369988745986

`(n+1)*(n+2)*(n+3)*(5*n+2)/12`
-/

namespace A051799.P9058365369988745986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (n + 2) * (n + 3) * (5 * n + 2) : ℚ) / 12

end

end A051799.P9058365369988745986

namespace A051799

/-- `(n+1)*(n+2)*(n+3)*(5*n+2)/12` -/
def P9058365369988745986.Spec : Prop :=
  ∀ n, P9058365369988745986.a n = (A051799 n : ℚ)

end A051799

/-! ## A051799.P14967536347916616294

`∑[∑[∑[a(n-1)+10]]]` with `a(0)=1`
-/

namespace A051799.P14967536347916616294
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051799.P14967536347916616294

namespace A051799

/-- `∑[∑[∑[a(n-1)+10]]]` -/
def P14967536347916616294.Spec : Prop :=
  ∀ n, (P14967536347916616294.a n : ℤ) = A051799 n

end A051799

/-! ## A051799.P10254623399808687705

`Δ[(2*n-1)*C(n+3, 4)]`
-/

namespace A051799.P10254623399808687705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * (Nat.choose (n + 3) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A051799.P10254623399808687705

namespace A051799

/-- `Δ[(2*n-1)*C(n+3, 4)]` -/
def P10254623399808687705.Spec : Prop :=
  ∀ n, P10254623399808687705.a n = A051799 n

end A051799

/-! ## A051799.P15316451339701694559

`A145126(n)+A088941(n)`
-/

namespace A051799.P15316451339701694559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n + A088941 n

end

end A051799.P15316451339701694559

namespace A051799

/-- `A145126(n)+A088941(n)` -/
def P15316451339701694559.Spec : Prop :=
  ∀ n, P15316451339701694559.a n = A051799 n

end A051799

/-! ## A051799.P12637899661912837020

`A033487(n)+A002417(n+1)`
-/

namespace A051799.P12637899661912837020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 n + A002417 (n + 1)

end

end A051799.P12637899661912837020

namespace A051799

/-- `A033487(n)+A002417(n+1)` -/
def P12637899661912837020.Spec : Prop :=
  ∀ n, P12637899661912837020.a n = A051799 n

end A051799

/-! ## A051799.P11864222356992062356

`A033488(n)+A002419(n+1)`
-/

namespace A051799.P11864222356992062356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n + A002419 (n + 1)

end

end A051799.P11864222356992062356

namespace A051799

/-- `A033488(n)+A002419(n+1)` -/
def P11864222356992062356.Spec : Prop :=
  ∀ n, P11864222356992062356.a n = A051799 n

end A051799

/-! ## A051799.P13033909218537689816

`A117066(n+1)+A027480(n)`
-/

namespace A051799.P13033909218537689816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1) + A027480 n

end

end A051799.P13033909218537689816

namespace A051799

/-- `A117066(n+1)+A027480(n)` -/
def P13033909218537689816.Spec : Prop :=
  ∀ n, P13033909218537689816.a n = A051799 n

end A051799

/-! ## A051799.P7538879875355264449

`A215862(n)+A006323(n+1)`
-/

namespace A051799.P7538879875355264449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215862 n + A006323 (n + 1)

end

end A051799.P7538879875355264449

namespace A051799

/-- `A215862(n)+A006323(n+1)` -/
def P7538879875355264449.Spec : Prop :=
  ∀ n, P7538879875355264449.a n = A051799 n

end A051799

/-! ## A051799.P14259300875222322740

`A185355(n+1)+A135712(n)`
-/

namespace A051799.P14259300875222322740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185355 (n + 1) + A135712 n

end

end A051799.P14259300875222322740

namespace A051799

/-- `A185355(n+1)+A135712(n)` -/
def P14259300875222322740.Spec : Prop :=
  ∀ n, P14259300875222322740.a n = A051799 n

end A051799

/-! ## A051799.P15558719957937362411

`2*A051740(n)-A002417(n+1)`
-/

namespace A051799.P15558719957937362411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051740 n - A002417 (n + 1)

end

end A051799.P15558719957937362411

namespace A051799

/-- `2*A051740(n)-A002417(n+1)` -/
def P15558719957937362411.Spec : Prop :=
  ∀ n, P15558719957937362411.a n = A051799 n

end A051799

/-! ## A051799.P10274155979582140589

`A033488(n)+A187673(n)-A050534(n+1)`
-/

namespace A051799.P10274155979582140589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033488 n + (A187673 n - A050534 (n + 1))

end

end A051799.P10274155979582140589

namespace A051799

/-- `A033488(n)+A187673(n)-A050534(n+1)` -/
def P10274155979582140589.Spec : Prop :=
  ∀ n, P10274155979582140589.a n = A051799 n

end A051799

/-! ## A051799.P13313817345644327646

`A002417(n+1)+A264850(n+1)-A051797(n)`
-/

namespace A051799.P13313817345644327646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + (A264850 (n + 1) - A051797 n)

end

end A051799.P13313817345644327646

namespace A051799

/-- `A002417(n+1)+A264850(n+1)-A051797(n)` -/
def P13313817345644327646.Spec : Prop :=
  ∀ n, P13313817345644327646.a n = A051799 n

end A051799

/-! ## A051799.P14423976319716321165

`A264851(n+1)+A051797(n)-A264850(n+1)`
-/

namespace A051799.P14423976319716321165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264851 (n + 1) + (A051797 n - A264850 (n + 1))

end

end A051799.P14423976319716321165

namespace A051799

/-- `A264851(n+1)+A051797(n)-A264850(n+1)` -/
def P14423976319716321165.Spec : Prop :=
  ∀ n, P14423976319716321165.a n = A051799 n

end A051799

/-! ## A051799.P11670417705461632897

`A002417(n+1)+A002419(n+1)-A000292(n+1)`
-/

namespace A051799.P11670417705461632897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002417 (n + 1) + (A002419 (n + 1) - A000292 (n + 1))

end

end A051799.P11670417705461632897

namespace A051799

/-- `A002417(n+1)+A002419(n+1)-A000292(n+1)` -/
def P11670417705461632897.Spec : Prop :=
  ∀ n, P11670417705461632897.a n = A051799 n

end A051799

/-! ## A051799.P8764993315068139614

`A002419(n+1)+A264852(n+1)-A264850(n+1)`
-/

namespace A051799.P8764993315068139614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002419 (n + 1) + (A264852 (n + 1) - A264850 (n + 1))

end

end A051799.P8764993315068139614

namespace A051799

/-- `A002419(n+1)+A264852(n+1)-A264850(n+1)` -/
def P8764993315068139614.Spec : Prop :=
  ∀ n, P8764993315068139614.a n = A051799 n

end A051799

/-! ## A051799.P7999083802378202153

`∑[A007587(n+1)]`
-/

namespace A051799.P7999083802378202153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051799.P7999083802378202153

namespace A051799

/-- `∑[A007587(n+1)]` -/
def P7999083802378202153.Spec : Prop :=
  ∀ n, P7999083802378202153.a n = A051799 n

end A051799

/-! ## A051799.P17416736094562138839

`∑[∑[A051624(n+1)]]`
-/

namespace A051799.P17416736094562138839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A051799.P17416736094562138839

namespace A051799

/-- `∑[∑[A051624(n+1)]]` -/
def P17416736094562138839.Spec : Prop :=
  ∀ n, P17416736094562138839.a n = A051799 n

end A051799

/-! ## A051799.P3410657957864529514

`A264853(n)+A004467(n+1)`
-/

namespace A051799.P3410657957864529514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264853 n + A004467 (n + 1)

end

end A051799.P3410657957864529514

namespace A051799

/-- `A264853(n)+A004467(n+1)` -/
def P3410657957864529514.Spec : Prop :=
  ∀ n, P3410657957864529514.a n = A051799 n

end A051799

/-! ## A051799.P16744094080911229380

`A051740(n)+A050534(n+2)`
-/

namespace A051799.P16744094080911229380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051740 n + A050534 (n + 2)

end

end A051799.P16744094080911229380

namespace A051799

/-- `A051740(n)+A050534(n+2)` -/
def P16744094080911229380.Spec : Prop :=
  ∀ n, P16744094080911229380.a n = A051799 n

end A051799

