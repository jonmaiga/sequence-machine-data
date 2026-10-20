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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
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

/-!
# A272200: Bisection of primes congruent to 1 modulo 3 (A002476), depending on the corresponding A001479 entry being congruent to 1 modulo 3 or not. Here the first case.

The programs for A272200, there is no canonical definition to state claims against.
-/

/-! ## A272200.P18367150503888507593

`A002476(eq[1, A001479(n+1)%3])`
-/

namespace A272200.P18367150503888507593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001479 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272200.P18367150503888507593

/-! ## A272200.P5642070646368496699

`A065091(lt[0, A272198(n+1)])`
-/

namespace A272200.P5642070646368496699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272200.P5642070646368496699

/-! ## A272200.P2011506556381008321

`A000040(lt[0, A272198(n+1)]+1)`
-/

namespace A272200.P2011506556381008321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A272200.P2011506556381008321

/-! ## A272200.P13558449443894341923

`A008864(lt[0, A272198(n+1)]+1)-1`
-/

namespace A272200.P13558449443894341923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) - 1

end

end A272200.P13558449443894341923

/-! ## A272200.P6791374402271545195

`A065091(lt[0, A070750(n+1)*A272203(n+1)])`
-/

namespace A272200.P6791374402271545195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A272203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272200.P6791374402271545195

/-!
# A272201: Bisection of primes congruent to 1 modulo 3 (A002476), depending on the corresponding A001479 entry being congruent to 1 modulo 3 or not. Here the second case.

The programs for A272201, there is no canonical definition to state claims against.
-/

/-! ## A272201.P15164228103685216780

`A002476(eq[2, A001479(n+1)%3])`
-/

namespace A272201.P15164228103685216780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001479 (n + 1)) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A272201.P15164228103685216780

/-! ## A272201.P1823640119826324706

`A065091(lt[A272198(n+1), 0])`
-/

namespace A272201.P1823640119826324706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272201.P1823640119826324706

/-! ## A272201.P11773557881006766702

`A000040(lt[A272198(n+1), 0]+1)`
-/

namespace A272201.P11773557881006766702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272198 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A272201.P11773557881006766702

/-! ## A272201.P17549434857667200397

`p?[record[A000040(n+1)%A272197(n+1)]]`
-/

namespace A272201.P17549434857667200397
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A272197 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272201.P17549434857667200397

/-! ## A272201.P14353317336626695443

`A065091(lt[A070750(n+1)*A272203(n+1), 0])`
-/

namespace A272201.P14353317336626695443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A272203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272201.P14353317336626695443

/-!
# A272202: Number of solutions of the congruence y^2 == x^3 - 1 (mod p) as p runs through the primes.

The programs for A272202, there is no canonical definition to state claims against.
-/

/-! ## A272202.P3910350764310693684

`A000040(n+1)-A272203(n+1)`
-/

namespace A272202.P3910350764310693684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A272203 (n + 1)

end

end A272202.P3910350764310693684

/-! ## A272202.P12597559539093475676

`A272197(n+1)+A272198(n+1)-A272203(n+1)`
-/

namespace A272202.P12597559539093475676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272197 (n + 1) + (A272198 (n + 1) - A272203 (n + 1))

end

end A272202.P12597559539093475676

/-! ## A272202.P18097918977650058799

`record[A006530(n+2)]-A272203(n+1)`
-/

namespace A272202.P18097918977650058799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272203 (n + 1)

end

end A272202.P18097918977650058799

/-! ## A272202.P354903022741334036

`record[A020639(n+2)]-A272203(n+1)`
-/

namespace A272202.P354903022741334036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272203 (n + 1)

end

end A272202.P354903022741334036

/-! ## A272202.P15992498446185502169

`record[A000010(n+1)+1]-A272203(n+1)`
-/

namespace A272202.P15992498446185502169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272203 (n + 1)

end

end A272202.P15992498446185502169

/-! ## A272202.P12183257464866780899

`eq[1, A001222(n+1)]+1-A272203(n+1)`
-/

namespace A272202.P12183257464866780899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272203 (n + 1)

end

end A272202.P12183257464866780899

/-! ## A272202.P5814223946929218656

`eq[2, A000005(n+1)]+1-A272203(n+1)`
-/

namespace A272202.P5814223946929218656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272203 (n + 1)

end

end A272202.P5814223946929218656

/-! ## A272202.P2099803658654111025

`lt[A001222(n+2), 2]+2-A272203(n+1)`
-/

namespace A272202.P2099803658654111025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A272203 (n + 1)

end

end A272202.P2099803658654111025

/-! ## A272202.P13546224683434170589

`record[A014963(n+2)]-A272203(n+1)`
-/

namespace A272202.P13546224683434170589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272203 (n + 1)

end

end A272202.P13546224683434170589

/-! ## A272202.P10750278384964300881

`A276270(A000040(n+1))`
-/

namespace A272202.P10750278384964300881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (A000040 (n + 1)).toNat

end

end A272202.P10750278384964300881

/-! ## A272202.P9084287693155304852

`A276270(A008578(n+2))`
-/

namespace A272202.P9084287693155304852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (A008578 (n + 2)).toNat

end

end A272202.P9084287693155304852

/-! ## A272202.P2559751292958919154

`A276270(A182986(n+2))`
-/

namespace A272202.P2559751292958919154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (A182986 (n + 2)).toNat

end

end A272202.P2559751292958919154

/-! ## A272202.P2772929870520091461

`A276270(record[A006530(n+2)])`
-/

namespace A272202.P2772929870520091461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272202.P2772929870520091461

/-! ## A272202.P4072263378350937212

`A276270(record[A014963(n+2)])`
-/

namespace A272202.P4072263378350937212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272202.P4072263378350937212

/-! ## A272202.P11705986148462695903

`A276270(record[A020639(n+2)])`
-/

namespace A272202.P11705986148462695903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A272202.P11705986148462695903

/-!
# A272203: P-defects p - N(p) of the congruence y^2 == x^3 - 1 (mod p) for primes p, where N(p) is the number of solutions given by A272202(n).

The programs for A272203, there is no canonical definition to state claims against.
-/

/-! ## A272203.P10160659636982712339

`A000040(n+1)-A272202(n+1)`
-/

namespace A272203.P10160659636982712339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A272202 (n + 1)

end

end A272203.P10160659636982712339

/-! ## A272203.P13810478612308289268

`A070750(n+1)*A272198(n+1)`
-/

namespace A272203.P13810478612308289268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070750 (n + 1) * A272198 (n + 1)

end

end A272203.P13810478612308289268

/-! ## A272203.P10744592095805671091

`A271227(n+1)+A271228(n+1)-A272202(n+1)`
-/

namespace A272203.P10744592095805671091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271227 (n + 1) + (A271228 (n + 1) - A272202 (n + 1))

end

end A272203.P10744592095805671091

/-! ## A272203.P14585102410500382347

`A272197(n+1)+A272198(n+1)-A272202(n+1)`
-/

namespace A272203.P14585102410500382347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272197 (n + 1) + (A272198 (n + 1) - A272202 (n + 1))

end

end A272203.P14585102410500382347

/-! ## A272203.P13185695775721078057

`A008578(n+2)-A272202(n+1)`
-/

namespace A272203.P13185695775721078057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A272202 (n + 1)

end

end A272203.P13185695775721078057

/-! ## A272203.P5795441804099047477

`record[A006530(n+2)]-A272202(n+1)`
-/

namespace A272203.P5795441804099047477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272202 (n + 1)

end

end A272203.P5795441804099047477

/-! ## A272203.P10401586853517853800

`record[A020639(n+2)]-A272202(n+1)`
-/

namespace A272203.P10401586853517853800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272202 (n + 1)

end

end A272203.P10401586853517853800

/-! ## A272203.P14635334015788548247

`record[A000010(n+1)+1]-A272202(n+1)`
-/

namespace A272203.P14635334015788548247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272202 (n + 1)

end

end A272203.P14635334015788548247

/-! ## A272203.P592263008779413527

`eq[1, A001222(n+1)]+1-A272202(n+1)`
-/

namespace A272203.P592263008779413527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272202 (n + 1)

end

end A272203.P592263008779413527

/-! ## A272203.P11944514565431372126

`eq[2, A000005(n+1)]+1-A272202(n+1)`
-/

namespace A272203.P11944514565431372126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) - A272202 (n + 1)

end

end A272203.P11944514565431372126

/-! ## A272203.P5012388692952898416

`lt[A001222(n+2), 2]+2-A272202(n+1)`
-/

namespace A272203.P5012388692952898416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2 : ℤ) - A272202 (n + 1)

end

end A272203.P5012388692952898416

/-! ## A272203.P17905390281556953896

`p?[A072697(n+1)]-A272202(n+1)`
-/

namespace A272203.P17905390281556953896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072697 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272202 (n + 1)

end

end A272203.P17905390281556953896

/-! ## A272203.P12624646847208200149

`record[A014963(n+2)]-A272202(n+1)`
-/

namespace A272203.P12624646847208200149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A272202 (n + 1)

end

end A272203.P12624646847208200149

/-! ## A272203.P8711194884927995816

`A297109(A006450(n+1))-A272202(n+1)`
-/

namespace A272203.P8711194884927995816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (A006450 (n + 1)).toNat - A272202 (n + 1)

end

end A272203.P8711194884927995816

/-! ## A272203.P4370050504644361205

`p?[A001057(n)]-A272202(n+1)`
-/

namespace A272203.P4370050504644361205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272202 (n + 1)

end

end A272203.P4370050504644361205

/-! ## A272203.P9732552942389444439

`p?[A006370(n)]-A272202(n+1)`
-/

namespace A272203.P9732552942389444439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A272202 (n + 1)

end

end A272203.P9732552942389444439

/-! ## A272203.P2976454331370835437

`A182986(n+2)-A276270(A182986(n+2))`
-/

namespace A272203.P2976454331370835437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A276270 (A182986 (n + 2)).toNat

end

end A272203.P2976454331370835437

/-!
# A272204: A bisection of the primes congruent to 1 modulo 3 (A002476). This is the part depending on the corresponding A001479 entry being congruent to 1 or 2 modulo 6.

The programs for A272204, there is no canonical definition to state claims against.
-/

/-! ## A272204.P5415444543808010909

`A065091(lt[0, A272203(n+1)])`
-/

namespace A272204.P5415444543808010909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A272204.P5415444543808010909

/-! ## A272204.P18349344146666054761

`A000040(lt[0, A272203(n+1)]+1)`
-/

namespace A272204.P18349344146666054761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A272204.P18349344146666054761

/-! ## A272204.P15656070681208558531

`A000040(lt[A272202(n+1), A000040(n+1)]+1)`
-/

namespace A272204.P15656070681208558531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272202 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A272204.P15656070681208558531

/-! ## A272204.P17346927376249996932

`lt[A276270(n+1), A014963(n+1)]+1`
-/

namespace A272204.P17346927376249996932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A272204.P17346927376249996932

/-! ## A272204.P2632881909360463178

`A139693(lt[A276270(n+1), A014963(n+1)])`
-/

namespace A272204.P2632881909360463178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276270 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139693 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A272204.P2632881909360463178

/-!
# A272205: A bisection of the primes congruent to 1 modulo 3 (A002476). This is the part depending on the corresponding A001479 entry being congruent to 4 or 5 modulo 6.

The programs for A272205, there is no canonical definition to state claims against.
-/

/-! ## A272205.P13855081884972193438

`A065091(lt[A272203(n+1), 0])`
-/

namespace A272205.P13855081884972193438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A272205.P13855081884972193438

/-! ## A272205.P4998747093402494012

`A000040(lt[A272203(n+1), 0]+1)`
-/

namespace A272205.P4998747093402494012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272203 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A272205.P4998747093402494012

/-! ## A272205.P6713472923215168543

`A000040(lt[A000040(n+1), A272202(n+1)]+1)`
-/

namespace A272205.P6713472923215168543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A272205.P6713472923215168543

/-!
# A272206: Rounded barycenter of first n primes defined as a(n) = round(sum_{i=1..n}(i*prime(i)) / sum_{i=1..n}prime(i)).

The programs for A272206, the canonical program `A272206.P9676339612670176817` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272206 has offset 1).

The definition of A272206 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A014285, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272206.P9676339612670176817

`round(A014285(n+1)/A007504(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A272206

/-- `round(A014285(n+1)/A007504(n+1))` -/
def P9676339612670176817.Spec : Prop :=
  ∀ n, P9676339612670176817.a n = A272206 (n + 1)

theorem P9676339612670176817.correct : P9676339612670176817.Spec := by
  intro n
  simp only [A272206, Nat.add_sub_cancel]

end A272206

/-! ## A272206.P12880120935276866080

`round(A306834(n+1)/A307716(n+1))`
-/

namespace A272206.P12880120935276866080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A306834 (n + 1) : ℚ) / (A307716 (n + 1) : ℚ))

end

end A272206.P12880120935276866080

namespace A272206

/-- `round(A306834(n+1)/A307716(n+1))` -/
def P12880120935276866080.Spec : Prop :=
  ∀ n, P12880120935276866080.a n = A272206 (n + 1)

end A272206

/-! ## A272206.P9984275903544246950

`ceil(A316322(n+1)/∑[A100484(n+1)])`
-/

namespace A272206.P9984275903544246950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A316322 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A272206.P9984275903544246950

namespace A272206

/-- `ceil(A316322(n+1)/∑[A100484(n+1)])` -/
def P9984275903544246950.Spec : Prop :=
  ∀ n, P9984275903544246950.a n = A272206 (n + 1)

end A272206

/-! ## A272206.P16055460093111779160

`round(A014285(n+1)/∑[A000040(n+1)])`
-/

namespace A272206.P16055460093111779160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A014285 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A272206.P16055460093111779160

namespace A272206

/-- `round(A014285(n+1)/∑[A000040(n+1)])` -/
def P16055460093111779160.Spec : Prop :=
  ∀ n, P16055460093111779160.a n = A272206 (n + 1)

end A272206

/-! ## A272206.P8803149740971748557

`round(∑[A033286(n+1)]/A007504(n+1))`
-/

namespace A272206.P8803149740971748557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A007504 (n + 1) : ℚ))

end

end A272206.P8803149740971748557

namespace A272206

/-- `round(∑[A033286(n+1)]/A007504(n+1))` -/
def P8803149740971748557.Spec : Prop :=
  ∀ n, P8803149740971748557.a n = A272206 (n + 1)

end A272206

/-!
# A272207: Number of solutions to the congruence y^2 == x^3 + x^2 + 4*x + 4 (mod p) as p runs through the primes.

The programs for A272207, there is no canonical definition to state claims against.
-/

/-! ## A272207.P6677927924088208234

`Δ[A007504(n)]-A273163(n+1)`
-/

namespace A272207.P6677927924088208234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273163 (n + 1)

end

end A272207.P6677927924088208234

/-! ## A272207.P14020397770205841368

`A000040(n+1)-A273163(n+1)`
-/

namespace A272207.P14020397770205841368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A273163 (n + 1)

end

end A272207.P14020397770205841368

/-! ## A272207.P14676808713534564022

`A276664(n+1)+A276695(n+1)-A273163(n+1)`
-/

namespace A272207.P14676808713534564022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276664 (n + 1) + (A276695 (n + 1) - A273163 (n + 1))

end

end A272207.P14676808713534564022

/-! ## A272207.P6965806654563860872

`A276730(n+1)+A278720(n+1)-A273163(n+1)`
-/

namespace A272207.P6965806654563860872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276730 (n + 1) + (A278720 (n + 1) - A273163 (n + 1))

end

end A272207.P6965806654563860872

/-! ## A272207.P3475029599275898740

`p?[lcm(n+1, A295920(n+1))]-A273163(n+1)`
-/

namespace A272207.P3475029599275898740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A295920 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - A273163 (n + 1)

end

end A272207.P3475029599275898740

/-! ## A272207.P16466133508125170958

`A008578(n+2)-A276491(A008578(n+2))`
-/

namespace A272207.P16466133508125170958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) - A276491 (A008578 (n + 2)).toNat

end

end A272207.P16466133508125170958

/-! ## A272207.P1734395268992911034

`A182986(n+2)-A276491(A182986(n+2))`
-/

namespace A272207.P1734395268992911034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) - A276491 (A182986 (n + 2)).toNat

end

end A272207.P1734395268992911034

/-!
# A272208: Numbers n such that n immediately follows the decimal point in the base-10 representation of sqrt(n).

The programs for A272208, there is no canonical definition to state claims against.
-/

/-! ## A272208.P4147273863246903423

`A074841(A187572(n+1))`
-/

namespace A272208.P4147273863246903423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074841 (A187572 (n + 1)).toNat

end

end A272208.P4147273863246903423

/-! ## A272208.P17726830676133669183

`A074841(A034887(n)+n)`
-/

namespace A272208.P17726830676133669183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074841 (A034887 n + (n : ℤ)).toNat

end

end A272208.P17726830676133669183

/-! ## A272208.P355699503370238291

`A074841(A247915(n+1)-1)`
-/

namespace A272208.P355699503370238291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074841 (A247915 (n + 1) - 1).toNat

end

end A272208.P355699503370238291

/-! ## A272208.P10362163609598255882

`A074841(A284676(n+1)-1)`
-/

namespace A272208.P10362163609598255882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074841 (A284676 (n + 1) - 1).toNat

end

end A272208.P10362163609598255882

/-! ## A272208.P354510818541079461

`A074841(∑[A001055(2*n+1)])`
-/

namespace A272208.P354510818541079461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272208.P354510818541079461

/-!
# A272209: Number of partitions of the number of divisors of n.

The programs for A272209, there is no canonical definition to state claims against.
-/

/-! ## A272209.P14694774583041392189

`A000041(A000005(n+1))`
-/

namespace A272209.P14694774583041392189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A000005 (n + 1)).toNat

end

end A272209.P14694774583041392189

/-! ## A272209.P4793553169627609203

`A000041(∏{e}[n+1, #+1])`
-/

namespace A272209.P4793553169627609203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A272209.P4793553169627609203

/-! ## A272209.P3997952237158687617

`A000041(∑{d}[n+1, gcd(n, #)])`
-/

namespace A272209.P3997952237158687617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A272209.P3997952237158687617

/-! ## A272209.P1803166451189117846

`A000041(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A272209.P1803166451189117846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A272209.P1803166451189117846

/-! ## A272209.P13691120846533821525

`A000041(∑{d}[n+1, ceil(1/#)])`
-/

namespace A272209.P13691120846533821525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), ⌈1 / (d : ℚ)⌉).toNat

end

end A272209.P13691120846533821525

/-! ## A272209.P6619255377405001752

`A000041(∑{d}[n+1, C(2, #)!]-1)`
-/

namespace A272209.P6619255377405001752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Nat.choose 2 d) - 1)

end

end A272209.P6619255377405001752

/-! ## A272209.P11232376515662082999

`A000041(∑{d}[n+1, n²%#]+1)`
-/

namespace A272209.P11232376515662082999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1)

end

end A272209.P11232376515662082999

/-! ## A272209.P9519811447041816233

`A000041(∏{p}[n+1, val(n+1, #)+1])`
-/

namespace A272209.P9519811447041816233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 1))

end

end A272209.P9519811447041816233

/-! ## A272209.P17726653058945339716

`A000041(Δ[A006218(n)])`
-/

namespace A272209.P17726653058945339716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A272209.P17726653058945339716

/-! ## A272209.P1831012097613334870

`A000041(Δ[A054519(n)])`
-/

namespace A272209.P1831012097613334870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (f1 (n + 1) - f1 n).toNat

end

end A272209.P1831012097613334870

/-! ## A272209.P6383826720601138496

`A035363(A062011(n+1))`
-/

namespace A272209.P6383826720601138496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (A062011 (n + 1)).toNat

end

end A272209.P6383826720601138496

/-! ## A272209.P15977512869011635176

`A035444(A145154(n+1))`
-/

namespace A272209.P15977512869011635176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (A145154 (n + 1)).toNat

end

end A272209.P15977512869011635176

/-! ## A272209.P12877598074288615879

`A026820(A184389(n+1))`
-/

namespace A272209.P12877598074288615879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026820 (A184389 (n + 1)).toNat

end

end A272209.P12877598074288615879

/-! ## A272209.P12150118723728088156

`A100824(A131089(n+1))`
-/

namespace A272209.P12150118723728088156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (A131089 (n + 1)).toNat

end

end A272209.P12150118723728088156

/-! ## A272209.P17327487834777755914

`A194451(A114003(n+1))`
-/

namespace A272209.P17327487834777755914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194451 (A114003 (n + 1)).toNat

end

end A272209.P17327487834777755914

/-! ## A272209.P10358716435696722428

`A299200(A105555(n+1))`
-/

namespace A272209.P10358716435696722428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299200 (A105555 (n + 1)).toNat

end

end A272209.P10358716435696722428

/-! ## A272209.P5748566065699337098

`A000041(A032741(n+1)+1)`
-/

namespace A272209.P5748566065699337098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A032741 (n + 1) + 1).toNat

end

end A272209.P5748566065699337098

/-! ## A272209.P16814264907574337421

`A000041(A334954(n+1)-1)`
-/

namespace A272209.P16814264907574337421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A334954 (n + 1) - 1).toNat

end

end A272209.P16814264907574337421

/-! ## A272209.P5545691444001539706

`A035363(2*A000005(n+1))`
-/

namespace A272209.P5545691444001539706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 (2 * A000005 (n + 1)).toNat

end

end A272209.P5545691444001539706

/-! ## A272209.P6089279849277892031

`A100824(2*A000005(n+1))`
-/

namespace A272209.P6089279849277892031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100824 (2 * A000005 (n + 1)).toNat

end

end A272209.P6089279849277892031

/-!
# A272210: Difference table of the divisors of the positive integers (with every table read by antidiagonals upwards).

The programs for A272210, there is no canonical definition to state claims against.
-/

/-! ## A272210.P12861527567276630689

`A273132(n+1)-A272618(A007862(n+2))`
-/

namespace A272210.P12861527567276630689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273132 (n + 1) - A272618 (A007862 (n + 2)).toNat

end

end A272210.P12861527567276630689

/-! ## A272210.P8879870502096288744

`A273132(n+1)-A091009(A140213(n+3))`
-/

namespace A272210.P8879870502096288744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273132 (n + 1) - A091009 (A140213 (n + 3)).toNat

end

end A272210.P8879870502096288744

/-! ## A272210.P1110097162094828513

`A273132(n+1)%p?[A014848(n)]`
-/

namespace A272210.P1110097162094828513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273132 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A272210.P1110097162094828513

/-! ## A272210.P8341039776165132515

`A348613(ceil((n+1)/∏{p}[n+1, (n+1)/#]))+A273132(n+1)`
-/

namespace A272210.P8341039776165132515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348613 ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), (n + 1 : ℚ) / (p : ℚ))⌉.toNat + A273132 (n + 1)

end

end A272210.P8341039776165132515

/-! ## A272210.P17240014517096389571

`A273132(n+1)+A000007(A025157(n))`
-/

namespace A272210.P17240014517096389571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273132 (n + 1) + A000007 (A025157 n).toNat

end

end A272210.P17240014517096389571

/-! ## A272210.P14701574813663996612

`A273132(n+1)*A335521(A020639(n+1))`
-/

namespace A272210.P14701574813663996612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273132 (n + 1) * A335521 (A020639 (n + 1)).toNat

end

end A272210.P14701574813663996612

/-! ## A272210.P5638894929939139237

`A016030(A274533(n+1))*A273132(n+1)`
-/

namespace A272210.P5638894929939139237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 (A274533 (n + 1)).toNat * A273132 (n + 1)

end

end A272210.P5638894929939139237

/-! ## A272210.P6148367792487560199

`A273132(n+1)%A002189(n)`
-/

namespace A272210.P6148367792487560199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A273132 (n + 1)) (A002189 n)

end

end A272210.P6148367792487560199

/-! ## A272210.P626366520164830909

`and(A141311(n+1), A273132(n+1))`
-/

namespace A272210.P626366520164830909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A141311 (n + 1)) (A273132 (n + 1))

end

end A272210.P626366520164830909

/-!
# A272211: Product of n-th prime and the sum of the divisors of n.

The programs for A272211, the canonical program `A272211.P17519105524056241919` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272211 has offset 1).

The definition of A272211 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A272173, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272211.P17519105524056241919

`A272173(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A272211

/-- `A272173(n+1)-A000203(n+1)` -/
def P17519105524056241919.Spec : Prop :=
  ∀ n, P17519105524056241919.a n = A272211 (n + 1)

theorem P17519105524056241919.correct : P17519105524056241919.Spec := by
  intro n
  simp only [A272211, Nat.add_sub_cancel]

end A272211

/-! ## A272211.P11228487043966508276

`A000040(n+1)*A000203(n+1)`
-/

namespace A272211.P11228487043966508276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000203 (n + 1)

end

end A272211.P11228487043966508276

namespace A272211

/-- `A000040(n+1)*A000203(n+1)` -/
def P11228487043966508276.Spec : Prop :=
  ∀ n, P11228487043966508276.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P4879859006514466271

`A000203(A033286(n+1))-A000203(n+1)`
-/

namespace A272211.P4879859006514466271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A033286 (n + 1)).toNat - A000203 (n + 1)

end

end A272211.P4879859006514466271

namespace A272211

/-- `A000203(A033286(n+1))-A000203(n+1)` -/
def P4879859006514466271.Spec : Prop :=
  ∀ n, P4879859006514466271.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P13661767918079121766

`Δ[A007504(n)]*Δ[A160664(n)]`
-/

namespace A272211.P13661767918079121766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A272211.P13661767918079121766

namespace A272211

/-- `Δ[A007504(n)]*Δ[A160664(n)]` -/
def P13661767918079121766.Spec : Prop :=
  ∀ n, P13661767918079121766.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P18049000538624264787

`A000203(n+1)*Δ[A007504(n)]`
-/

namespace A272211.P18049000538624264787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f1 (n + 1) - f1 n)

end

end A272211.P18049000538624264787

namespace A272211

/-- `A000203(n+1)*Δ[A007504(n)]` -/
def P18049000538624264787.Spec : Prop :=
  ∀ n, P18049000538624264787.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P9655099411176469393

`A000040(n+1)*Δ[A160664(n)]`
-/

namespace A272211.P9655099411176469393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A272211.P9655099411176469393

namespace A272211

/-- `A000040(n+1)*Δ[A160664(n)]` -/
def P9655099411176469393.Spec : Prop :=
  ∀ n, P9655099411176469393.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P2211472954839524002

`abs(Δ[A008348(n)]*A000203(n+1))`
-/

namespace A272211.P2211472954839524002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000203 (n + 1)|

end

end A272211.P2211472954839524002

namespace A272211

/-- `abs(Δ[A008348(n)]*A000203(n+1))` -/
def P2211472954839524002.Spec : Prop :=
  ∀ n, P2211472954839524002.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P6468847312061773024

`abs(Δ[A022837(n)]*A000203(n+1))`
-/

namespace A272211.P6468847312061773024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000203 (n + 1)|

end

end A272211.P6468847312061773024

namespace A272211

/-- `abs(Δ[A022837(n)]*A000203(n+1))` -/
def P6468847312061773024.Spec : Prop :=
  ∀ n, P6468847312061773024.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P15108986759169121715

`abs(Δ[A064365(n)]*A000203(n+1))`
-/

namespace A272211.P15108986759169121715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000203 (n + 1)|

end

end A272211.P15108986759169121715

namespace A272211

/-- `abs(Δ[A064365(n)]*A000203(n+1))` -/
def P15108986759169121715.Spec : Prop :=
  ∀ n, P15108986759169121715.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P1284359497871957451

`abs(Δ[A330725(n)]*A000040(n+1))`
-/

namespace A272211.P1284359497871957451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f1 (n + 1) - f1 n) * A000040 (n + 1)|

end

end A272211.P1284359497871957451

namespace A272211

/-- `abs(Δ[A330725(n)]*A000040(n+1))` -/
def P1284359497871957451.Spec : Prop :=
  ∀ n, P1284359497871957451.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P16397106292564372710

`abs(A000040(n+1)*A143348(n+1))`
-/

namespace A272211.P16397106292564372710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000040 (n + 1) * A143348 (n + 1)|

end

end A272211.P16397106292564372710

namespace A272211

/-- `abs(A000040(n+1)*A143348(n+1))` -/
def P16397106292564372710.Spec : Prop :=
  ∀ n, P16397106292564372710.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P11557674527460589097

`sqrt(A001248(n+1))*A000203(n+1)`
-/

namespace A272211.P11557674527460589097
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A000203 (n + 1) : ℝ)

end

end A272211.P11557674527460589097

namespace A272211

/-- `sqrt(A001248(n+1))*A000203(n+1)` -/
def P11557674527460589097.Spec : Prop :=
  ∀ n, P11557674527460589097.a n = (A272211 (n + 1) : ℝ)

end A272211

/-! ## A272211.P10446052383743708884

`sqrt(A072861(n+1))*A000040(n+1)`
-/

namespace A272211.P10446052383743708884
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072861 (n + 1) : ℝ) * (A000040 (n + 1) : ℝ)

end

end A272211.P10446052383743708884

namespace A272211

/-- `sqrt(A072861(n+1))*A000040(n+1)` -/
def P10446052383743708884.Spec : Prop :=
  ∀ n, P10446052383743708884.a n = (A272211 (n + 1) : ℝ)

end A272211

/-! ## A272211.P6608741373688372127

`A000203(n+1)*∑[A054541(n+1)]`
-/

namespace A272211.P6608741373688372127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272211.P6608741373688372127

namespace A272211

/-- `A000203(n+1)*∑[A054541(n+1)]` -/
def P6608741373688372127.Spec : Prop :=
  ∀ n, P6608741373688372127.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P8514382815020150731

`A000040(n+1)*∑[A340793(n+1)]`
-/

namespace A272211.P8514382815020150731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A272211.P8514382815020150731

namespace A272211

/-- `A000040(n+1)*∑[A340793(n+1)]` -/
def P8514382815020150731.Spec : Prop :=
  ∀ n, P8514382815020150731.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P7030739199917788894

`A000203(n+1)*p?[A015919(n+1)]`
-/

namespace A272211.P7030739199917788894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A272211.P7030739199917788894

namespace A272211

/-- `A000203(n+1)*p?[A015919(n+1)]` -/
def P7030739199917788894.Spec : Prop :=
  ∀ n, P7030739199917788894.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P1515359127837762348

`(A006093(n+1)+1)*A000203(n+1)`
-/

namespace A272211.P1515359127837762348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A000203 (n + 1)

end

end A272211.P1515359127837762348

namespace A272211

/-- `(A006093(n+1)+1)*A000203(n+1)` -/
def P1515359127837762348.Spec : Prop :=
  ∀ n, P1515359127837762348.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P7798030755725667058

`(A008864(n+1)-1)*A000203(n+1)`
-/

namespace A272211.P7798030755725667058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A000203 (n + 1)

end

end A272211.P7798030755725667058

namespace A272211

/-- `(A008864(n+1)-1)*A000203(n+1)` -/
def P7798030755725667058.Spec : Prop :=
  ∀ n, P7798030755725667058.a n = A272211 (n + 1)

end A272211

/-! ## A272211.P16803801494465545721

`(A040976(n+1)+2)*A000203(n+1)`
-/

namespace A272211.P16803801494465545721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A000203 (n + 1)

end

end A272211.P16803801494465545721

namespace A272211

/-- `(A040976(n+1)+2)*A000203(n+1)` -/
def P16803801494465545721.Spec : Prop :=
  ∀ n, P16803801494465545721.a n = A272211 (n + 1)

end A272211

/-!
# A272212: Sum of the odd numbers among the larger parts of the partitions of n into two parts.

The programs for A272212, the canonical program `A272212.P9020009135411971232` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272212 has offset 0).

The definition of A272212 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272212.P9020009135411971232

`a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0, a(4)=3, a(5)=3, a(6)=8, a(7)=5, a(8)=12`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272212

/-- `a(n-1)+2*a(n-4)-2*a(n-5)-a(n-8)+a(n-9)` -/
def P9020009135411971232.Spec : Prop :=
  ∀ n, P9020009135411971232.a n = A272212 n

theorem P9020009135411971232.correct : P9020009135411971232.Spec := by
  intro n
  simp only [A272212]

end A272212

/-! ## A272212.P14854810752305630677

`A000212(A057353(xor(1, n)))`
-/

namespace A272212.P14854810752305630677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (A057353 (Nat.xor 1 n)).toNat

end

end A272212.P14854810752305630677

namespace A272212

/-- `A000212(A057353(xor(1, n)))` -/
def P14854810752305630677.Spec : Prop :=
  ∀ n, P14854810752305630677.a n = A272212 n

end A272212

/-! ## A272212.P17606188324289540872

`A057353(n)*A059169(n+1)`
-/

namespace A272212.P17606188324289540872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n * A059169 (n + 1)

end

end A272212.P17606188324289540872

namespace A272212

/-- `A057353(n)*A059169(n+1)` -/
def P17606188324289540872.Spec : Prop :=
  ∀ n, P17606188324289540872.a n = A272212 n

end A272212

/-! ## A272212.P10190430587994787164

`A004526(n)²-Δ[A130519(n)]²`
-/

namespace A272212.P10190430587994787164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 - (f1 (n + 1) - f1 n) ^ 2

end

end A272212.P10190430587994787164

namespace A272212

/-- `A004526(n)²-Δ[A130519(n)]²` -/
def P10190430587994787164.Spec : Prop :=
  ∀ n, P10190430587994787164.a n = A272212 n

end A272212

/-! ## A272212.P16718966314759714659

`A296805(n+1)-A059169(n+1)`
-/

namespace A272212.P16718966314759714659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296805 (n + 1) - A059169 (n + 1)

end

end A272212.P16718966314759714659

namespace A272212

/-- `A296805(n+1)-A059169(n+1)` -/
def P16718966314759714659.Spec : Prop :=
  ∀ n, P16718966314759714659.a n = A272212 n

end A272212

/-! ## A272212.P4257377762445515773

`(A037915(n)-1)*A059169(n+1)`
-/

namespace A272212.P4257377762445515773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037915 n - 1) * A059169 (n + 1)

end

end A272212.P4257377762445515773

namespace A272212

/-- `(A037915(n)-1)*A059169(n+1)` -/
def P4257377762445515773.Spec : Prop :=
  ∀ n, P4257377762445515773.a n = A272212 n

end A272212

/-! ## A272212.P2707384661629831014

`(n-A110655(n))*A059169(n+1)`
-/

namespace A272212.P2707384661629831014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110655 n) * A059169 (n + 1)

end

end A272212.P2707384661629831014

namespace A272212

/-- `(n-A110655(n))*A059169(n+1)` -/
def P2707384661629831014.Spec : Prop :=
  ∀ n, P2707384661629831014.a n = A272212 n

end A272212

/-! ## A272212.P17867276040163873721

`2*A308160(n+1)-A059169(n+1)`
-/

namespace A272212.P17867276040163873721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A308160 (n + 1) - A059169 (n + 1)

end

end A272212.P17867276040163873721

namespace A272212

/-- `2*A308160(n+1)-A059169(n+1)` -/
def P17867276040163873721.Spec : Prop :=
  ∀ n, P17867276040163873721.a n = A272212 n

end A272212

/-! ## A272212.P9767508122271611480

`A008794(n)-A008794(A065033(n))`
-/

namespace A272212.P9767508122271611480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 (A065033 n).toNat

end

end A272212.P9767508122271611480

namespace A272212

/-- `A008794(n)-A008794(A065033(n))` -/
def P9767508122271611480.Spec : Prop :=
  ∀ n, P9767508122271611480.a n = A272212 n

end A272212

/-! ## A272212.P3275997503450442019

`A008794(n)-A008794(A110654(n))`
-/

namespace A272212.P3275997503450442019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 (A110654 n).toNat

end

end A272212.P3275997503450442019

namespace A272212

/-- `A008794(n)-A008794(A110654(n))` -/
def P3275997503450442019.Spec : Prop :=
  ∀ n, P3275997503450442019.a n = A272212 n

end A272212

/-! ## A272212.P13738176917695826698

`A008794(n)-A008794(∑[A266070(n)])`
-/

namespace A272212.P13738176917695826698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A272212.P13738176917695826698

namespace A272212

/-- `A008794(n)-A008794(∑[A266070(n)])` -/
def P13738176917695826698.Spec : Prop :=
  ∀ n, P13738176917695826698.a n = A272212 n

end A272212

/-! ## A272212.P5496605038950474797

`A008794(n)-A008794(A004525(n+1))`
-/

namespace A272212.P5496605038950474797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 (A004525 (n + 1)).toNat

end

end A272212.P5496605038950474797

namespace A272212

/-- `A008794(n)-A008794(A004525(n+1))` -/
def P5496605038950474797.Spec : Prop :=
  ∀ n, P5496605038950474797.a n = A272212 n

end A272212

/-! ## A272212.P9778404246761565605

`A001318(n)-(A272104(n)+A026741(n))`
-/

namespace A272212.P9778404246761565605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n - (A272104 n + A026741 n)

end

end A272212.P9778404246761565605

namespace A272212

/-- `A001318(n)-(A272104(n)+A026741(n))` -/
def P9778404246761565605.Spec : Prop :=
  ∀ n, P9778404246761565605.a n = A272212 n

end A272212

/-! ## A272212.P1600188907690543253

`A008794(n)-A008794(n-A004525(n))`
-/

namespace A272212.P1600188907690543253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 ((n : ℤ) - A004525 n).toNat

end

end A272212.P1600188907690543253

namespace A272212

/-- `A008794(n)-A008794(n-A004525(n))` -/
def P1600188907690543253.Spec : Prop :=
  ∀ n, P1600188907690543253.a n = A272212 n

end A272212

/-! ## A272212.P14256950464584718850

`A008794(n)-A008794(n-A004526(n))`
-/

namespace A272212.P14256950464584718850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 ((n : ℤ) - A004526 n).toNat

end

end A272212.P14256950464584718850

namespace A272212

/-- `A008794(n)-A008794(n-A004526(n))` -/
def P14256950464584718850.Spec : Prop :=
  ∀ n, P14256950464584718850.a n = A272212 n

end A272212

/-! ## A272212.P16533361008640272477

`A008794(n)-A008794(A007494(n)-n)`
-/

namespace A272212.P16533361008640272477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008794 n - A008794 (A007494 n - (n : ℤ)).toNat

end

end A272212.P16533361008640272477

namespace A272212

/-- `A008794(n)-A008794(A007494(n)-n)` -/
def P16533361008640272477.Spec : Prop :=
  ∀ n, P16533361008640272477.a n = A272212 n

end A272212

/-! ## A272212.P17853687844875625218

`(n-A110655(n))*A004526(A028242(n))`
-/

namespace A272212.P17853687844875625218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A110655 n) * A004526 (A028242 n).toNat

end

end A272212.P17853687844875625218

namespace A272212

/-- `(n-A110655(n))*A004526(A028242(n))` -/
def P17853687844875625218.Spec : Prop :=
  ∀ n, P17853687844875625218.a n = A272212 n

end A272212

/-! ## A272212.P11060304253411604847

`(A052928(n)-A057353(n))*A057353(n)`
-/

namespace A272212.P11060304253411604847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A052928 n - A057353 n) * A057353 n

end

end A272212.P11060304253411604847

namespace A272212

/-- `(A052928(n)-A057353(n))*A057353(n)` -/
def P11060304253411604847.Spec : Prop :=
  ∀ n, P11060304253411604847.a n = A272212 n

end A272212

/-! ## A272212.P17059559288295715656

`A004526(n)²-A004526(A065033(n))²`
-/

namespace A272212.P17059559288295715656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 - A004526 (A065033 n).toNat ^ 2

end

end A272212.P17059559288295715656

namespace A272212

/-- `A004526(n)²-A004526(A065033(n))²` -/
def P17059559288295715656.Spec : Prop :=
  ∀ n, P17059559288295715656.a n = A272212 n

end A272212

/-! ## A272212.P13330868443938118020

`A004526(n)²-A004526(A106249(n))²`
-/

namespace A272212.P13330868443938118020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2 - A004526 (A106249 n).toNat ^ 2

end

end A272212.P13330868443938118020

namespace A272212

/-- `A004526(n)²-A004526(A106249(n))²` -/
def P13330868443938118020.Spec : Prop :=
  ∀ n, P13330868443938118020.a n = A272212 n

end A272212

/-!
# A272214: Square array read by antidiagonals upwards in which T(n,k) is the product of the n-th prime and the sum of the divisors of k, n >= 1, k >= 1.

The programs for A272214, the canonical program `A272214.P17777000404027784812` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272214 has offset 1).

The definition of A272214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8128 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272214.P17777000404027784812

`A104887(n+1)*A245093(n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A272214

/-- `A104887(n+1)*A245093(n+1)` -/
def P17777000404027784812.Spec : Prop :=
  ∀ n, P17777000404027784812.a n = A272214 (n + 1)

theorem P17777000404027784812.correct : P17777000404027784812.Spec := by
  intro n
  simp only [A272214, Nat.add_sub_cancel]

end A272214

/-! ## A272214.P17878963325843792129

`A000203(A002260(n+1))*A104887(n+1)`
-/

namespace A272214.P17878963325843792129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A104887 (n + 1)

end

end A272214.P17878963325843792129

namespace A272214

/-- `A000203(A002260(n+1))*A104887(n+1)` -/
def P17878963325843792129.Spec : Prop :=
  ∀ n, P17878963325843792129.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P11461292334616247071

`A000040(A004736(n+1))*A245093(n+1)`
-/

namespace A272214.P11461292334616247071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A245093 (n + 1)

end

end A272214.P11461292334616247071

namespace A272214

/-- `A000040(A004736(n+1))*A245093(n+1)` -/
def P11461292334616247071.Spec : Prop :=
  ∀ n, P11461292334616247071.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P9425827009499770669

`A008578(A004736(n+1)+1)*A245093(n+1)`
-/

namespace A272214.P9425827009499770669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A004736 (n + 1) + 1).toNat * A245093 (n + 1)

end

end A272214.P9425827009499770669

namespace A272214

/-- `A008578(A004736(n+1)+1)*A245093(n+1)` -/
def P9425827009499770669.Spec : Prop :=
  ∀ n, P9425827009499770669.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P2230591849343134611

`A000040(A025581(n)+1)*∑{d}[A002262(n)+1, #]`
-/

namespace A272214.P2230591849343134611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A025581 n + 1).toNat * ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ)

end

end A272214.P2230591849343134611

namespace A272214

/-- `A000040(A025581(n)+1)*∑{d}[A002262(n)+1, #]` -/
def P2230591849343134611.Spec : Prop :=
  ∀ n, P2230591849343134611.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P12190418511567979842

`A000040(A004736(n+1))*A000203(A002260(n+1))`
-/

namespace A272214.P12190418511567979842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A004736 (n + 1)).toNat * A000203 (A002260 (n + 1)).toNat

end

end A272214.P12190418511567979842

namespace A272214

/-- `A000040(A004736(n+1))*A000203(A002260(n+1))` -/
def P12190418511567979842.Spec : Prop :=
  ∀ n, P12190418511567979842.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P13858161545837614413

`A272400(comp[∑[n]])`
-/

namespace A272214.P13858161545837614413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272400 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A272214.P13858161545837614413

namespace A272214

/-- `A272400(comp[∑[n]])` -/
def P13858161545837614413.Spec : Prop :=
  ∀ n, P13858161545837614413.a n = A272214 (n + 1)

end A272214

/-! ## A272214.P1668148620517112272

`A122111(2*A130321(n))*A245093(n+1)`
-/

namespace A272214.P1668148620517112272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122111 (2 * A130321 n).toNat * A245093 (n + 1)

end

end A272214.P1668148620517112272

namespace A272214

/-- `A122111(2*A130321(n))*A245093(n+1)` -/
def P1668148620517112272.Spec : Prop :=
  ∀ n, P1668148620517112272.a n = A272214 (n + 1)

end A272214

/-!
# A272215: a(n) = that number formed by permuting the digits of n which is divisible by the highest power of 2 (in case of a tie, choose the smallest number).

The programs for A272215, there is no canonical definition to state claims against.
-/

/-! ## A272215.P1242747913139960167

`A076084(n+1)%(A064915(n+1)+6)`
-/

namespace A272215.P1242747913139960167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076084 (n + 1)) (A064915 (n + 1) + 6)

end

end A272215.P1242747913139960167

/-! ## A272215.P14045066886084250367

`A076084(n+1)%A006047(A008778(n))`
-/

namespace A272215.P14045066886084250367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A076084 (n + 1)) (A006047 (A008778 n).toNat)

end

end A272215.P14045066886084250367

/-! ## A272215.P7935810753463904111

`A107602(A153679(n+1))`
-/

namespace A272215.P7935810753463904111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107602 (A153679 (n + 1)).toNat

end

end A272215.P7935810753463904111

/-! ## A272215.P14759329275882823341

`A107602(n+1)%A109099(n+1)`
-/

namespace A272215.P14759329275882823341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107602 (n + 1)) (A109099 (n + 1))

end

end A272215.P14759329275882823341

/-! ## A272215.P947259586784809937

`gcd(A107602(n+1), A146558(n+1))`
-/

namespace A272215.P947259586784809937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A107602 (n + 1)) (A146558 (n + 1))

end

end A272215.P947259586784809937

/-!
# A272216: Exponent of the power of 2 that divides A272215(n).

The programs for A272216, there is no canonical definition to state claims against.
-/

/-! ## A272216.P12450786705670270199

`val(A272215(n+1), 2)`
-/

namespace A272216.P12450786705670270199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A272215 (n + 1)).toNat 2

end

end A272216.P12450786705670270199

/-! ## A272216.P11349946855918544077

`A007814(A272215(n+1))`
-/

namespace A272216.P11349946855918544077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A272215 (n + 1)).toNat

end

end A272216.P11349946855918544077

/-! ## A272216.P16823170948339890982

`A001222(and(-A272215(n+1), A272215(n+1)))`
-/

namespace A272216.P16823170948339890982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.land (-A272215 (n + 1)) (A272215 (n + 1))).toNat

end

end A272216.P16823170948339890982

/-! ## A272216.P5475339395276752818

`log2(gcd(A056673(n+1), A272215(n+1)))`
-/

namespace A272216.P5475339395276752818
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A056673 (n + 1)) (A272215 (n + 1)) : ℝ)

end

end A272216.P5475339395276752818

/-! ## A272216.P6977595109315137036

`log2(gcd(A060546(n), A272215(n+1)))`
-/

namespace A272216.P6977595109315137036
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd (A060546 n) (A272215 (n + 1)) : ℝ)

end

end A272216.P6977595109315137036

/-! ## A272216.P7706612130972961859

`val(A068634(n+1), A000005(A008578((n+2)²)))`
-/

namespace A272216.P7706612130972961859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068634 (n + 1)).toNat (A000005 (A008578 ((n + 2) ^ 2)).toNat).toNat

end

end A272216.P7706612130972961859

/-! ## A272216.P13271565740255937911

`val(A322464(A068634(n+1)), 2)`
-/

namespace A272216.P13271565740255937911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A322464 (A068634 (n + 1)).toNat).toNat 2

end

end A272216.P13271565740255937911

/-! ## A272216.P5122611630024264507

`val(A068634(n+1), gcd(2, A202686(n+1)))`
-/

namespace A272216.P5122611630024264507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A068634 (n + 1)).toNat (Int.gcd 2 (A202686 (n + 1)))

end

end A272216.P5122611630024264507

/-! ## A272216.P12227613234854363521

`A007814(2*A068634(n+1))-1`
-/

namespace A272216.P12227613234854363521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A068634 (n + 1)).toNat - 1

end

end A272216.P12227613234854363521

/-!
# A272217: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A272217, there is no canonical definition to state claims against.
-/

/-! ## A272217.P12385759652314377258

`A272220(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272217.P12385759652314377258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272220 (n - 1) + a (n - 1)

end

end A272217.P12385759652314377258

/-! ## A272217.P9869909646982637459

`Δ[A272219(n)]-A272220(n)`
-/

namespace A272217.P9869909646982637459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272220 n

end

end A272217.P9869909646982637459

/-! ## A272217.P4863587243268589792

`A272219(n+1)-(A272220(n)+A272219(n))`
-/

namespace A272217.P4863587243268589792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272219 (n + 1) - (A272220 n + A272219 n)

end

end A272217.P4863587243268589792

/-! ## A272217.P15510891367910260422

`A181385(A016825(n))-A273073(n)`
-/

namespace A272217.P15510891367910260422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273073 n

end

end A272217.P15510891367910260422

/-! ## A272217.P7235003968401762597

`A008740(A008458(n))-A273073(n)`
-/

namespace A272217.P7235003968401762597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273073 n

end

end A272217.P7235003968401762597

/-!
# A272218: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A272218, there is no canonical definition to state claims against.
-/

/-! ## A272218.P16327355558245590429

`A272217(2^n-1)`
-/

namespace A272218.P16327355558245590429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (2 ^ n - 1)

end

end A272218.P16327355558245590429

/-! ## A272218.P1690738765335226752

`record[A272217(A173787(n))]`
-/

namespace A272218.P1690738765335226752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272218.P1690738765335226752

/-! ## A272218.P15448843946882134113

`record[A272217(A232751(n))]`
-/

namespace A272218.P15448843946882134113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272218.P15448843946882134113

/-! ## A272218.P16380518564042385036

`record[A272217(A322382(n+1))]`
-/

namespace A272218.P16380518564042385036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (A322382 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272218.P16380518564042385036

/-! ## A272218.P11912401436139944335

`record[A272217(A324865(n+1))]`
-/

namespace A272218.P11912401436139944335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272218.P11912401436139944335

/-!
# A272219: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A272219, there is no canonical definition to state claims against.
-/

/-! ## A272219.P7019876514863884942

`∑[A272220(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272219.P7019876514863884942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272220 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272219.P7019876514863884942

/-! ## A272219.P17417002612588058234

`∑[A272217(n)]`
-/

namespace A272219.P17417002612588058234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272219.P17417002612588058234

/-! ## A272219.P12316428852366290431

`a(n-1)-A057428(n)*A272217(n)` with `a(0)=1`
-/

namespace A272219.P12316428852366290431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - A057428 n * A272217 n

end

end A272219.P12316428852366290431

/-! ## A272219.P6945325547537292384

`a(n-1)+A272217(n)%A191345(n+1)` with `a(0)=1`
-/

namespace A272219.P6945325547537292384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272217 n) (A191345 (n + 1))

end

end A272219.P6945325547537292384

/-! ## A272219.P7586332102768415234

`∑[A016754(n)]+1-A273075(n)`
-/

namespace A272219.P7586332102768415234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A273075 n)

end

end A272219.P7586332102768415234

/-! ## A272219.P4329981646942556753

`∑[A181385(A016825(n))-A273073(n)]`
-/

namespace A272219.P4329981646942556753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272219.P4329981646942556753

/-! ## A272219.P2340619996654606538

`∑[A254667(A016754(n))]-A273075(n)`
-/

namespace A272219.P2340619996654606538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A016754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273075 n

end

end A272219.P2340619996654606538

/-!
# A272220: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A272220, there is no canonical definition to state claims against.
-/

/-! ## A272220.P17149115586013571067

`Δ[A272217(n)]`
-/

namespace A272220.P17149115586013571067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272220.P17149115586013571067

/-! ## A272220.P15474922709400854283

`A272217(n+1)-A272217(n)`
-/

namespace A272220.P15474922709400854283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272217 (n + 1) - A272217 n

end

end A272220.P15474922709400854283

/-! ## A272220.P2006897502475712570

`Δ[A181385(A016825(n))-A273073(n)]`
-/

namespace A272220.P2006897502475712570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272220.P2006897502475712570

/-! ## A272220.P5954004149780782261

`Δ[A181385(A016825(n))]-A273076(n)`
-/

namespace A272220.P5954004149780782261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A273076 n

end

end A272220.P5954004149780782261

/-! ## A272220.P14802387841382886849

`Δ[A008740(A008458(n))-A273073(n)]`
-/

namespace A272220.P14802387841382886849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273073 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272220.P14802387841382886849

/-!
# A272221: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A272221, there is no canonical definition to state claims against.
-/

/-! ## A272221.P8258743553467161717

`A272224(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272221.P8258743553467161717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272224 (n - 1) + a (n - 1)

end

end A272221.P8258743553467161717

/-! ## A272221.P5732007430166055275

`A272224(n-1)-(A000038(n)-a(n-1))` with `a(0)=1`
-/

namespace A272221.P5732007430166055275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272224 (n - 1) - (A000038 n - a (n - 1))

end

end A272221.P5732007430166055275

/-! ## A272221.P16563396961860903817

`Δ[A272223(n)]-A272224(n)`
-/

namespace A272221.P16563396961860903817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272224 n

end

end A272221.P16563396961860903817

/-! ## A272221.P8477195071920462694

`A272223(n+1)-(A272224(n)+A272223(n))`
-/

namespace A272221.P8477195071920462694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272223 (n + 1) - (A272224 n + A272223 n)

end

end A272221.P8477195071920462694

/-! ## A272221.P4452136301777362140

`A272223(A000027(n+1))%(A272224(n)+A272223(n))`
-/

namespace A272221.P4452136301777362140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272223 (A000027 (n + 1)).toNat) (A272224 n + A272223 n)

end

end A272221.P4452136301777362140

/-!
# A272222: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A272222, there is no canonical definition to state claims against.
-/

/-! ## A272222.P7362021204507498598

`A272221(2^n-1)`
-/

namespace A272222.P7362021204507498598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (2 ^ n - 1)

end

end A272222.P7362021204507498598

/-! ## A272222.P18438354342613369155

`record[A272221(A173787(n))]`
-/

namespace A272222.P18438354342613369155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272222.P18438354342613369155

/-! ## A272222.P10444326171373776705

`record[A272221(A218616(n))]`
-/

namespace A272222.P10444326171373776705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272222.P10444326171373776705

/-! ## A272222.P6327648497373929545

`record[A272221(A232751(n))]`
-/

namespace A272222.P6327648497373929545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272222.P6327648497373929545

/-! ## A272222.P12483776307239561418

`record[A272221(A255565(n))]`
-/

namespace A272222.P12483776307239561418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272222.P12483776307239561418

/-!
# A272223: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A272223, there is no canonical definition to state claims against.
-/

/-! ## A272223.P5443918559226432551

`∑[A272221(n)]`
-/

namespace A272223.P5443918559226432551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272223.P5443918559226432551

/-! ## A272223.P17042428924842440474

`A272221(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272223.P17042428924842440474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272221 n + a (A023443 n).toNat

end

end A272223.P17042428924842440474

/-! ## A272223.P15575010989524804950

`∑[∑[A272224(n)]+1-A272224(n)]`
-/

namespace A272223.P15575010989524804950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272224 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272224 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272223.P15575010989524804950

/-! ## A272223.P5196665485523716789

`A272221(n)+a(log2(A011782(n)))` with `a(0)=1`
-/

namespace A272223.P5196665485523716789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272221 n + a (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A272223.P5196665485523716789

/-!
# A272224: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A272224, there is no canonical definition to state claims against.
-/

/-! ## A272224.P15373272635265465805

`Δ[A272221(n)]`
-/

namespace A272224.P15373272635265465805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272224.P15373272635265465805

/-! ## A272224.P578879061279129505

`A272221(n+1)-A272221(n)`
-/

namespace A272224.P578879061279129505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272221 (n + 1) - A272221 n

end

end A272224.P578879061279129505

/-!
# A272225: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A272225, there is no canonical definition to state claims against.
-/

/-! ## A272225.P10884272180377515767

`A272228(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272225.P10884272180377515767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272228 (n - 1) + a (n - 1)

end

end A272225.P10884272180377515767

/-! ## A272225.P10484157557009120197

`∑[A272228(n-1)/a(A057427(n)-1)]` with `a(0)=1`
-/

namespace A272225.P10484157557009120197
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (A272228 (n - 1) : ℚ) / f1 (A057427 n - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272225.P10484157557009120197

/-! ## A272225.P17573370253414673232

`Δ[A272227(n)]-A272228(n)`
-/

namespace A272225.P17573370253414673232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272228 n

end

end A272225.P17573370253414673232

/-! ## A272225.P4581383639771041516

`A272227(n+1)-(A272228(n)+A272227(n))`
-/

namespace A272225.P4581383639771041516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272227 (n + 1) - (A272228 n + A272227 n)

end

end A272225.P4581383639771041516

/-! ## A272225.P11875687516455825950

`∑[A272228(n)]-A272228(n)-A308778(n²)`
-/

namespace A272225.P11875687516455825950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272228 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272228 n - A308778 (n ^ 2)

end

end A272225.P11875687516455825950

/-!
# A272226: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A272226, there is no canonical definition to state claims against.
-/

/-! ## A272226.P5264337830020323958

`A272225(2^n-1)`
-/

namespace A272226.P5264337830020323958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (2 ^ n - 1)

end

end A272226.P5264337830020323958

/-! ## A272226.P18027284590476681498

`record[A272225(A173787(n))]`
-/

namespace A272226.P18027284590476681498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272226.P18027284590476681498

/-! ## A272226.P3776642937072009295

`record[A272225(A323243(n+1))]`
-/

namespace A272226.P3776642937072009295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (A323243 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272226.P3776642937072009295

/-! ## A272226.P2388003563656543900

`record[A272225(A324865(n+1))]`
-/

namespace A272226.P2388003563656543900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (A324865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272226.P2388003563656543900

/-! ## A272226.P9097992653979281047

`record[A272225(A324867(n+1))]`
-/

namespace A272226.P9097992653979281047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (A324867 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272226.P9097992653979281047

/-!
# A272227: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A272227, there is no canonical definition to state claims against.
-/

/-! ## A272227.P13453496334626978791

`∑[A272225(n)]`
-/

namespace A272227.P13453496334626978791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272227.P13453496334626978791

/-! ## A272227.P11619012906902402098

`A272225(or(n, char[1]))+a(n-1)` with `a(0)=1`
-/

namespace A272227.P11619012906902402098
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272225 (Nat.lor n (if ∃ j, f1 j = n then 1 else 0)) + a (n - 1)

end

end A272227.P11619012906902402098

/-! ## A272227.P7162837714286132097

`A272225(n)+a(A004273(n)-n)` with `a(0)=1`
-/

namespace A272227.P7162837714286132097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272225 n + a (A004273 n - (n : ℤ)).toNat

end

end A272227.P7162837714286132097

/-! ## A272227.P6540830649633163626

`∑[∑[A272228(n)]+1-A272228(n)]`
-/

namespace A272227.P6540830649633163626
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272228 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272228 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272227.P6540830649633163626

/-! ## A272227.P11901275569326340176

`a(n-1)+A272225(n)+A000007(n)` with `a(0)=1`
-/

namespace A272227.P11901275569326340176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272225 n + A000007 n)

end

end A272227.P11901275569326340176

/-! ## A272227.P5591591690773727090

`A272225(n)+a(n-A057427(A354432(n+1)))` with `a(0)=1`
-/

namespace A272227.P5591591690773727090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272225 n + a ((n : ℤ) - A057427 (A354432 (n + 1)).toNat).toNat

end

end A272227.P5591591690773727090

/-!
# A272228: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A272228, there is no canonical definition to state claims against.
-/

/-! ## A272228.P2097992331248127506

`Δ[A272225(n)]`
-/

namespace A272228.P2097992331248127506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272228.P2097992331248127506

/-! ## A272228.P5555862644133287687

`A272225(n+1)-A272225(n)`
-/

namespace A272228.P5555862644133287687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272225 (n + 1) - A272225 n

end

end A272228.P5555862644133287687

/-!
# A272229: Numbers n such that n and 3n+1 have the same number of distinct prime divisors.

The programs for A272229, the canonical program `A272229.P706658860281146822` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272229 has offset 1).

The definition of A272229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2500 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272229.P706658860281146822

`eq[A001221(3*n+4), A001221(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A272229

/-- `eq[A001221(3*n+4), A001221(n+1)]+1` -/
def P706658860281146822.Spec : Prop :=
  ∀ n, (P706658860281146822.a n : ℤ) = A272229 (n + 1)

theorem P706658860281146822.correct : P706658860281146822.Spec := by
  intro n
  simp only [A272229, Nat.add_sub_cancel]

end A272229

/-! ## A272229.P14146469826157238235

`A020725(eq[A001221(3*n+4), A001221(n+1)])`
-/

namespace A272229.P14146469826157238235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A272229.P14146469826157238235

namespace A272229

/-- `A020725(eq[A001221(3*n+4), A001221(n+1)])` -/
def P14146469826157238235.Spec : Prop :=
  ∀ n, P14146469826157238235.a n = A272229 (n + 1)

end A272229

/-! ## A272229.P404199227505479205

`eq[A001221(3*n+1), A001221(A000038(n)+n)]`
-/

namespace A272229.P404199227505479205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272229.P404199227505479205

namespace A272229

/-- `eq[A001221(3*n+1), A001221(A000038(n)+n)]` -/
def P404199227505479205.Spec : Prop :=
  ∀ n, (P404199227505479205.a n : ℤ) = A272229 (n + 1)

end A272229

/-! ## A272229.P17622372180234027672

`eq[A074816(3*n+4), A074816(n+1)]+1`
-/

namespace A272229.P17622372180234027672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074816 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P17622372180234027672

namespace A272229

/-- `eq[A074816(3*n+4), A074816(n+1)]+1` -/
def P17622372180234027672.Spec : Prop :=
  ∀ n, (P17622372180234027672.a n : ℤ) = A272229 (n + 1)

end A272229

/-! ## A272229.P17647189034926377631

`eq[A034444(3*n+4), A034444(n+1)]+1`
-/

namespace A272229.P17647189034926377631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P17647189034926377631

namespace A272229

/-- `eq[A034444(3*n+4), A034444(n+1)]+1` -/
def P17647189034926377631.Spec : Prop :=
  ∀ n, (P17647189034926377631.a n : ℤ) = A272229 (n + 1)

end A272229

/-! ## A272229.P17819731974288581113

`eq[A309307(3*n+4), A309307(n+1)]+1`
-/

namespace A272229.P17819731974288581113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272229.P17819731974288581113

namespace A272229

/-- `eq[A309307(3*n+4), A309307(n+1)]+1` -/
def P17819731974288581113.Spec : Prop :=
  ∀ n, (P17819731974288581113.a n : ℤ) = A272229 (n + 1)

end A272229

/-!
# A272231: a(n) = round(n / pi(n)) = round(n / A000720(n)) where round(x) rounds up.

The programs for A272231, the canonical program `A272231.P5582003079527356277` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272231 has offset 2).

The definition of A272231 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A272231.P5582003079527356277

`round((n+2)/A000720(n+2))`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272231

/-- `round((n+2)/A000720(n+2))` -/
def P5582003079527356277.Spec : Prop :=
  ∀ n, P5582003079527356277.a n = A272231 (n + 2)

theorem P5582003079527356277.correct : P5582003079527356277.Spec := by
  intro n
  simp only [A272231, Nat.add_sub_cancel]

end A272231

/-! ## A272231.P17031280439130465035

`round((n+2)/∑[A010051(n+2)])`
-/

namespace A272231.P17031280439130465035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ))

end

end A272231.P17031280439130465035

namespace A272231

/-- `round((n+2)/∑[A010051(n+2)])` -/
def P17031280439130465035.Spec : Prop :=
  ∀ n, P17031280439130465035.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P9155689183072419797

`round((n+2)/∑[C(2, A000005(n+2))])`
-/

namespace A272231.P9155689183072419797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000005 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A272231.P9155689183072419797

namespace A272231

/-- `round((n+2)/∑[C(2, A000005(n+2))])` -/
def P9155689183072419797.Spec : Prop :=
  ∀ n, P9155689183072419797.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P10395896597105245087

`round((n+2)/∑[char[A006530(n+1)-2]])`
-/

namespace A272231.P10395896597105245087
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ))

end

end A272231.P10395896597105245087

namespace A272231

/-- `round((n+2)/∑[char[A006530(n+1)-2]])` -/
def P10395896597105245087.Spec : Prop :=
  ∀ n, P10395896597105245087.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P6432564425176149427

`round((n+2)/A099802(A080513(n)))`
-/

namespace A272231.P6432564425176149427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A099802 (A080513 n).toNat : ℚ))

end

end A272231.P6432564425176149427

namespace A272231

/-- `round((n+2)/A099802(A080513(n)))` -/
def P6432564425176149427.Spec : Prop :=
  ∀ n, P6432564425176149427.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P8003804135114045816

`round((n+2)/Δ[A046992(n+1)])`
-/

namespace A272231.P8003804135114045816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A272231.P8003804135114045816

namespace A272231

/-- `round((n+2)/Δ[A046992(n+1)])` -/
def P8003804135114045816.Spec : Prop :=
  ∀ n, P8003804135114045816.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P12911874978213168054

`round((n+2)/Δ[A061536(n+1)])`
-/

namespace A272231.P12911874978213168054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (f1 (n + 1) - f1 n : ℚ))

end

end A272231.P12911874978213168054

namespace A272231

/-- `round((n+2)/Δ[A061536(n+1)])` -/
def P12911874978213168054.Spec : Prop :=
  ∀ n, P12911874978213168054.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P3589742229762398461

`round((n+2)/(A033270(n+2)+1))`
-/

namespace A272231.P3589742229762398461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A033270 (n + 2) + 1 : ℚ))

end

end A272231.P3589742229762398461

namespace A272231

/-- `round((n+2)/(A033270(n+2)+1))` -/
def P3589742229762398461.Spec : Prop :=
  ∀ n, P3589742229762398461.a n = A272231 (n + 2)

end A272231

/-! ## A272231.P5523079112620841194

`round((n+2)/A230980(n+2))`
-/

namespace A272231.P5523079112620841194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A230980 (n + 2) : ℚ))

end

end A272231.P5523079112620841194

namespace A272231

/-- `round((n+2)/A230980(n+2))` -/
def P5523079112620841194.Spec : Prop :=
  ∀ n, P5523079112620841194.a n = A272231 (n + 2)

end A272231

/-!
# A272234: Least positive integer c such that (n, c-n, c) is an abc-hit.

The programs for A272234, there is no canonical definition to state claims against.
-/

/-! ## A272234.P11083350953372352471

`A272236(n+1)+1+n`
-/

namespace A272234.P11083350953372352471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272236 (n + 1) + 1 + (n : ℤ)

end

end A272234.P11083350953372352471

/-! ## A272234.P8767435083915097214

`A272239(n+1)^A067454(A071919(n))+1+n`
-/

namespace A272234.P8767435083915097214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272239 (n + 1) : ℚ) ^ (A067454 (A071919 n).toNat : ℤ) + 1 + (n : ℚ)

end

end A272234.P8767435083915097214

/-! ## A272234.P11064238421089274388

`(A272240(n+1)-(n+1))^A067454(A071919(n))-A001478(n+1)`
-/

namespace A272234.P11064238421089274388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272240 (n + 1) - (n + 1 : ℤ) : ℚ) ^ (A067454 (A071919 n).toNat : ℤ) - (A001478 (n + 1) : ℚ)

end

end A272234.P11064238421089274388

/-! ## A272234.P13577733612522440195

`A272236(A077168(n))+n+1`
-/

namespace A272234.P13577733612522440195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272236 (A077168 n).toNat + (n + 1 : ℤ)

end

end A272234.P13577733612522440195

/-!
# A272235: In base 2, number of steps before n1(i) = n2(i) when n1(i) = n1(i-1) + digsum(n2(i-1)), n2(i) = n2(i-1) + digsum(n1(i-1)) and n1(1) = 2^(n-1), n2(1) = 0.

The programs for A272235, there is no canonical definition to state claims against.
-/

/-! ## A272235.P4589756831585921825

`A351976(A000849(n))+2*n`
-/

namespace A272235.P4589756831585921825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351976 (A000849 n).toNat + (2 * n : ℤ)

end

end A272235.P4589756831585921825

/-!
# A272236: Least positive integer b such that (n, b, n+b) is an abc-hit.

The programs for A272236, there is no canonical definition to state claims against.
-/

/-! ## A272236.P679588827792499153

`A272234(n+1)-(n+1)`
-/

namespace A272236.P679588827792499153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272234 (n + 1) - (n + 1 : ℤ)

end

end A272236.P679588827792499153

/-! ## A272236.P9945682964436482659

`A272234(abs(1-4/2-n))-n-1`
-/

namespace A272236.P9945682964436482659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272234 (SequenceMachineLib.roundAway |1 - (4 : ℚ) / 2 - (n : ℚ)|).toNat - (n : ℤ) - 1

end

end A272236.P9945682964436482659

/-! ## A272236.P9431511544712554699

`abs(A272234(n+1)+A001478(n+1))`
-/

namespace A272236.P9431511544712554699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272234 (n + 1) + A001478 (n + 1)|

end

end A272236.P9431511544712554699

/-! ## A272236.P7412755856629507727

`(A272239(n+1)+A272234(n+1))%A272240(n+1)`
-/

namespace A272236.P7412755856629507727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272239 (n + 1) + A272234 (n + 1)) (A272240 (n + 1))

end

end A272236.P7412755856629507727

/-! ## A272236.P8734759126173454526

`gcd(A272239(n+1), A276306(A304409(n+2)))`
-/

namespace A272236.P8734759126173454526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A272239 (n + 1)) (A276306 (A304409 (n + 2)).toNat)

end

end A272236.P8734759126173454526

/-!
# A272239: Least positive integer b such that b > n and (n, b, n+b) is an abc-hit.

The programs for A272239, there is no canonical definition to state claims against.
-/

/-! ## A272239.P11164552683981259167

`A272240(n+1)-(n+1)`
-/

namespace A272239.P11164552683981259167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272240 (n + 1) - (n + 1 : ℤ)

end

end A272239.P11164552683981259167

/-! ## A272239.P8619981784087849704

`abs(A272240(n+1)+A001478(n+1))`
-/

namespace A272239.P8619981784087849704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A272240 (n + 1) + A001478 (n + 1)|

end

end A272239.P8619981784087849704

/-! ## A272239.P15774637602879836516

`A272240(n+1)+A001478(n+2)+1`
-/

namespace A272239.P15774637602879836516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272240 (n + 1) + A001478 (n + 2) + 1

end

end A272239.P15774637602879836516

/-!
# A272240: Least positive integer c such that (n, c-n, c) is an abc-hit and n is the least number in the triple.

The programs for A272240, there is no canonical definition to state claims against.
-/

/-! ## A272240.P13055110851426403759

`A272239(n+1)+1+n`
-/

namespace A272240.P13055110851426403759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272239 (n + 1) + 1 + (n : ℤ)

end

end A272240.P13055110851426403759

/-! ## A272240.P11277040036559484247

`A272239(A077168(n))+n+1`
-/

namespace A272240.P11277040036559484247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272239 (A077168 n).toNat + (n + 1 : ℤ)

end

end A272240.P11277040036559484247

/-!
# A272243: a(n) is the smallest number greater than a(n-1) that is expressible as the sum of two positive integers x + y = a(n), so that (x, y, a(n)) is an abc-hit, in more ways than a(n-1).

The programs for A272243, there is no canonical definition to state claims against.
-/

/-! ## A272243.P864866378927663177

`A272242(A097029(n+1))`
-/

namespace A272243.P864866378927663177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272242 (A097029 (n + 1)).toNat

end

end A272243.P864866378927663177

/-! ## A272243.P6606912127112082640

`A273284(A107689(n+1)+n)²`
-/

namespace A272243.P6606912127112082640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273284 (A107689 (n + 1) + (n : ℤ)).toNat ^ 2

end

end A272243.P6606912127112082640

/-!
# A272244: a(n) = Product_{k=0..n} (n^2 + k^2).

The programs for A272244, there is no canonical definition to state claims against.
-/

/-! ## A272244.P40121039586468070

`∏{digits}[A038378(n+1), A057147(n)+#²]`
-/

namespace A272244.P40121039586468070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A057147 n + (x ^ 2 : ℤ)).prod

end

end A272244.P40121039586468070

/-! ## A272244.P10552382177240427547

`∏{digits}[A038378(n+1), A118881(n)+#²]`
-/

namespace A272244.P10552382177240427547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038378 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A118881 n + (x ^ 2 : ℤ)).prod

end

end A272244.P10552382177240427547

/-!
# A272245: Cubes of the form prime(n)+n.

The programs for A272245, there is no canonical definition to state claims against.
-/

/-! ## A272245.P5114590299073371197

`A014688(A076147(n+1))`
-/

namespace A272245.P5114590299073371197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (A076147 (n + 1)).toNat

end

end A272245.P5114590299073371197

/-! ## A272245.P4032387930763256395

`∩[A107606(n+1), n^3]`
-/

namespace A272245.P4032387930763256395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A272245.P4032387930763256395

/-! ## A272245.P1263190594529097072

`∩[A000578(n), A107606(n+1)]`
-/

namespace A272245.P1263190594529097072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272245.P1263190594529097072

/-! ## A272245.P12511119854229130714

`∩[A184628(n+1), A107606(n+1)]`
-/

namespace A272245.P12511119854229130714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272245.P12511119854229130714

/-! ## A272245.P9205410538336331881

`∩[n*A000290(n), A107606(n+1)]`
-/

namespace A272245.P9205410538336331881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107606 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A272245.P9205410538336331881

/-!
# A272249: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A272249, there is no canonical definition to state claims against.
-/

/-! ## A272249.P17074344239939622102

`A272194(2^n-1)`
-/

namespace A272249.P17074344239939622102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (2 ^ n - 1)

end

end A272249.P17074344239939622102

/-! ## A272249.P12520312148940189266

`record[A272194(A091264(n))]`
-/

namespace A272249.P12520312148940189266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272249.P12520312148940189266

/-! ## A272249.P3686430523356512144

`record[A272194(A218616(n))]`
-/

namespace A272249.P3686430523356512144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272249.P3686430523356512144

/-! ## A272249.P13039263308942513726

`record[A272194(A232751(n))]`
-/

namespace A272249.P13039263308942513726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272249.P13039263308942513726

/-! ## A272249.P4622703850514455138

`record[A272194(A255565(n))]`
-/

namespace A272249.P4622703850514455138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (A255565 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272249.P4622703850514455138

/-!
# A272250: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A272250, there is no canonical definition to state claims against.
-/

/-! ## A272250.P3312853167472101662

`∑[A272194(n)]`
-/

namespace A272250.P3312853167472101662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272250.P3312853167472101662

/-! ## A272250.P15212136632814445431

`∑[∑[A272251(n)]+1-A272251(n)]`
-/

namespace A272250.P15212136632814445431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272251 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272251 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272250.P15212136632814445431

/-! ## A272250.P13151265614466860679

`A272194(A038572(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A272250.P13151265614466860679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272194 (A038572 (2 * n)).toNat + a (n - 1)

end

end A272250.P13151265614466860679

/-! ## A272250.P15017552900591987086

`A272194(A004526(n+n))+a(n-1)` with `a(0)=1`
-/

namespace A272250.P15017552900591987086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272194 (A004526 (n + n)).toNat + a (n - 1)

end

end A272250.P15017552900591987086

/-! ## A272250.P15863146817221532005

`A272194(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272250.P15863146817221532005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272194 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A272250.P15863146817221532005

/-! ## A272250.P17856355153946450783

`A272453(n)+A272748(n)-A272736(n)`
-/

namespace A272250.P17856355153946450783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272453 n + (A272748 n - A272736 n)

end

end A272250.P17856355153946450783

/-! ## A272250.P3615177349560181262

`A272700(n)+A272703(n)-A272736(n)`
-/

namespace A272250.P3615177349560181262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272700 n + (A272703 n - A272736 n)

end

end A272250.P3615177349560181262

/-! ## A272250.P5761164077855004158

`∑[A181385(A016825(n))-A272734(n)]`
-/

namespace A272250.P5761164077855004158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272250.P5761164077855004158

/-! ## A272250.P15431393079009180532

`∑[A181385(A016825(n))]-A272736(n)`
-/

namespace A272250.P15431393079009180532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272736 n

end

end A272250.P15431393079009180532

/-! ## A272250.P5037088468213107018

`∑[A008740(A008458(n))-A272734(n)]`
-/

namespace A272250.P5037088468213107018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272250.P5037088468213107018

/-! ## A272250.P9147929991562409316

`∑[A008740(A008458(n))]-A272736(n)`
-/

namespace A272250.P9147929991562409316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A272736 n

end

end A272250.P9147929991562409316

/-! ## A272250.P16414212918840551089

`A272194(n)+a(A109042(A000124(n)))` with `a(0)=1`
-/

namespace A272250.P16414212918840551089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272194 n + a (A109042 (A000124 n).toNat).toNat

end

end A272250.P16414212918840551089

/-!
# A272251: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A272251, there is no canonical definition to state claims against.
-/

/-! ## A272251.P12314961631654220718

`Δ[A272194(n)]`
-/

namespace A272251.P12314961631654220718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272251.P12314961631654220718

/-! ## A272251.P5954885114298499639

`A272194(n+1)-A272194(n)`
-/

namespace A272251.P5954885114298499639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272194 (n + 1) - A272194 n

end

end A272251.P5954885114298499639

/-! ## A272251.P14048507540775881073

`Δ[A181385(A016825(n))-A272734(n)]`
-/

namespace A272251.P14048507540775881073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272251.P14048507540775881073

/-! ## A272251.P4618467799728237363

`Δ[A008740(A008458(n))-A272734(n)]`
-/

namespace A272251.P4618467799728237363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272251.P4618467799728237363

/-! ## A272251.P15554466169720580667

`Δ[A008740(A008458(n))]-A272737(n)`
-/

namespace A272251.P15554466169720580667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272737 n

end

end A272251.P15554466169720580667

/-! ## A272251.P12559438641026961166

`Δ[A022144(A000217(n))-A272734(n)]`
-/

namespace A272251.P12559438641026961166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat - A272734 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272251.P12559438641026961166

/-! ## A272251.P8252911526299242984

`Δ[A022144(A000217(n))]-A272737(n)`
-/

namespace A272251.P8252911526299242984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022144 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272737 n

end

end A272251.P8252911526299242984

/-!
# A272252: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 449", based on the 5-celled von Neumann neighborhood.

The programs for A272252, there is no canonical definition to state claims against.
-/

/-! ## A272252.P17945663086730905620

`A272255(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272252.P17945663086730905620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272255 (n - 1) + a (n - 1)

end

end A272252.P17945663086730905620

/-! ## A272252.P17106671825337612230

`Δ[A272254(n)]-A272255(n)`
-/

namespace A272252.P17106671825337612230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272254 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272255 n

end

end A272252.P17106671825337612230

/-! ## A272252.P9808823210608886900

`A272254(n+1)-(A272255(n)+A272254(n))`
-/

namespace A272252.P9808823210608886900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272254 (n + 1) - (A272255 n + A272254 n)

end

end A272252.P9808823210608886900

/-!
# A272253: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 449", based on the 5-celled von Neumann neighborhood.

The programs for A272253, there is no canonical definition to state claims against.
-/

/-! ## A272253.P5700209903753683312

`A272252(2^n-1)`
-/

namespace A272253.P5700209903753683312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (2 ^ n - 1)

end

end A272253.P5700209903753683312

/-! ## A272253.P119045030691793808

`record[A272252(A038573(n))]`
-/

namespace A272253.P119045030691793808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (A038573 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272253.P119045030691793808

/-! ## A272253.P13844408205863006847

`record[A272252(A173787(n))]`
-/

namespace A272253.P13844408205863006847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272253.P13844408205863006847

/-! ## A272253.P5672044314281055597

`record[A272252(A218616(n))]`
-/

namespace A272253.P5672044314281055597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272253.P5672044314281055597

/-! ## A272253.P995738522268279488

`record[A272252(A232751(n))]`
-/

namespace A272253.P995738522268279488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272253.P995738522268279488

/-!
# A272254: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 449", based on the 5-celled von Neumann neighborhood.

The programs for A272254, there is no canonical definition to state claims against.
-/

/-! ## A272254.P4561369285171944679

`∑[A272252(n)]`
-/

namespace A272254.P4561369285171944679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272254.P4561369285171944679

/-! ## A272254.P3751687094244727677

`A272252(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272254.P3751687094244727677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272252 n + a (A023443 n).toNat

end

end A272254.P3751687094244727677

/-! ## A272254.P13581082796027044677

`a(n-1)+A272252(n)+A000007(n)` with `a(0)=1`
-/

namespace A272254.P13581082796027044677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272252 n + A000007 n)

end

end A272254.P13581082796027044677

/-! ## A272254.P4100340047329952058

`a(n-1)+A001221(A001316(n))*A272252(n)` with `a(0)=1`
-/

namespace A272254.P4100340047329952058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A001221 (A001316 n).toNat * A272252 n

end

end A272254.P4100340047329952058

/-! ## A272254.P16449081488061435370

`∑[A272255(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272254.P16449081488061435370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272255 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272254.P16449081488061435370

/-!
# A272255: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 449", based on the 5-celled von Neumann neighborhood.

The programs for A272255, there is no canonical definition to state claims against.
-/

/-! ## A272255.P7485445481345363014

`Δ[A272252(n)]`
-/

namespace A272255.P7485445481345363014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272255.P7485445481345363014

/-! ## A272255.P7145038943510111964

`A272252(n+1)-A272252(n)`
-/

namespace A272255.P7145038943510111964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (n + 1) - A272252 n

end

end A272255.P7145038943510111964

/-! ## A272255.P2425453238446083763

`A272252(C(n+1, n))+A001478(A272252(n))`
-/

namespace A272255.P2425453238446083763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (Nat.choose (n + 1) n) + A001478 (A272252 n).toNat

end

end A272255.P2425453238446083763

/-! ## A272255.P16696478432100746025

`A272252(-xor(n, -1))+A001478(A272252(n))`
-/

namespace A272255.P16696478432100746025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (-Int.xor (n : ℤ) (-1)).toNat + A001478 (A272252 n).toNat

end

end A272255.P16696478432100746025

/-! ## A272255.P1575981963467366361

`A272252(A000027(n+1))+A001478(A272252(n))`
-/

namespace A272255.P1575981963467366361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272252 (A000027 (n + 1)).toNat + A001478 (A272252 n).toNat

end

end A272255.P1575981963467366361

/-!
# A272256: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A272256, there is no canonical definition to state claims against.
-/

/-! ## A272256.P11305406467357088074

`∑[A270844(abs(1-n))]-3`
-/

namespace A272256.P11305406467357088074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270844 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A272256.P11305406467357088074

/-! ## A272256.P12891005737337335365

`A270844(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272256.P12891005737337335365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270844 (n - 1) + a (n - 1)

end

end A272256.P12891005737337335365

/-! ## A272256.P17327237709164113296

`Δ[A272258(n)]-A270844(n)`
-/

namespace A272256.P17327237709164113296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A270844 n

end

end A272256.P17327237709164113296

/-! ## A272256.P16620993996909349250

`A272258(n+1)-(A272258(n)+A270844(n))`
-/

namespace A272256.P16620993996909349250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272258 (n + 1) - (A272258 n + A270844 n)

end

end A272256.P16620993996909349250

/-! ## A272256.P5658713284693142528

`Δ[A272258(n)]+A270844(n)*A280193(2*n+1)`
-/

namespace A272256.P5658713284693142528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272258 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A270844 n * A280193 (2 * n + 1)

end

end A272256.P5658713284693142528

/-! ## A272256.P17251942436311418683

`∑[A270844(n-a(A117980(n²)))]` with `a(0)=1`
-/

namespace A272256.P17251942436311418683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A270844 ((n : ℤ) - f1 (A117980 (n ^ 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272256.P17251942436311418683

/-!
# A272257: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A272257, there is no canonical definition to state claims against.
-/

/-! ## A272257.P10787750975450485468

`A272256(2^n-1)`
-/

namespace A272257.P10787750975450485468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (2 ^ n - 1)

end

end A272257.P10787750975450485468

/-! ## A272257.P11140610872172673584

`record[A272256(A091264(n))]`
-/

namespace A272257.P11140610872172673584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272257.P11140610872172673584

/-! ## A272257.P17734399995576392401

`record[A272256(A173787(n))]`
-/

namespace A272257.P17734399995576392401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272257.P17734399995576392401

/-! ## A272257.P17565178765515595357

`record[A272256(A218616(n))]`
-/

namespace A272257.P17565178765515595357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272257.P17565178765515595357

/-! ## A272257.P16392623079063673194

`record[A272256(A232751(n))]`
-/

namespace A272257.P16392623079063673194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272257.P16392623079063673194

/-!
# A272258: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A272258, there is no canonical definition to state claims against.
-/

/-! ## A272258.P937315624799552089

`∑[A272256(n)]`
-/

namespace A272258.P937315624799552089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272256 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272258.P937315624799552089

/-! ## A272258.P15624949599030305879

`A272256(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272258.P15624949599030305879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272256 n + a (A023443 n).toNat

end

end A272258.P15624949599030305879

/-! ## A272258.P778147804520133788

`A272256(n)+a(n-1)-A000038(n)` with `a(0)=1`
-/

namespace A272258.P778147804520133788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272256 n + (a (n - 1) - A000038 n)

end

end A272258.P778147804520133788

/-! ## A272258.P6074258424679837279

`a(n-1)+A272256(n)%A017449(n)²` with `a(0)=1`
-/

namespace A272258.P6074258424679837279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272256 n) (A017449 n ^ 2)

end

end A272258.P6074258424679837279

/-! ## A272258.P950369954026631499

`∑[∑[A270844(abs(1-n))]-3]`
-/

namespace A272258.P950369954026631499
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270844 |1 - (n : ℤ)|.toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272258.P950369954026631499

/-!
# A272259: Irregular triangle read by rows: Row n >= 32 gives the smallest square loop, i.e., lexicographically earliest circular permutation of length n such that any two adjacent numbers sum to a perfect square.

The programs for A272259, there is no canonical definition to state claims against.
-/

/-! ## A272259.P17267133723573774753

`A112663(n)/A329314(A354777(2*(n+2)))`
-/

namespace A272259.P17267133723573774753
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112663 n : ℚ) / (A329314 (A354777 (2 * (n + 2))).toNat : ℚ)

end

end A272259.P17267133723573774753

/-! ## A272259.P8520492785122983662

`A112663(n)%A040462(A348614(n+1))`
-/

namespace A272259.P8520492785122983662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112663 n) (A040462 (A348614 (n + 1)).toNat)

end

end A272259.P8520492785122983662

/-! ## A272259.P8817698825144094488

`lcm(A112663(n), A123271(n+2))`
-/

namespace A272259.P8817698825144094488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A112663 n) (A123271 (n + 2))

end

end A272259.P8817698825144094488

/-! ## A272259.P9472851894270610461

`A089723(A271995(n+2))*A112663(n)`
-/

namespace A272259.P9472851894270610461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089723 (A271995 (n + 2)).toNat * A112663 n

end

end A272259.P9472851894270610461

/-! ## A272259.P7100978185928899263

`A112690(A112714(3*n+4))+A112663(n)`
-/

namespace A272259.P7100978185928899263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112690 (A112714 (3 * n + 4)).toNat + A112663 n

end

end A272259.P7100978185928899263

/-!
# A272260: Numbers that cause an infinite loop in Conway's PRIMEGAME.

The programs for A272260, there is no canonical definition to state claims against.
-/

/-! ## A272260.P13885833051792346008

`lt[A208062(A265668(n+1)), A249279(n)]`
-/

namespace A272260.P13885833051792346008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208062 (A265668 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249279 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272260.P13885833051792346008

/-! ## A272260.P14780640069691531012

`eq[A001221(A079901(n)), A284289(n)]`
-/

namespace A272260.P14780640069691531012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A079901 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272260.P14780640069691531012

/-! ## A272260.P9098499808081204820

`lt[A358380(A158253(n+1)), A276938(n+1)]`
-/

namespace A272260.P9098499808081204820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358380 (A158253 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272260.P9098499808081204820

/-!
# A272261: Number of one-to-one functions f from [n] to [2n] where f(x) may not be equal to x or to 2n+1-x.

The programs for A272261, there is no canonical definition to state claims against.
-/

/-! ## A272261.P3485157652896089207

`abs(A000806(n))*2^n`
-/

namespace A272261.P3485157652896089207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000806 n| * (2 ^ n : ℤ)

end

end A272261.P3485157652896089207

/-! ## A272261.P4301899202879742985

`2^n*A278990(n)`
-/

namespace A272261.P4301899202879742985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A278990 n

end

end A272261.P4301899202879742985

/-! ## A272261.P15024609341077723717

`2^n*A057077(2*n)*A000806(n)`
-/

namespace A272261.P15024609341077723717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A057077 (2 * n) * A000806 n

end

end A272261.P15024609341077723717

/-! ## A272261.P8590687186679810388

`A000079(n)*A079267(A161680(n+1))`
-/

namespace A272261.P8590687186679810388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A079267 (A161680 (n + 1)).toNat

end

end A272261.P8590687186679810388

/-! ## A272261.P15057300663017013105

`record[A131575(n)]*A079267(A161680(n+1))`
-/

namespace A272261.P15057300663017013105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A079267 (A161680 (n + 1)).toNat

end

end A272261.P15057300663017013105

/-! ## A272261.P4056603453483860855

`A077957(2*n)*A079267(A161680(n+1))`
-/

namespace A272261.P4056603453483860855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * n) * A079267 (A161680 (n + 1)).toNat

end

end A272261.P4056603453483860855

/-! ## A272261.P5290311026937510668

`A079267(A161680(n+1))*A131575(2*n+1)`
-/

namespace A272261.P5290311026937510668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079267 (A161680 (n + 1)).toNat * A131575 (2 * n + 1)

end

end A272261.P5290311026937510668

/-! ## A272261.P16810948808090981665

`A101682(n+1)/2`
-/

namespace A272261.P16810948808090981665
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101682 (n + 1) : ℚ) / 2

end

end A272261.P16810948808090981665

/-!
# A272263: a(n) = numerator of A000032(n) - 1/2^n.

The programs for A272263, the canonical program `A272263.P14829198746395316325` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272263 has offset 0).

The definition of A272263 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272263.P14829198746395316325

`A087131(n)-1`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A272263

/-- `A087131(n)-1` -/
def P14829198746395316325.Spec : Prop :=
  ∀ n, P14829198746395316325.a n = A272263 n

theorem P14829198746395316325.correct : P14829198746395316325.Spec := by
  intro n
  simp only [A272263]

end A272263

/-! ## A272263.P17606569033534430669

`3*a(n-1)+2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=11`
-/

namespace A272263.P17606569033534430669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 11] fun n a =>
  3 * a (n - 1) + 2 * a (n - 2) - 4 * a (n - 3)

end

end A272263.P17606569033534430669

namespace A272263

/-- `3*a(n-1)+2*a(n-2)-4*a(n-3)` -/
def P17606569033534430669.Spec : Prop :=
  ∀ n, P17606569033534430669.a n = A272263 n

end A272263

/-! ## A272263.P16436964541711494194

`ogf((1-2x+6x^2)/(1-3x-2x^2+4x^3))`
-/

namespace A272263.P16436964541711494194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 6] [1, -3, -2, 4] n

end

end A272263.P16436964541711494194

namespace A272263

/-- `ogf((1-2x+6x^2)/(1-3x-2x^2+4x^3))` -/
def P16436964541711494194.Spec : Prop :=
  ∀ n, P16436964541711494194.a n = A272263 n

end A272263

/-! ## A272263.P5673569055821824684

`4*(a(n-1)+2*a(n-2))/2+5` with `a(0)=1, a(1)=1`
-/

namespace A272263.P5673569055821824684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  4 * ((a (n - 1) + 2 * a (n - 2)) / 2) + 5

end

end A272263.P5673569055821824684

namespace A272263

/-- `4*(a(n-1)+2*a(n-2))/2+5` -/
def P5673569055821824684.Spec : Prop :=
  ∀ n, P5673569055821824684.a n = (A272263 n : ℚ)

end A272263

/-! ## A272263.P2698574283522015343

`2*A084057(n)-1`
-/

namespace A272263.P2698574283522015343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A084057 n - 1

end

end A272263.P2698574283522015343

namespace A272263

/-- `2*A084057(n)-1` -/
def P2698574283522015343.Spec : Prop :=
  ∀ n, P2698574283522015343.a n = A272263 n

end A272263

/-! ## A272263.P2503036449589567148

`5*A014334(n)+1`
-/

namespace A272263.P2503036449589567148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A014334 n + 1

end

end A272263.P2503036449589567148

namespace A272263

/-- `5*A014334(n)+1` -/
def P2503036449589567148.Spec : Prop :=
  ∀ n, P2503036449589567148.a n = A272263 n

end A272263

/-! ## A272263.P13902486624462524282

`2*A203579(n)-3`
-/

namespace A272263.P13902486624462524282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203579 n - 3

end

end A272263.P13902486624462524282

namespace A272263

/-- `2*A203579(n)-3` -/
def P13902486624462524282.Spec : Prop :=
  ∀ n, P13902486624462524282.a n = A272263 n

end A272263

/-! ## A272263.P6826676964630482857

`10*A014335(n)+1`
-/

namespace A272263.P6826676964630482857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A014335 n + 1

end

end A272263.P6826676964630482857

namespace A272263

/-- `10*A014335(n)+1` -/
def P6826676964630482857.Spec : Prop :=
  ∀ n, P6826676964630482857.a n = A272263 n

end A272263

/-! ## A272263.P5699956307393746040

`2*Δ[A085449(n)]-1`
-/

namespace A272263.P5699956307393746040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085449 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n) - 1

end

end A272263.P5699956307393746040

namespace A272263

/-- `2*Δ[A085449(n)]-1` -/
def P5699956307393746040.Spec : Prop :=
  ∀ n, P5699956307393746040.a n = A272263 n

end A272263

/-! ## A272263.P8590325528019052120

`2^n*A000032(n)-1`
-/

namespace A272263.P8590325528019052120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000032 n - 1

end

end A272263.P8590325528019052120

namespace A272263

/-- `2^n*A000032(n)-1` -/
def P8590325528019052120.Spec : Prop :=
  ∀ n, P8590325528019052120.a n = A272263 n

end A272263

/-! ## A272263.P6654587737511666970

`2^n*Δ[A001610(n)]-1`
-/

namespace A272263.P6654587737511666970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (f1 (n + 1) - f1 n) - 1

end

end A272263.P6654587737511666970

namespace A272263

/-- `2^n*Δ[A001610(n)]-1` -/
def P6654587737511666970.Spec : Prop :=
  ∀ n, P6654587737511666970.a n = A272263 n

end A272263

/-! ## A272263.P4087644679621646935

`abs(1-Δ[A000032(n+1)]/2^-n)`
-/

namespace A272263.P4087644679621646935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)|

end

end A272263.P4087644679621646935

namespace A272263

/-- `abs(1-Δ[A000032(n+1)]/2^-n)` -/
def P4087644679621646935.Spec : Prop :=
  ∀ n, P4087644679621646935.a n = (A272263 n : ℚ)

end A272263

/-! ## A272263.P17555695399678372685

`A063782(n)+A319196(n)-1`
-/

namespace A272263.P17555695399678372685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063782 n + (A319196 n - 1)

end

end A272263.P17555695399678372685

namespace A272263

/-- `A063782(n)+A319196(n)-1` -/
def P17555695399678372685.Spec : Prop :=
  ∀ n, P17555695399678372685.a n = A272263 n

end A272263

/-! ## A272263.P10593803398000820194

`A000032(n)*A000079(n)-1`
-/

namespace A272263.P10593803398000820194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000079 n - 1

end

end A272263.P10593803398000820194

namespace A272263

/-- `A000032(n)*A000079(n)-1` -/
def P10593803398000820194.Spec : Prop :=
  ∀ n, P10593803398000820194.a n = A272263 n

end A272263

/-! ## A272263.P17340109450316989910

`A000032(n)*∑[A011782(n)]-1`
-/

namespace A272263.P17340109450316989910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A272263.P17340109450316989910

namespace A272263

/-- `A000032(n)*∑[A011782(n)]-1` -/
def P17340109450316989910.Spec : Prop :=
  ∀ n, P17340109450316989910.a n = A272263 n

end A272263

/-! ## A272263.P1531307386887641699

`A000032(n)*Δ[A000051(n)]-1`
-/

namespace A272263.P1531307386887641699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n) - 1

end

end A272263.P1531307386887641699

namespace A272263

/-- `A000032(n)*Δ[A000051(n)]-1` -/
def P1531307386887641699.Spec : Prop :=
  ∀ n, P1531307386887641699.a n = A272263 n

end A272263

/-! ## A272263.P1862790060813887681

`A000032(n)*Δ[A000225(n)]-1`
-/

namespace A272263.P1862790060813887681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n) - 1

end

end A272263.P1862790060813887681

namespace A272263

/-- `A000032(n)*Δ[A000225(n)]-1` -/
def P1862790060813887681.Spec : Prop :=
  ∀ n, P1862790060813887681.a n = A272263 n

end A272263

/-! ## A272263.P12631264733830210839

`A000032(n)*Δ[A168616(n)]-1`
-/

namespace A272263.P12631264733830210839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n) - 1

end

end A272263.P12631264733830210839

namespace A272263

/-- `A000032(n)*Δ[A168616(n)]-1` -/
def P12631264733830210839.Spec : Prop :=
  ∀ n, P12631264733830210839.a n = A272263 n

end A272263

/-! ## A272263.P11678531316495978029

`A000032(n)*A011782(n+1)-1`
-/

namespace A272263.P11678531316495978029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A011782 (n + 1) - 1

end

end A272263.P11678531316495978029

namespace A272263

/-- `A000032(n)*A011782(n+1)-1` -/
def P11678531316495978029.Spec : Prop :=
  ∀ n, P11678531316495978029.a n = A272263 n

end A272263

/-! ## A272263.P12986935647909738184

`A000032(n)*A131577(n+1)-1`
-/

namespace A272263.P12986935647909738184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A131577 (n + 1) - 1

end

end A272263.P12986935647909738184

namespace A272263

/-- `A000032(n)*A131577(n+1)-1` -/
def P12986935647909738184.Spec : Prop :=
  ∀ n, P12986935647909738184.a n = A272263 n

end A272263

/-!
# A272265: Number of n-step tri-directional self-avoiding walks on the hexagonal lattice.

The programs for A272265, there is no canonical definition to state claims against.
-/

/-! ## A272265.P2619007038307213733

`A038698(A000698(n))+A001792(n)`
-/

namespace A272265.P2619007038307213733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038698 (A000698 n).toNat + A001792 n

end

end A272265.P2619007038307213733

/-! ## A272265.P17514376774271058766

`A085831(n)+A023416(A234568(n))`
-/

namespace A272265.P17514376774271058766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085831 n + A023416 (A234568 n).toNat

end

end A272265.P17514376774271058766

/-!
# A272266: The union of squares (A000290) and 10-gonal numbers (A001107).

The programs for A272266, the canonical program `A272266.P12624244708684603` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272266 has offset 1).

The definition of A272266 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A272266.P12624244708684603

`a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=10, a(4)=16, a(5)=25, a(6)=27`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272266

/-- `a(n-1)+2*a(n-3)-2*a(n-4)-a(n-6)+a(n-7)` -/
def P12624244708684603.Spec : Prop :=
  ∀ n, P12624244708684603.a n = A272266 (n + 1)

theorem P12624244708684603.correct : P12624244708684603.Spec := by
  intro n
  simp only [A272266, Nat.add_sub_cancel]

end A272266

/-! ## A272266.P3110114846544343140

`∪[(2*n+1)²+n, (n+1)²]`
-/

namespace A272266.P3110114846544343140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2 + n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A272266.P3110114846544343140

namespace A272266

/-- `∪[(2*n+1)²+n, (n+1)²]` -/
def P3110114846544343140.Spec : Prop :=
  ∀ n, (P3110114846544343140.a n : ℤ) = A272266 (n + 1)

end A272266

/-! ## A272266.P13064617816303072845

`A189889(A042968(n+2)+1)`
-/

namespace A272266.P13064617816303072845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189889 (A042968 (n + 2) + 1).toNat

end

end A272266.P13064617816303072845

namespace A272266

/-- `A189889(A042968(n+2)+1)` -/
def P13064617816303072845.Spec : Prop :=
  ∀ n, P13064617816303072845.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P14315693553927539959

`A189889(A042965(n+1)+3)`
-/

namespace A272266.P14315693553927539959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189889 (A042965 (n + 1) + 3).toNat

end

end A272266.P14315693553927539959

namespace A272266

/-- `A189889(A042965(n+1)+3)` -/
def P14315693553927539959.Spec : Prop :=
  ∀ n, P14315693553927539959.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P12785491042486945863

`record[A003602(n+1)*A029579(n)]`
-/

namespace A272266.P12785491042486945863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) * A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P12785491042486945863

namespace A272266

/-- `record[A003602(n+1)*A029579(n)]` -/
def P12785491042486945863.Spec : Prop :=
  ∀ n, P12785491042486945863.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P14380468224724078671

`record[gcd(A035444(n), A189889(n+1))]`
-/

namespace A272266.P14380468224724078671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A035444 n) (A189889 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P14380468224724078671

namespace A272266

/-- `record[gcd(A035444(n), A189889(n+1))]` -/
def P14380468224724078671.Spec : Prop :=
  ∀ n, (P14380468224724078671.a n : ℤ) = A272266 (n + 1)

end A272266

/-! ## A272266.P13510304950216851100

`record[A189889(n+2)-A035444(n+1)]`
-/

namespace A272266.P13510304950216851100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189889 (n + 2) - A035444 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P13510304950216851100

namespace A272266

/-- `record[A189889(n+2)-A035444(n+1)]` -/
def P13510304950216851100.Spec : Prop :=
  ∀ n, P13510304950216851100.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P17995376729761796663

`record[A029579(n)*A029579(A153733(n))]`
-/

namespace A272266.P17995376729761796663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n * A029579 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P17995376729761796663

namespace A272266

/-- `record[A029579(n)*A029579(A153733(n))]` -/
def P17995376729761796663.Spec : Prop :=
  ∀ n, P17995376729761796663.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P4760139395578381373

`record[A001057(A000265(n+1))*A029579(n)]`
-/

namespace A272266.P4760139395578381373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A000265 (n + 1)).toNat * A029579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P4760139395578381373

namespace A272266

/-- `record[A001057(A000265(n+1))*A029579(n)]` -/
def P4760139395578381373.Spec : Prop :=
  ∀ n, P4760139395578381373.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P289978788761013044

`A361202(A047619(n+2))`
-/

namespace A272266.P289978788761013044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361202 (A047619 (n + 2)).toNat

end

end A272266.P289978788761013044

namespace A272266

/-- `A361202(A047619(n+2))` -/
def P289978788761013044.Spec : Prop :=
  ∀ n, P289978788761013044.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P6492779514236533632

`record[A001651(A338797(n+1))-n]`
-/

namespace A272266.P6492779514236533632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A338797 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P6492779514236533632

namespace A272266

/-- `record[A001651(A338797(n+1))-n]` -/
def P6492779514236533632.Spec : Prop :=
  ∀ n, P6492779514236533632.a n = A272266 (n + 1)

end A272266

/-! ## A272266.P12225355621194206521

`record[A007494(A051537(n+1))-(n+1)]`
-/

namespace A272266.P12225355621194206521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A051537 (n + 1)).toNat - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272266.P12225355621194206521

namespace A272266

/-- `record[A007494(A051537(n+1))-(n+1)]` -/
def P12225355621194206521.Spec : Prop :=
  ∀ n, P12225355621194206521.a n = A272266 (n + 1)

end A272266

/-!
# A272267: The union of centered square numbers (A001844) and centered 9-gonal numbers (A060544).

The programs for A272267, the canonical program `A272267.P17265715903946915541` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272267 has offset 1).

The definition of A272267 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A272267.P17265715903946915541

`∪[∑[4*n], ∑[9*n]]+1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272267

/-- `∪[∑[4*n], ∑[9*n]]+1` -/
def P17265715903946915541.Spec : Prop :=
  ∀ n, (P17265715903946915541.a n : ℤ) = A272267 (n + 1)

theorem P17265715903946915541.correct : P17265715903946915541.Spec := by
  intro n
  simp only [A272267, Nat.add_sub_cancel]

end A272267

/-! ## A272267.P12510191571122699088

`∪[C(3*n+2, 2), A001844(n)]`
-/

namespace A272267.P12510191571122699088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n + 2) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P12510191571122699088

namespace A272267

/-- `∪[C(3*n+2, 2), A001844(n)]` -/
def P12510191571122699088.Spec : Prop :=
  ∀ n, (P12510191571122699088.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P9974008240315673227

`∪[A001844(n), Δ[A004188(n)]]`
-/

namespace A272267.P9974008240315673227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004188 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P9974008240315673227

namespace A272267

/-- `∪[A001844(n), Δ[A004188(n)]]` -/
def P9974008240315673227.Spec : Prop :=
  ∀ n, (P9974008240315673227.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P3043944617593207869

`∪[A001844(n), A027468(n)+1]`
-/

namespace A272267.P3043944617593207869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P3043944617593207869

namespace A272267

/-- `∪[A001844(n), A027468(n)+1]` -/
def P3043944617593207869.Spec : Prop :=
  ∀ n, (P3043944617593207869.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P5371088729809101874

`∪[A060544(n+1), A001844(n)]`
-/

namespace A272267.P5371088729809101874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P5371088729809101874

namespace A272267

/-- `∪[A060544(n+1), A001844(n)]` -/
def P5371088729809101874.Spec : Prop :=
  ∀ n, (P5371088729809101874.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P1693789602637466338

`∪[A060544(n+1), A099776(n+1)]`
-/

namespace A272267.P1693789602637466338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099776 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P1693789602637466338

namespace A272267

/-- `∪[A060544(n+1), A099776(n+1)]` -/
def P1693789602637466338.Spec : Prop :=
  ∀ n, (P1693789602637466338.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P13673705333522239984

`∪[A000217(3*n+1), A001844(n)]`
-/

namespace A272267.P13673705333522239984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P13673705333522239984

namespace A272267

/-- `∪[A000217(3*n+1), A001844(n)]` -/
def P13673705333522239984.Spec : Prop :=
  ∀ n, (P13673705333522239984.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P5056652801353223492

`∪[A000217(3*n+1), ∑[A008574(n)]]`
-/

namespace A272267.P5056652801353223492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A272267.P5056652801353223492

namespace A272267

/-- `∪[A000217(3*n+1), ∑[A008574(n)]]` -/
def P5056652801353223492.Spec : Prop :=
  ∀ n, (P5056652801353223492.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P10878709853003096427

`filter[A166517(n), A185907(#)]`
-/

namespace A272267.P10878709853003096427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P10878709853003096427

namespace A272267

/-- `filter[A166517(n), A185907(#)]` -/
def P10878709853003096427.Spec : Prop :=
  ∀ n, P10878709853003096427.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P1479126404147777354

`filter[A001651(n+1), A185907(#)]`
-/

namespace A272267.P1479126404147777354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P1479126404147777354

namespace A272267

/-- `filter[A001651(n+1), A185907(#)]` -/
def P1479126404147777354.Spec : Prop :=
  ∀ n, P1479126404147777354.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P2470381287932647091

`filter[A047259(n+1), A185907(#)]`
-/

namespace A272267.P2470381287932647091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P2470381287932647091

namespace A272267

/-- `filter[A047259(n+1), A185907(#)]` -/
def P2470381287932647091.Spec : Prop :=
  ∀ n, P2470381287932647091.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P10375702264288599131

`filter[A189636(n+1), A185907(#)]`
-/

namespace A272267.P10375702264288599131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189636 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P10375702264288599131

namespace A272267

/-- `filter[A189636(n+1), A185907(#)]` -/
def P10375702264288599131.Spec : Prop :=
  ∀ n, P10375702264288599131.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P6942442923575529480

`filter[A189707(n+1), A185907(#)]`
-/

namespace A272267.P6942442923575529480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P6942442923575529480

namespace A272267

/-- `filter[A189707(n+1), A185907(#)]` -/
def P6942442923575529480.Spec : Prop :=
  ∀ n, P6942442923575529480.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P8982572104623097621

`filter[A097482(n+2), A185907(#)]`
-/

namespace A272267.P8982572104623097621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097482 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P8982572104623097621

namespace A272267

/-- `filter[A097482(n+2), A185907(#)]` -/
def P8982572104623097621.Spec : Prop :=
  ∀ n, P8982572104623097621.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P3694646500607305520

`filter[A131042(2*n+1), A185907(#)]`
-/

namespace A272267.P3694646500607305520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131042 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P3694646500607305520

namespace A272267

/-- `filter[A131042(2*n+1), A185907(#)]` -/
def P3694646500607305520.Spec : Prop :=
  ∀ n, P3694646500607305520.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P6544800259961426636

`filter[A131793(2*n+1), A185907(#)]`
-/

namespace A272267.P6544800259961426636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131793 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P6544800259961426636

namespace A272267

/-- `filter[A131793(2*n+1), A185907(#)]` -/
def P6544800259961426636.Spec : Prop :=
  ∀ n, P6544800259961426636.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P16111082736477904744

`filter[A147534(2*(n+1)), A185907(#)]`
-/

namespace A272267.P16111082736477904744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147534 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P16111082736477904744

namespace A272267

/-- `filter[A147534(2*(n+1)), A185907(#)]` -/
def P16111082736477904744.Spec : Prop :=
  ∀ n, P16111082736477904744.a n = A272267 (n + 1)

end A272267

/-! ## A272267.P14614704766883012129

`eq[A038500(n+1), A242451(n)]+1`
-/

namespace A272267.P14614704766883012129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242451 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A272267.P14614704766883012129

namespace A272267

/-- `eq[A038500(n+1), A242451(n)]+1` -/
def P14614704766883012129.Spec : Prop :=
  ∀ n, (P14614704766883012129.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P939899567174541959

`eq[A010176(n), A202023(A038722(n+1))]`
-/

namespace A272267.P939899567174541959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010176 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A038722 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A272267.P939899567174541959

namespace A272267

/-- `eq[A010176(n), A202023(A038722(n+1))]` -/
def P939899567174541959.Spec : Prop :=
  ∀ n, (P939899567174541959.a n : ℤ) = A272267 (n + 1)

end A272267

/-! ## A272267.P13805481470477216710

`filter[A037915(2*n), A185907(#)]`
-/

namespace A272267.P13805481470477216710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185907 (f1 j).toNat = 1) n)

end

end A272267.P13805481470477216710

namespace A272267

/-- `filter[A037915(2*n), A185907(#)]` -/
def P13805481470477216710.Spec : Prop :=
  ∀ n, P13805481470477216710.a n = A272267 (n + 1)

end A272267

/-!
# A272268: Records in A001481 that are more than twice the previous record.

The programs for A272268, there is no canonical definition to state claims against.
-/

/-! ## A272268.P14899265011717942902

`A007283(n)-A279344(A011782(n))`
-/

namespace A272268.P14899265011717942902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n - A279344 (A011782 n).toNat

end

end A272268.P14899265011717942902

/-! ## A272268.P16005672832227102319

`Δ[A153893(n)]-A279344(A011782(n))`
-/

namespace A272268.P16005672832227102319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A279344 (A011782 n).toNat

end

end A272268.P16005672832227102319

/-! ## A272268.P16644549966024469322

`A042950(n+1)-A279344(A011782(n))`
-/

namespace A272268.P16644549966024469322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042950 (n + 1) - A279344 (A011782 n).toNat

end

end A272268.P16644549966024469322

/-! ## A272268.P15759097206800958232

`record[A120511(a(n-3))]` with `a(0)=1, a(1)=4, a(2)=9, a(3)=20, a(4)=4`
-/

namespace A272268.P15759097206800958232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 9, 20, 4] fun n f1 =>
  A120511 (f1 (n - 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272268.P15759097206800958232

/-! ## A272268.P7810263428501973026

`A284906(ceil(3*2^(n-3))+2^n-1)`
-/

namespace A272268.P7810263428501973026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284906 (⌈3 * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌉ + ((2 ^ n : ℤ) - 1)).toNat

end

end A272268.P7810263428501973026

/-!
# A272269: Numbers n such that 11^n does not contain all ten decimal digits.

The programs for A272269, there is no canonical definition to state claims against.
-/

/-! ## A272269.P10458339293798577619

`lt[n, A250120(A003620(n+1))]`
-/

namespace A272269.P10458339293798577619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 (A003620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272269.P10458339293798577619

/-! ## A272269.P15872354853411176693

`lt[A195119(n), A198263(A003620(n+1))]`
-/

namespace A272269.P15872354853411176693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198263 (A003620 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272269.P15872354853411176693

/-! ## A272269.P1967828973561758936

`lt[A364916(A054753(3*n+2)), A054753(3*n+2)]`
-/

namespace A272269.P1967828973561758936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364916 (A054753 (3 * n + 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054753 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272269.P1967828973561758936

/-! ## A272269.P1651798950638062616

`lt[A045683(n), A078319(n+1)²]`
-/

namespace A272269.P1651798950638062616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045683 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078319 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272269.P1651798950638062616

/-!
# A272270: Positive integers n where the number of parts function on the set of 4-ary partitions of n is equidistributed mod 4.

The programs for A272270, there is no canonical definition to state claims against.
-/

/-! ## A272270.P6506741959913025344

`lt[43, or(43, and(n, floor(n/2)))]`
-/

namespace A272270.P6506741959913025344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 43 (Int.land (n : ℤ) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272270.P6506741959913025344

/-! ## A272270.P2661613333205857510

`lt[2, and(n, and(2*n, ∑[(-2)^n]))]`
-/

namespace A272270.P2661613333205857510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (Int.land (2 * n : ℤ) (∑ j ∈ Finset.range (n + 1), f3 j))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272270.P2661613333205857510

/-! ## A272270.P17195124937586950646

`lt[1, A292373(n)]`
-/

namespace A272270.P17195124937586950646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272270.P17195124937586950646

/-! ## A272270.P5150090657733889468

`lt[3, and(n, A057300(n))]`
-/

namespace A272270.P5150090657733889468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A057300 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272270.P5150090657733889468

/-! ## A272270.P15152257758923390836

`comp[round(A023717(n)/4)]`
-/

namespace A272270.P15152257758923390836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A023717 n : ℚ) / 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272270.P15152257758923390836

/-! ## A272270.P12934368182566496518

`eq[3, A190593(floor(n/4))]`
-/

namespace A272270.P12934368182566496518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190593 ⌊(n : ℚ) / 4⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272270.P12934368182566496518

/-! ## A272270.P12020444473720645618

`comp[and(or(1, n), A163241(n))]`
-/

namespace A272270.P12020444473720645618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.lor 1 n : ℤ) (A163241 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272270.P12020444473720645618

/-! ## A272270.P5814106929873933001

`lt[1, A059906(and(n, 2*n))]`
-/

namespace A272270.P5814106929873933001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059906 (Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272270.P5814106929873933001

/-! ## A272270.P17848987287487921767

`comp[A008624(A023717(n))]`
-/

namespace A272270.P17848987287487921767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A023717 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A272270.P17848987287487921767

/-! ## A272270.P10238614752827292446

`eq[1, A043545(A292373(n)²)]`
-/

namespace A272270.P10238614752827292446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A292373 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A272270.P10238614752827292446

/-!
# A272273: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A272273, there is no canonical definition to state claims against.
-/

/-! ## A272273.P13116636009070685572

`A272276(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272273.P13116636009070685572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272276 (n - 1) + a (n - 1)

end

end A272273.P13116636009070685572

/-! ## A272273.P636827954425068686

`∑[A272276(n)]+1-A272276(n)`
-/

namespace A272273.P636827954425068686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272276 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A272276 n)

end

end A272273.P636827954425068686

/-! ## A272273.P173820738535785476

`Δ[A272275(n)]-A272276(n)`
-/

namespace A272273.P173820738535785476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272276 n

end

end A272273.P173820738535785476

/-! ## A272273.P17992792526072640032

`A272275(n+1)-(A272276(n)+A272275(n))`
-/

namespace A272273.P17992792526072640032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272275 (n + 1) - (A272276 n + A272275 n)

end

end A272273.P17992792526072640032

/-!
# A272274: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A272274, there is no canonical definition to state claims against.
-/

/-! ## A272274.P3300549520860715044

`A272273(2^n-1)`
-/

namespace A272274.P3300549520860715044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (2 ^ n - 1)

end

end A272274.P3300549520860715044

/-! ## A272274.P12797200814153310103

`record[A272273(A091264(n))]`
-/

namespace A272274.P12797200814153310103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272274.P12797200814153310103

/-! ## A272274.P3395747790056138823

`record[A272273(A173787(n))]`
-/

namespace A272274.P3395747790056138823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272274.P3395747790056138823

/-! ## A272274.P2837813995188376355

`record[A272273(A218616(n))]`
-/

namespace A272274.P2837813995188376355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272274.P2837813995188376355

/-! ## A272274.P7540115097800595913

`record[A272273(A257250(n))]`
-/

namespace A272274.P7540115097800595913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (A257250 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272274.P7540115097800595913

/-!
# A272275: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A272275, there is no canonical definition to state claims against.
-/

/-! ## A272275.P8890464345995976421

`∑[A272273(n)]`
-/

namespace A272275.P8890464345995976421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272275.P8890464345995976421

/-! ## A272275.P3757902695014819664

`∑[∑[A272276(n)]+1-A272276(n)]`
-/

namespace A272275.P3757902695014819664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272276 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272276 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272275.P3757902695014819664

/-! ## A272275.P13980676575552840757

`A272273(A000038(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A272275.P13980676575552840757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272273 (A000038 n + (n : ℤ)).toNat + a (n - 1)

end

end A272275.P13980676575552840757

/-! ## A272275.P13478285834131683887

`A272273(n)+a(n-1)%A163102(n)` with `a(0)=1`
-/

namespace A272275.P13478285834131683887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272273 n + Int.tmod (a (n - 1)) (A163102 n)

end

end A272275.P13478285834131683887

/-! ## A272275.P15465617374387615845

`A272273(n%A005997(n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272275.P15465617374387615845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272273 (Int.tmod (n : ℤ) (A005997 (n + 1))).toNat + a (n - 1)

end

end A272275.P15465617374387615845

/-! ## A272275.P9397587340908608851

`a(n-1)+A272273(n)%A045571(n+1)` with `a(0)=1`
-/

namespace A272275.P9397587340908608851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A272273 n) (A045571 (n + 1))

end

end A272275.P9397587340908608851

/-!
# A272276: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 453", based on the 5-celled von Neumann neighborhood.

The programs for A272276, there is no canonical definition to state claims against.
-/

/-! ## A272276.P7303130334308630633

`Δ[A272273(n)]`
-/

namespace A272276.P7303130334308630633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272276.P7303130334308630633

/-! ## A272276.P6231332433784637120

`A272273(n+1)-A272273(n)`
-/

namespace A272276.P6231332433784637120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272273 (n + 1) - A272273 n

end

end A272276.P6231332433784637120

/-!
# A272277: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A272277, there is no canonical definition to state claims against.
-/

/-! ## A272277.P429104098484889021

`A246326(2^n-1)`
-/

namespace A272277.P429104098484889021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (2 ^ n - 1)

end

end A272277.P429104098484889021

/-! ## A272277.P9153803479635031954

`record[A246326(A091264(n))]`
-/

namespace A272277.P9153803479635031954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272277.P9153803479635031954

/-! ## A272277.P5960323690102036391

`record[A246326(A218616(n))]`
-/

namespace A272277.P5960323690102036391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272277.P5960323690102036391

/-! ## A272277.P11275200549746054206

`record[A246326(A227351(n))]`
-/

namespace A272277.P11275200549746054206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272277.P11275200549746054206

/-! ## A272277.P11230853055920824005

`record[A246326(A243071(n+1))]`
-/

namespace A272277.P11230853055920824005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272277.P11230853055920824005

/-!
# A272278: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A272278, there is no canonical definition to state claims against.
-/

/-! ## A272278.P7004332891152786425

`∑[A272279(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272278.P7004332891152786425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272279 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272278.P7004332891152786425

/-! ## A272278.P11527610256528897479

`∑[A246326(n)]`
-/

namespace A272278.P11527610256528897479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272278.P11527610256528897479

/-! ## A272278.P11184127713125335578

`A246326(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272278.P11184127713125335578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A246326 n + a (A023443 n).toNat

end

end A272278.P11184127713125335578

/-! ## A272278.P14188115516272681808

`∑[(2*n+1)²]-(A273272(n)-1)`
-/

namespace A272278.P14188115516272681808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (A273272 n - 1)

end

end A272278.P14188115516272681808

/-! ## A272278.P2786185592237261881

`∑[A016754(n)-A273270(n)]+1`
-/

namespace A272278.P2786185592237261881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A272278.P2786185592237261881

/-! ## A272278.P4334973378382546299

`∑[A181385(A016825(n))-A273270(n)]`
-/

namespace A272278.P4334973378382546299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272278.P4334973378382546299

/-! ## A272278.P14305205534900003875

`∑[A008740(A008458(n))-A273270(n)]`
-/

namespace A272278.P14305205534900003875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272278.P14305205534900003875

/-!
# A272279: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 454", based on the 5-celled von Neumann neighborhood.

The programs for A272279, there is no canonical definition to state claims against.
-/

/-! ## A272279.P4977782000947731364

`Δ[A246326(n)]`
-/

namespace A272279.P4977782000947731364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272279.P4977782000947731364

/-! ## A272279.P14370536149796766832

`A246326(n+1)-A246326(n)`
-/

namespace A272279.P14370536149796766832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246326 (n + 1) - A246326 n

end

end A272279.P14370536149796766832

/-! ## A272279.P4016078438543109567

`Δ[A000007(n)+A016754(n)-A273270(n)]`
-/

namespace A272279.P4016078438543109567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A273270 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272279.P4016078438543109567

/-! ## A272279.P4822309487823186023

`Δ[A181385(A016825(n))-A273270(n)]`
-/

namespace A272279.P4822309487823186023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (A016825 n).toNat - A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272279.P4822309487823186023

/-! ## A272279.P7653327197558094561

`Δ[A008740(A008458(n))-A273270(n)]`
-/

namespace A272279.P7653327197558094561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008740 (A008458 n).toNat - A273270 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272279.P7653327197558094561

/-!
# A272280: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A272280, there is no canonical definition to state claims against.
-/

/-! ## A272280.P3746507883799790746

`A272283(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272280.P3746507883799790746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272283 (n - 1) + a (n - 1)

end

end A272280.P3746507883799790746

/-! ## A272280.P1647692495717490859

`Δ[A272282(n)]-A272283(n)`
-/

namespace A272280.P1647692495717490859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272283 n

end

end A272280.P1647692495717490859

/-! ## A272280.P16469359794519811658

`A272283(n-1)-a(n-1)*A057428(n)` with `a(0)=1, a(1)=4`
-/

namespace A272280.P16469359794519811658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  A272283 (n - 1) - a (n - 1) * A057428 n

end

end A272280.P16469359794519811658

/-! ## A272280.P5983378112334888180

`A272282(n+1)-(A272283(n)+A272282(n))`
-/

namespace A272280.P5983378112334888180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272282 (n + 1) - (A272283 n + A272282 n)

end

end A272280.P5983378112334888180

/-!
# A272281: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A272281, there is no canonical definition to state claims against.
-/

/-! ## A272281.P16033504889250549827

`A272280(2^n-1)`
-/

namespace A272281.P16033504889250549827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (2 ^ n - 1)

end

end A272281.P16033504889250549827

/-! ## A272281.P3974757222540137260

`record[A272280(A173787(n))]`
-/

namespace A272281.P3974757222540137260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272281.P3974757222540137260

/-! ## A272281.P5249046037743771464

`record[A272280(A218616(n))]`
-/

namespace A272281.P5249046037743771464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272281.P5249046037743771464

/-! ## A272281.P16340748024676350187

`and(-1, A272280(A000225(n)))`
-/

namespace A272281.P16340748024676350187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A272280 (A000225 n).toNat)

end

end A272281.P16340748024676350187

/-! ## A272281.P10243614343402616171

`record[A272280(A253564(n+1))]`
-/

namespace A272281.P10243614343402616171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (A253564 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272281.P10243614343402616171

/-!
# A272282: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A272282, there is no canonical definition to state claims against.
-/

/-! ## A272282.P13662626197917921297

`∑[∑[A272283(n)]+1-A272283(n)]`
-/

namespace A272282.P13662626197917921297
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272283 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272283 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272282.P13662626197917921297

/-! ## A272282.P16987707037532491435

`∑[A272280(n)]`
-/

namespace A272282.P16987707037532491435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272282.P16987707037532491435

/-! ## A272282.P9293283326678196832

`A272280(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A272282.P9293283326678196832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272280 n + a (A023443 n).toNat

end

end A272282.P9293283326678196832

/-! ## A272282.P15792811330747389988

`A272280(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A272282.P15792811330747389988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272280 n + a ((n : ℤ) - A057427 n).toNat

end

end A272282.P15792811330747389988

/-! ## A272282.P11853957278859757012

`A272280(A004524(2*n+1))+a(n-1)` with `a(0)=1`
-/

namespace A272282.P11853957278859757012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272280 (A004524 (2 * n + 1)).toNat + a (n - 1)

end

end A272282.P11853957278859757012

/-!
# A272283: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 457", based on the 5-celled von Neumann neighborhood.

The programs for A272283, there is no canonical definition to state claims against.
-/

/-! ## A272283.P9457224544627762379

`Δ[A272280(n)]`
-/

namespace A272283.P9457224544627762379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272283.P9457224544627762379

/-! ## A272283.P3110590756863814046

`A272280(n+1)-A272280(n)`
-/

namespace A272283.P3110590756863814046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272280 (n + 1) - A272280 n

end

end A272283.P3110590756863814046

/-!
# A272284: Numbers n such that 43*n^2 - 537*n + 2971 is prime.

The programs for A272284, there is no canonical definition to state claims against.
-/

/-! ## A272284.P10799297171095857199

`lt[A124590(n+1), A296089(A013929(3*n+5))]`
-/

namespace A272284.P10799297171095857199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124590 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296089 (A013929 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272284.P10799297171095857199

/-! ## A272284.P6620454921042680543

`lt[A365676(A320456(n+1)), 19]`
-/

namespace A272284.P6620454921042680543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365676 (A320456 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A272284.P6620454921042680543

/-! ## A272284.P1132105224144811354

`lt[n, A007304(A305540(n+1))]`
-/

namespace A272284.P1132105224144811354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (A305540 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272284.P1132105224144811354

/-! ## A272284.P13014739723603036027

`lt[A325280(2*n)², A239624(n)]`
-/

namespace A272284.P13014739723603036027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325280 (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239624 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A272284.P13014739723603036027

/-! ## A272284.P14320146681632501978

`lt[A122197(n+1)!, A072381(n+1)]`
-/

namespace A272284.P14320146681632501978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A122197 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072381 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A272284.P14320146681632501978

/-!
# A272287: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A272287, there is no canonical definition to state claims against.
-/

/-! ## A272287.P9643906557505140093

`A272290(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272287.P9643906557505140093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272290 (n - 1) + a (n - 1)

end

end A272287.P9643906557505140093

/-! ## A272287.P2898800012774798393

`Δ[A272289(n)]-A272290(n)`
-/

namespace A272287.P2898800012774798393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272289 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272290 n

end

end A272287.P2898800012774798393

/-! ## A272287.P9447140689400421303

`A272290(n-1)-(A000007(n)-a(n-1))` with `a(0)=1`
-/

namespace A272287.P9447140689400421303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272290 (n - 1) - (A000007 n - a (n - 1))

end

end A272287.P9447140689400421303

/-! ## A272287.P10757459030434771157

`A272289(n+1)-(A272290(n)+A272289(n))`
-/

namespace A272287.P10757459030434771157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272289 (n + 1) - (A272290 n + A272289 n)

end

end A272287.P10757459030434771157

/-!
# A272288: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A272288, there is no canonical definition to state claims against.
-/

/-! ## A272288.P228455701796826819

`A272287(2^n-1)`
-/

namespace A272288.P228455701796826819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (2 ^ n - 1)

end

end A272288.P228455701796826819

/-! ## A272288.P14876752654376061876

`record[A272287(A091264(n))]`
-/

namespace A272288.P14876752654376061876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (A091264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272288.P14876752654376061876

/-! ## A272288.P8749237162480345586

`record[A272287(A153154(n))]`
-/

namespace A272288.P8749237162480345586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (A153154 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272288.P8749237162480345586

/-! ## A272288.P7250968735642076414

`record[A272287(A154436(n))]`
-/

namespace A272288.P7250968735642076414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (A154436 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272288.P7250968735642076414

/-! ## A272288.P12311071288056206391

`record[A272287(A173787(n))]`
-/

namespace A272288.P12311071288056206391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272288.P12311071288056206391

/-!
# A272289: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A272289, there is no canonical definition to state claims against.
-/

/-! ## A272289.P11593996239122296592

`∑[∑[A272290(n)]+1-A272290(n)]`
-/

namespace A272289.P11593996239122296592
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272290 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272290 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272289.P11593996239122296592

/-! ## A272289.P4232503983917126041

`∑[A272287(n)]`
-/

namespace A272289.P4232503983917126041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272289.P4232503983917126041

/-! ## A272289.P10677950972985431210

`A272287(A000007(n)+n)+a(n-1)` with `a(0)=1`
-/

namespace A272289.P10677950972985431210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272287 (A000007 n + (n : ℤ)).toNat + a (n - 1)

end

end A272289.P10677950972985431210

/-! ## A272289.P11058857961273197106

`a(n-1)+A057427(n)*A272287(n)` with `a(0)=1`
-/

namespace A272289.P11058857961273197106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A057427 n * A272287 n

end

end A272289.P11058857961273197106

/-! ## A272289.P4024979805159831198

`A272287(n%A272287(n))+a(n-1)` with `a(0)=1`
-/

namespace A272289.P4024979805159831198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272287 (Int.tmod (n : ℤ) (A272287 n)).toNat + a (n - 1)

end

end A272289.P4024979805159831198

/-! ## A272289.P1115222046630776543

`a(n-1)+A272287(n)+A209229(n²+2)` with `a(0)=1`
-/

namespace A272289.P1115222046630776543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A272287 n + A209229 (n ^ 2 + 2))

end

end A272289.P1115222046630776543

/-!
# A272290: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 459", based on the 5-celled von Neumann neighborhood.

The programs for A272290, there is no canonical definition to state claims against.
-/

/-! ## A272290.P11311251178333703991

`Δ[A272287(n)]`
-/

namespace A272290.P11311251178333703991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272290.P11311251178333703991

/-! ## A272290.P14903977391299498573

`A272287(n+1)-A272287(n)`
-/

namespace A272290.P14903977391299498573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (n + 1) - A272287 n

end

end A272290.P14903977391299498573

/-! ## A272290.P13149167564866799198

`A272287(n+1)+A001478(A272287(n)+1)+1`
-/

namespace A272290.P13149167564866799198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272287 (n + 1) + (A001478 (A272287 n + 1).toNat + 1)

end

end A272290.P13149167564866799198

/-!
# A272291: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A272291, there is no canonical definition to state claims against.
-/

/-! ## A272291.P14781185000987381574

`A272294(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A272291.P14781185000987381574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272294 (n - 1) + a (n - 1)

end

end A272291.P14781185000987381574

/-! ## A272291.P3897571482863716747

`Δ[A272293(n)]-A272294(n)`
-/

namespace A272291.P3897571482863716747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A272294 n

end

end A272291.P3897571482863716747

/-! ## A272291.P11883475068334508749

`a(n-1)-(A000007(n)-A272294(n-1))` with `a(0)=1`
-/

namespace A272291.P11883475068334508749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (A000007 n - A272294 (n - 1))

end

end A272291.P11883475068334508749

/-! ## A272291.P6183412132800189950

`A272293(n+1)-(A272294(n)+A272293(n))`
-/

namespace A272291.P6183412132800189950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272293 (n + 1) - (A272294 n + A272293 n)

end

end A272291.P6183412132800189950

/-!
# A272292: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A272292, there is no canonical definition to state claims against.
-/

/-! ## A272292.P3633495318291913800

`A272291(2^n-1)`
-/

namespace A272292.P3633495318291913800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (2 ^ n - 1)

end

end A272292.P3633495318291913800

/-! ## A272292.P7231283645682898338

`record[A272291(A173787(n))]`
-/

namespace A272292.P7231283645682898338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272292.P7231283645682898338

/-! ## A272292.P12268011756119313157

`record[A272291(A218616(n))]`
-/

namespace A272292.P12268011756119313157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (A218616 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272292.P12268011756119313157

/-! ## A272292.P17316623444488147255

`record[A272291(A232751(n))]`
-/

namespace A272292.P17316623444488147255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272292.P17316623444488147255

/-! ## A272292.P10640781420208644575

`record[A272291(A255067(n))]`
-/

namespace A272292.P10640781420208644575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (A255067 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A272292.P10640781420208644575

/-!
# A272293: Partial sums of the number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A272293, there is no canonical definition to state claims against.
-/

/-! ## A272293.P7690512770368434934

`∑[A272294(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A272293.P7690512770368434934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A272294 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272293.P7690512770368434934

/-! ## A272293.P13932706918005407764

`∑[a(n-1)-(A000007(n)-A272294(n-1))]` with `a(0)=1`
-/

namespace A272293.P13932706918005407764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - (A000007 n - A272294 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272293.P13932706918005407764

/-! ## A272293.P3892030850650738239

`∑[∑[A272294(n)]+1-A272294(n)]`
-/

namespace A272293.P3892030850650738239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (1 - A272294 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272293.P3892030850650738239

/-! ## A272293.P601123398393274825

`∑[A272291(n)]`
-/

namespace A272293.P601123398393274825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272293.P601123398393274825

/-! ## A272293.P10568369460801933127

`A272291(n%A146297(n+2))+a(n-1)` with `a(0)=1`
-/

namespace A272293.P10568369460801933127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272291 (Int.tmod (n : ℤ) (A146297 (n + 2))).toNat + a (n - 1)

end

end A272293.P10568369460801933127

/-! ## A272293.P15630530087218787472

`A272291(n+1)+a(n-1)-A272294(n)` with `a(0)=1`
-/

namespace A272293.P15630530087218787472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A272291 (n + 1) + (a (n - 1) - A272294 n)

end

end A272293.P15630530087218787472

/-!
# A272294: First differences of number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 461", based on the 5-celled von Neumann neighborhood.

The programs for A272294, there is no canonical definition to state claims against.
-/

/-! ## A272294.P14072075131242763773

`Δ[A272291(n)]`
-/

namespace A272294.P14072075131242763773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A272294.P14072075131242763773

/-! ## A272294.P9216074005973255142

`A272291(n+1)-A272291(n)`
-/

namespace A272294.P9216074005973255142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272291 (n + 1) - A272291 n

end

end A272294.P9216074005973255142

/-!
# A272297: a(n) = n^4 + 64.

The programs for A272297, the canonical program `A272297.P13446177153932536634` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272297 has offset 0).

The definition of A272297 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+64` (program `A272297.P13446177153932536634`, by `A272297.P13446177153932536634.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272297.P13446177153932536634

`n^4+64`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272297

/-- `n^4+64` -/
def P13446177153932536634.Spec : Prop :=
  ∀ n, (P13446177153932536634.a n : ℤ) = A272297 n

theorem P13446177153932536634.correct : P13446177153932536634.Spec := by
  intro n
  simp only [A272297]

end A272297

/-!
# A272298: a(n) = n^4 + 324.

The programs for A272298, the canonical program `A272298.P16323717499386874282` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272298 has offset 0).

The definition of A272298 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^4+324` (program `A272298.P16323717499386874282`, by `A272298.P16323717499386874282.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272298.P16323717499386874282

`n^4+324`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272298

/-- `n^4+324` -/
def P16323717499386874282.Spec : Prop :=
  ∀ n, (P16323717499386874282.a n : ℤ) = A272298 n

theorem P16323717499386874282.correct : P16323717499386874282.Spec := by
  intro n
  simp only [A272298]

end A272298

/-!
# A272299: a(n) = n + 2*floor(n/2) + 3*floor(n/3).

The programs for A272299, the canonical program `A272299.P10454047190274261912` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A272299 has offset 0).

The definition of A272299 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n+2*floor(n/2)+3*floor(n/3)` (program `A272299.P10454047190274261912`, by `A272299.P10454047190274261912.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A272299.P10454047190274261912

`n+2*floor(n/2)+3*floor(n/3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A272299

/-- `n+2*floor(n/2)+3*floor(n/3)` -/
def P10454047190274261912.Spec : Prop :=
  ∀ n, P10454047190274261912.a n = A272299 n

theorem P10454047190274261912.correct : P10454047190274261912.Spec := by
  intro n
  simp only [A272299]

end A272299

/-! ## A272299.P3186517263147735398

`∑[∑{d}[n, A173012(#)]]`
-/

namespace A272299.P3186517263147735398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A173012 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272299.P3186517263147735398

namespace A272299

/-- `∑[∑{d}[n, A173012(#)]]` -/
def P3186517263147735398.Spec : Prop :=
  ∀ n, P3186517263147735398.a n = A272299 n

end A272299

/-! ## A272299.P3764430489581472382

`(A112653(n)+A047245(n+1))%A143795(n+1)`
-/

namespace A272299.P3764430489581472382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112653 n + A047245 (n + 1)) (A143795 (n + 1))

end

end A272299.P3764430489581472382

namespace A272299

/-- `(A112653(n)+A047245(n+1))%A143795(n+1)` -/
def P3764430489581472382.Spec : Prop :=
  ∀ n, P3764430489581472382.a n = A272299 n

end A272299

/-! ## A272299.P14343289861367553963

`(A047225(A047223(n+1))+n)/2`
-/

namespace A272299.P14343289861367553963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047225 (A047223 (n + 1)).toNat + (n : ℤ) : ℚ) / 2

end

end A272299.P14343289861367553963

namespace A272299

/-- `(A047225(A047223(n+1))+n)/2` -/
def P14343289861367553963.Spec : Prop :=
  ∀ n, P14343289861367553963.a n = (A272299 n : ℚ)

end A272299

/-! ## A272299.P3646408917239620804

`A047263(A047245(n+1)+A004526(n))`
-/

namespace A272299.P3646408917239620804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047263 (A047245 (n + 1) + A004526 n).toNat

end

end A272299.P3646408917239620804

namespace A272299

/-- `A047263(A047245(n+1)+A004526(n))` -/
def P3646408917239620804.Spec : Prop :=
  ∀ n, P3646408917239620804.a n = A272299 n

end A272299

/-! ## A272299.P6638859220221805088

`A023443(A052928(n)+A047245(n+1))`
-/

namespace A272299.P6638859220221805088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A052928 n + A047245 (n + 1)).toNat

end

end A272299.P6638859220221805088

namespace A272299

/-- `A023443(A052928(n)+A047245(n+1))` -/
def P6638859220221805088.Spec : Prop :=
  ∀ n, P6638859220221805088.a n = A272299 n

end A272299

/-! ## A272299.P17650118698558493249

`∑[A269701(n²)]`
-/

namespace A272299.P17650118698558493249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269701 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A272299.P17650118698558493249

namespace A272299

/-- `∑[A269701(n²)]` -/
def P17650118698558493249.Spec : Prop :=
  ∀ n, P17650118698558493249.a n = A272299 n

end A272299

