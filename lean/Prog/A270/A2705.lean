import SequenceMachineLib.Basic
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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A270500: Sum of the sizes of the eighth blocks in all set partitions of {1,2,...,n}.

The programs for A270500, there is no canonical definition to state claims against.
-/

/-! ## A270500.P2232767433620972549

`A270236(eq[9, A131818(n+1)])`
-/

namespace A270500.P2232767433620972549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270500.P2232767433620972549

/-! ## A270500.P10507730869051820134

`record[A270236(lt[8, A131818(n+1)])]`
-/

namespace A270500.P10507730869051820134
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270500.P10507730869051820134

/-! ## A270500.P10033180835758178994

`record[A270236(lt[8, A135223(n+1)])]`
-/

namespace A270500.P10033180835758178994
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270500.P10033180835758178994

/-! ## A270500.P10722820299615479802

`A270236(A000096(n+7)-n+1)`
-/

namespace A270500.P10722820299615479802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (A000096 (n + 7) - (n : ℤ) + 1).toNat

end

end A270500.P10722820299615479802

/-! ## A270500.P18366755147152557011

`A270236(eq[6, A025581(n)]+15)^A178334(n)`
-/

namespace A270500.P18366755147152557011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 15) : ℚ) ^ (A178334 n : ℤ)

end

end A270500.P18366755147152557011

/-!
# A270501: Sum of the sizes of the ninth blocks in all set partitions of {1,2,...,n}.

The programs for A270501, there is no canonical definition to state claims against.
-/

/-! ## A270501.P6114624866394351022

`A270236(eq[17, A066657(n)])`
-/

namespace A270501.P6114624866394351022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270501.P6114624866394351022

/-! ## A270501.P2289943014477853066

`A270236(eq[10, A131818(n+1)])`
-/

namespace A270501.P2289943014477853066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270501.P2289943014477853066

/-! ## A270501.P15726696188101861441

`A270236(eq[10, A135223(n+1)])`
-/

namespace A270501.P15726696188101861441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270501.P15726696188101861441

/-! ## A270501.P8000303009286376158

`record[A270236(lt[9, A131818(n+1)])]`
-/

namespace A270501.P8000303009286376158
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270501.P8000303009286376158

/-! ## A270501.P11529663711233511797

`A270236(eq[8, A144328(n+1)]+1)`
-/

namespace A270501.P11529663711233511797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A270501.P11529663711233511797

/-!
# A270502: Sum of the sizes of the tenth blocks in all set partitions of {1,2,...,n}.

The programs for A270502, there is no canonical definition to state claims against.
-/

/-! ## A270502.P7953915959911001559

`A270236(eq[10, A130270(n+1)])`
-/

namespace A270502.P7953915959911001559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270502.P7953915959911001559

/-! ## A270502.P4745087001374846594

`A270236(eq[11, A131818(n+1)])`
-/

namespace A270502.P4745087001374846594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270502.P4745087001374846594

/-! ## A270502.P3123202730567217414

`record[A270236(lt[10, A131818(n+1)])]`
-/

namespace A270502.P3123202730567217414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270502.P3123202730567217414

/-! ## A270502.P16916497427502516762

`record[A270236(lt[10, A135223(n+1)])]`
-/

namespace A270502.P16916497427502516762
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270502.P16916497427502516762

/-! ## A270502.P11159425926895397185

`A270236(eq[10, A256910(n)])`
-/

namespace A270502.P11159425926895397185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270502.P11159425926895397185

/-!
# A270503: Number of nXnXn triangular 0..1 arrays with some element plus some adjacent element totalling 1+1 exactly once.

The programs for A270503, there is no canonical definition to state claims against.
-/

/-! ## A270503.P14866551551821656900

`A270845(n+1)/2`
-/

namespace A270503.P14866551551821656900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270845 (n + 1) : ℚ) / 2

end

end A270503.P14866551551821656900

/-! ## A270503.P1916562462496444056

`A270509(∑[n+1])`
-/

namespace A270503.P1916562462496444056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270503.P1916562462496444056

/-! ## A270503.P3683176020271825390

`A270850(A141214(n)+1)/2`
-/

namespace A270503.P3683176020271825390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270850 (A141214 n + 1).toNat : ℚ) / 2

end

end A270503.P3683176020271825390

/-! ## A270503.P139746373052529811

`A270850(A034856(n+2))/2`
-/

namespace A270503.P139746373052529811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270850 (A034856 (n + 2)).toNat : ℚ) / 2

end

end A270503.P139746373052529811

/-! ## A270503.P6831880156299876391

`A270850(eq[2, A052509(n)])/2`
-/

namespace A270503.P6831880156299876391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052509 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270850 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A270503.P6831880156299876391

/-!
# A270504: Number of nXnXn triangular 0..2 arrays with some element plus some adjacent element totalling 2+1 exactly once.

The programs for A270504, there is no canonical definition to state claims against.
-/

/-! ## A270504.P13278330640397082422

`A270509(∑[n+2])`
-/

namespace A270504.P13278330640397082422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270504.P13278330640397082422

/-! ## A270504.P13384615434828011742

`record[A266330(n)*A270509(n+1)]`
-/

namespace A270504.P13384615434828011742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266330 n * A270509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270504.P13384615434828011742

/-! ## A270504.P13853420480697455862

`record[A270509(gcd(n, A055277(n+1)))]`
-/

namespace A270504.P13853420480697455862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (Int.gcd (n : ℤ) (A055277 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270504.P13853420480697455862

/-! ## A270504.P14967950995056518940

`record[A023531(n+1)*A270509(n+1)]`
-/

namespace A270504.P14967950995056518940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (n + 1) * A270509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270504.P14967950995056518940

/-! ## A270504.P1058036610889938176

`record[char[A034856(n+1)]*A270509(n+1)]`
-/

namespace A270504.P1058036610889938176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034856 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A270509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270504.P1058036610889938176

/-!
# A270505: Number of nXnXn triangular 0..3 arrays with some element plus some adjacent element totalling 3+1 exactly once.

The programs for A270505, there is no canonical definition to state claims against.
-/

/-! ## A270505.P14242598435172443737

`A270509(∑[n+3]+1)`
-/

namespace A270505.P14242598435172443737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270505.P14242598435172443737

/-! ## A270505.P11529505249850369585

`record[A270509(gcd(n, A055277(n+2)))]`
-/

namespace A270505.P11529505249850369585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (Int.gcd (n : ℤ) (A055277 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270505.P11529505249850369585

/-! ## A270505.P16332651425962579925

`record[char[A141214(n)]*A270509(n+1)]`
-/

namespace A270505.P16332651425962579925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141214 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A270509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270505.P16332651425962579925

/-! ## A270505.P4084948573644396404

`A016030(n)*A270509(A034856(n+2))`
-/

namespace A270505.P4084948573644396404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 n * A270509 (A034856 (n + 2)).toNat

end

end A270505.P4084948573644396404

/-! ## A270505.P2028350964178927613

`A270509(A034856(n+2))%A139307(n+2)`
-/

namespace A270505.P2028350964178927613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270509 (A034856 (n + 2)).toNat) (A139307 (n + 2))

end

end A270505.P2028350964178927613

/-!
# A270506: Number of nXnXn triangular 0..4 arrays with some element plus some adjacent element totalling 4+1 exactly once.

The programs for A270506, there is no canonical definition to state claims against.
-/

/-! ## A270506.P8521795421482416691

`A270509(A141214(n+1))`
-/

namespace A270506.P8521795421482416691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A141214 (n + 1)).toNat

end

end A270506.P8521795421482416691

/-! ## A270506.P2287235450879237341

`A270509(A052905(n+1)+2)`
-/

namespace A270506.P2287235450879237341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A052905 (n + 1) + 2).toNat

end

end A270506.P2287235450879237341

/-!
# A270507: Number of nXnXn triangular 0..5 arrays with some element plus some adjacent element totalling 5+1 exactly once.

The programs for A270507, there is no canonical definition to state claims against.
-/

/-! ## A270507.P13026401460077696639

`A270509(eq[5, A239144(n)])`
-/

namespace A270507.P13026401460077696639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239144 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270507.P13026401460077696639

/-!
# A270508: Number of nXnXn triangular 0..6 arrays with some element plus some adjacent element totalling 6+1 exactly once.

The programs for A270508, there is no canonical definition to state claims against.
-/

/-! ## A270508.P6744578507947951793

`A270509(Δ[Δ[A006504(n+1)]])`
-/

namespace A270508.P6744578507947951793
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006504 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (f1 (n + 1) - f1 n).toNat

end

end A270508.P6744578507947951793

/-!
# A270509: T(n,k)=Number of nXnXn triangular 0..k arrays with some element plus some adjacent element totalling k+1 exactly once.

The programs for A270509, there is no canonical definition to state claims against.
-/

/-! ## A270509.P13174226457275518089

`A104615(A214899(n))*A176276(n)`
-/

namespace A270509.P13174226457275518089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104615 (A214899 n).toNat * A176276 n

end

end A270509.P13174226457275518089

/-!
# A270510: Number of 2X2X2 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

The programs for A270510, the canonical program `A270510.P8534910118944429918` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270510 has offset 1).

The definition of A270510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270510.P8534910118944429918

`∑[6*or(1, n)-3]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270510

/-- `∑[6*or(1, n)-3]` -/
def P8534910118944429918.Spec : Prop :=
  ∀ n, P8534910118944429918.a n = A270510 (n + 1)

theorem P8534910118944429918.correct : P8534910118944429918.Spec := by
  intro n
  simp only [A270510, Nat.add_sub_cancel]

end A270510

/-! ## A270510.P17490868015149371522

`3*(or(1, n²)+n)`
-/

namespace A270510.P17490868015149371522
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.lor 1 (n ^ 2) + n)

end

end A270510.P17490868015149371522

namespace A270510

/-- `3*(or(1, n²)+n)` -/
def P17490868015149371522.Spec : Prop :=
  ∀ n, (P17490868015149371522.a n : ℤ) = A270510 (n + 1)

end A270510

/-! ## A270510.P6304916283682792531

`∑[3*(xor(1, n)+n)]`
-/

namespace A270510.P6304916283682792531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (Nat.xor 1 n + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P6304916283682792531

namespace A270510

/-- `∑[3*(xor(1, n)+n)]` -/
def P6304916283682792531.Spec : Prop :=
  ∀ n, (P6304916283682792531.a n : ℤ) = A270510 (n + 1)

end A270510

/-! ## A270510.P9842939621193886929

`∑[6*and(n, -2)+3]`
-/

namespace A270510.P9842939621193886929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * Int.land (n : ℤ) (-2) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P9842939621193886929

namespace A270510

/-- `∑[6*and(n, -2)+3]` -/
def P9842939621193886929.Spec : Prop :=
  ∀ n, P9842939621193886929.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P2047012741345307670

`∑[3*and(Δ[n²], -3)]`
-/

namespace A270510.P2047012741345307670
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * Int.land ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) (-3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P2047012741345307670

namespace A270510

/-- `∑[3*and(Δ[n²], -3)]` -/
def P2047012741345307670.Spec : Prop :=
  ∀ n, P2047012741345307670.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P337972789096086892

`∑[a(n-2)+12]` with `a(0)=3, a(1)=3`
-/

namespace A270510.P337972789096086892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3] fun n f1 =>
  f1 (n - 2) + 12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P337972789096086892

namespace A270510

/-- `∑[a(n-2)+12]` -/
def P337972789096086892.Spec : Prop :=
  ∀ n, (P337972789096086892.a n : ℤ) = A270510 (n + 1)

end A270510

/-! ## A270510.P16905698453121008955

`∑[12*floor(n/2)+3]`
-/

namespace A270510.P16905698453121008955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * ⌊(n : ℚ) / 2⌋ + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270510.P16905698453121008955

namespace A270510

/-- `∑[12*floor(n/2)+3]` -/
def P16905698453121008955.Spec : Prop :=
  ∀ n, P16905698453121008955.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P475650305790462935

`6*n²+3-a(n-1)` with `a(0)=3`
-/

namespace A270510.P475650305790462935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  (6 * n ^ 2 : ℤ) + (3 - a (n - 1))

end

end A270510.P475650305790462935

namespace A270510

/-- `6*n²+3-a(n-1)` -/
def P475650305790462935.Spec : Prop :=
  ∀ n, P475650305790462935.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P15401545149936455801

`3-(a(n-1)-6*n²)` with `a(0)=3`
-/

namespace A270510.P15401545149936455801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  3 - (a (n - 1) - (6 * n ^ 2 : ℤ))

end

end A270510.P15401545149936455801

namespace A270510

/-- `3-(a(n-1)-6*n²)` -/
def P15401545149936455801.Spec : Prop :=
  ∀ n, P15401545149936455801.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P11850300782997153080

`3*(∑[2*n]+(n+1)%2)`
-/

namespace A270510.P11850300782997153080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j + (n + 1) % 2)

end

end A270510.P11850300782997153080

namespace A270510

/-- `3*(∑[2*n]+(n+1)%2)` -/
def P11850300782997153080.Spec : Prop :=
  ∀ n, (P11850300782997153080.a n : ℤ) = A270510 (n + 1)

end A270510

/-! ## A270510.P11499740196342349489

`3*(n²+n-n%2+1)`
-/

namespace A270510.P11499740196342349489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n ^ 2 + n : ℤ) - ((n % 2 : ℕ) : ℤ) + 1)

end

end A270510.P11499740196342349489

namespace A270510

/-- `3*(n²+n-n%2+1)` -/
def P11499740196342349489.Spec : Prop :=
  ∀ n, P11499740196342349489.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P10328303669951925595

`3*(n²+n-and(1, n)+1)`
-/

namespace A270510.P10328303669951925595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((n ^ 2 + n : ℤ) - (Nat.land 1 n : ℤ) + 1)

end

end A270510.P10328303669951925595

namespace A270510

/-- `3*(n²+n-and(1, n)+1)` -/
def P10328303669951925595.Spec : Prop :=
  ∀ n, P10328303669951925595.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P9350159469076975870

`3*∑[∑[∑[ogf((1+3x^2)/(1+x))]]]`
-/

namespace A270510.P9350159469076975870
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 3] [1, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270510.P9350159469076975870

namespace A270510

/-- `3*∑[∑[∑[ogf((1+3x^2)/(1+x))]]]` -/
def P9350159469076975870.Spec : Prop :=
  ∀ n, P9350159469076975870.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P18351507790135981845

`2*a(n-1)-2*a(n-3)+a(n-4)` with `a(0)=3, a(1)=6, a(2)=21, a(3)=36`
-/

namespace A270510.P18351507790135981845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 21, 36] fun n a =>
  2 * a (n - 1) - 2 * a (n - 3) + a (n - 4)

end

end A270510.P18351507790135981845

namespace A270510

/-- `2*a(n-1)-2*a(n-3)+a(n-4)` -/
def P18351507790135981845.Spec : Prop :=
  ∀ n, P18351507790135981845.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P12527718996615241160

`3*A213041(n)`
-/

namespace A270510.P12527718996615241160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A213041 n

end

end A270510.P12527718996615241160

namespace A270510

/-- `3*A213041(n)` -/
def P12527718996615241160.Spec : Prop :=
  ∀ n, P12527718996615241160.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P15955941811549675700

`3*(A085046(n+1)-n)`
-/

namespace A270510.P15955941811549675700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A085046 (n + 1) - (n : ℤ))

end

end A270510.P15955941811549675700

namespace A270510

/-- `3*(A085046(n+1)-n)` -/
def P15955941811549675700.Spec : Prop :=
  ∀ n, P15955941811549675700.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P6154258583267262580

`3*(A248800(n)-1+n)`
-/

namespace A270510.P6154258583267262580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A248800 n - 1 + (n : ℤ))

end

end A270510.P6154258583267262580

namespace A270510

/-- `3*(A248800(n)-1+n)` -/
def P6154258583267262580.Spec : Prop :=
  ∀ n, P6154258583267262580.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P1930284138313980398

`A097803(n)-a(n-1)` with `a(0)=3`
-/

namespace A270510.P1930284138313980398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A097803 n - a (n - 1)

end

end A270510.P1930284138313980398

namespace A270510

/-- `A097803(n)-a(n-1)` -/
def P1930284138313980398.Spec : Prop :=
  ∀ n, P1930284138313980398.a n = A270510 (n + 1)

end A270510

/-! ## A270510.P12404305239735024278

`3*(A137928(n+1)-(n+1))`
-/

namespace A270510.P12404305239735024278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A137928 (n + 1) - (n + 1 : ℤ))

end

end A270510.P12404305239735024278

namespace A270510

/-- `3*(A137928(n+1)-(n+1))` -/
def P12404305239735024278.Spec : Prop :=
  ∀ n, P12404305239735024278.a n = A270510 (n + 1)

end A270510

/-!
# A270511: Number of 3X3X3 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

The programs for A270511, there is no canonical definition to state claims against.
-/

/-! ## A270511.P5713142464628673356

`A270509(∑[n+2]+4)`
-/

namespace A270511.P5713142464628673356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A270511.P5713142464628673356

/-! ## A270511.P164846787504513507

`lcm(3, A270509(A167614(n+1)))`
-/

namespace A270511.P164846787504513507
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A270509 (A167614 (n + 1)).toNat)

end

end A270511.P164846787504513507

/-! ## A270511.P13242488667310107405

`A016030(n)*A270509(A167614(n+1))`
-/

namespace A270511.P13242488667310107405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016030 n * A270509 (A167614 (n + 1)).toNat

end

end A270511.P13242488667310107405

/-! ## A270511.P9650009632238649000

`A016042(n)*A270509(A167614(n+1))`
-/

namespace A270511.P9650009632238649000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016042 n * A270509 (A167614 (n + 1)).toNat

end

end A270511.P9650009632238649000

/-!
# A270512: Number of 4X4X4 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

The programs for A270512, there is no canonical definition to state claims against.
-/

/-! ## A270512.P6704178949598281542

`A270509(A141214(n)+7)`
-/

namespace A270512.P6704178949598281542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A141214 n + 7).toNat

end

end A270512.P6704178949598281542

/-! ## A270512.P16276719628240761645

`A270509(A052905(n)+9)`
-/

namespace A270512.P16276719628240761645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A052905 n + 9).toNat

end

end A270512.P16276719628240761645

/-! ## A270512.P55935411748848142

`A270509(A055999(n)+10)`
-/

namespace A270512.P55935411748848142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A055999 n + 10).toNat

end

end A270512.P55935411748848142

/-! ## A270512.P12014640900305846610

`A270509(eq[5, A066657(n)])`
-/

namespace A270512.P12014640900305846610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270512.P12014640900305846610

/-! ## A270512.P3159312547757060312

`A270509(A167614(n+2)+1)`
-/

namespace A270512.P3159312547757060312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A167614 (n + 2) + 1).toNat

end

end A270512.P3159312547757060312

/-!
# A270513: Number of 5X5X5 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

The programs for A270513, there is no canonical definition to state claims against.
-/

/-! ## A270513.P10397718538776143834

`A270509(A155212(n)+13)`
-/

namespace A270513.P10397718538776143834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A155212 n + 13).toNat

end

end A270513.P10397718538776143834

/-! ## A270513.P413579906465231568

`A270509(A056000(n)+15)`
-/

namespace A270513.P413579906465231568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A056000 n + 15).toNat

end

end A270513.P413579906465231568

/-! ## A270513.P253901021943252964

`A270509(eq[7, A066657(n)])`
-/

namespace A270513.P253901021943252964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270513.P253901021943252964

/-! ## A270513.P10013189452265095647

`A270509(A141214(n+1)+8)`
-/

namespace A270513.P10013189452265095647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A141214 (n + 1) + 8).toNat

end

end A270513.P10013189452265095647

/-! ## A270513.P5301092721775977531

`A270509(eq[6, A131818(n+1)])`
-/

namespace A270513.P5301092721775977531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270513.P5301092721775977531

/-!
# A270514: Number of 6 X 6 X 6 triangular 0..n arrays with some element plus some adjacent element totalling n+1 exactly once.

The programs for A270514, there is no canonical definition to state claims against.
-/

/-! ## A270514.P13983681209836071118

`A270509(eq[7, A131818(n+1)])`
-/

namespace A270514.P13983681209836071118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A270514.P13983681209836071118

/-! ## A270514.P3465054165379157287

`A270509(A000124(n+6)-(n+1))`
-/

namespace A270514.P3465054165379157287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270509 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A270514.P3465054165379157287

/-!
# A270516: Number of ordered ways to write n = x^3*(x+1) + y*(y+1)/2 + z*(3z+2), where x and y are nonnegative integers, and z is an integer.

The programs for A270516, there is no canonical definition to state claims against.
-/

/-! ## A270516.P8270257966626653607

`A237053(10*A236233(n+7))`
-/

namespace A270516.P8270257966626653607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (10 * A236233 (n + 7)).toNat

end

end A270516.P8270257966626653607

/-! ## A270516.P17607315194770517190

`A355770(A320137(n+1)+A053575(n+1))`
-/

namespace A270516.P17607315194770517190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355770 (A320137 (n + 1) + A053575 (n + 1)).toNat

end

end A270516.P17607315194770517190

/-! ## A270516.P8022283287025794491

`A099910(xor(∑{e}[n+1, #], A294116(n)))`
-/

namespace A270516.P8022283287025794491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099910 (Int.xor ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A294116 n)).toNat

end

end A270516.P8022283287025794491

/-! ## A270516.P2486068045418387224

`A160651(n)-A127326(A127296(n))`
-/

namespace A270516.P2486068045418387224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160651 n - A127326 (A127296 n).toNat

end

end A270516.P2486068045418387224

/-! ## A270516.P14079974902272284708

`A120676(A133212(n))`
-/

namespace A270516.P14079974902272284708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120676 (A133212 n).toNat

end

end A270516.P14079974902272284708

/-!
# A270517: Denominators of r-Egyptian fraction expansion for sqrt(1/2), where r(k) = 1/k!.

The programs for A270517, there is no canonical definition to state claims against.
-/

/-! ## A270517.P14656934905620974017

`A133745(A133745(comp[n²]))`
-/

namespace A270517.P14656934905620974017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133745 (A133745 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A270517.P14656934905620974017

/-! ## A270517.P10010714830666103002

`A250245(A292017(n+1))+A000119(n)`
-/

namespace A270517.P10010714830666103002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250245 (A292017 (n + 1)).toNat + A000119 n

end

end A270517.P10010714830666103002

/-!
# A270521: Denominators of r-Egyptian fraction expansion for -1 + golden ratio, where r(k) = 1/k!.

The programs for A270521, there is no canonical definition to state claims against.
-/

/-! ## A270521.P10397566932797726321

`A266568(a(n-1))` with `a(0)=2, a(1)=5, a(2)=10`
-/

namespace A270521.P10397566932797726321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 10] fun n a =>
  A266568 (a (n - 1)).toNat

end

end A270521.P10397566932797726321

/-!
# A270525: Denominators of r-Egyptian fraction expansion for log(2), where r(k) = 1/k!.

The programs for A270525, there is no canonical definition to state claims against.
-/

/-! ## A270525.P16334772980579254391

`A014085(∏[abs(1-3*n)])+n`
-/

namespace A270525.P16334772980579254391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (∏ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A270525.P16334772980579254391

/-!
# A270527: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r(k) = 1/k!.

The programs for A270527, there is no canonical definition to state claims against.
-/

/-! ## A270527.P5355609070964792535

`A056155(n^(n+1)+2)`
-/

namespace A270527.P5355609070964792535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056155 (n ^ (n + 1) + 2)

end

end A270527.P5355609070964792535

/-!
# A270529: Sum of the sizes of the (n+1)-th blocks in all set partitions of {1,2,...,2n+1}.

The programs for A270529, there is no canonical definition to state claims against.
-/

/-! ## A270529.P3031244498616378994

`A270236(∑[4*n]+1)`
-/

namespace A270529.P3031244498616378994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270236 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A270529.P3031244498616378994

/-! ## A270529.P6009832348611209212

`record[A003982(n)*A270236(n+1)]`
-/

namespace A270529.P6009832348611209212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A270236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270529.P6009832348611209212

/-! ## A270529.P13962148843797266496

`record[gcd(A008482(n), A270236(n+1))]`
-/

namespace A270529.P13962148843797266496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008482 n) (A270236 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270529.P13962148843797266496

/-! ## A270529.P9189528660123946877

`A270236(A001844(n))^A178334(n)`
-/

namespace A270529.P9189528660123946877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270236 (A001844 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A270529.P9189528660123946877

/-! ## A270529.P7149367184263285033

`gcd(1-A000040(n+1)%2, A270236(A001844(n)))`
-/

namespace A270529.P7149367184263285033
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - Int.tmod (A000040 (n + 1)) 2) (A270236 (A001844 n).toNat)

end

end A270529.P7149367184263285033

/-!
# A270530: a(n) = Sum_{k=0..n}((binomial(2*k,k)/(k+1)*binomial(2*n+2,n-k))).

The programs for A270530, there is no canonical definition to state claims against.
-/

/-! ## A270530.P8022059916963356907

`A007856(n+2)-A007852(n+2)`
-/

namespace A270530.P8022059916963356907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007856 (n + 2) - A007852 (n + 2)

end

end A270530.P8022059916963356907

/-! ## A270530.P14354255200990860998

`A007856(n+2)+A007852(n+2)*A057428(n+1)`
-/

namespace A270530.P14354255200990860998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007856 (n + 2) + A007852 (n + 2) * A057428 (n + 1)

end

end A270530.P14354255200990860998

/-! ## A270530.P11769803798957421170

`A007856(n+2)+A007852(n+2)*A153881(n+2)`
-/

namespace A270530.P11769803798957421170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007856 (n + 2) + A007852 (n + 2) * A153881 (n + 2)

end

end A270530.P11769803798957421170

/-! ## A270530.P12687775845835823489

`A007856(A057428(n+1)²+n+1)%A007852(n+2)`
-/

namespace A270530.P12687775845835823489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007856 (A057428 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat) (A007852 (n + 2))

end

end A270530.P12687775845835823489

/-! ## A270530.P10529921330382914855

`A007856(A153881(n+1)²+n+1)%A007852(n+2)`
-/

namespace A270530.P10529921330382914855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007856 (A153881 (n + 1) ^ 2 + (n + 1 : ℤ)).toNat) (A007852 (n + 2))

end

end A270530.P10529921330382914855

/-!
# A270531: a(n) = Sum_{i=1..floor(n/2)} (i*(n-i))!.

The programs for A270531, there is no canonical definition to state claims against.
-/

/-! ## A270531.P17518776506758815116

`A025462(A163458(n)+1)`
-/

namespace A270531.P17518776506758815116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025462 (A163458 n + 1).toNat

end

end A270531.P17518776506758815116

/-! ## A270531.P15643706556007450230

`A397851(A044047(n+1))`
-/

namespace A270531.P15643706556007450230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397851 (A044047 (n + 1)).toNat

end

end A270531.P15643706556007450230

/-!
# A270532: Integers k such that A003266(p) is not divisible by p*(p+1)/2 where p is the k-th prime.

The programs for A270532, there is no canonical definition to state claims against.
-/

/-! ## A270532.P2966906539215452875

`A000720(A000057(n+1))`
-/

namespace A270532.P2966906539215452875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000057 (n + 1)).toNat

end

end A270532.P2966906539215452875

/-! ## A270532.P1946637363537142488

`A000720(p?[A064414(n+1)])`
-/

namespace A270532.P1946637363537142488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270532.P1946637363537142488

/-! ## A270532.P193757939817934048

`A061395(p?[A064414(n+1)])`
-/

namespace A270532.P193757939817934048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270532.P193757939817934048

/-! ## A270532.P7230576551918543238

`A297109(p?[A064414(n+1)])`
-/

namespace A270532.P7230576551918543238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297109 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270532.P7230576551918543238

/-! ## A270532.P7670183364622337474

`A061395(2*A000057(n+1))`
-/

namespace A270532.P7670183364622337474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A000057 (n + 1)).toNat

end

end A270532.P7670183364622337474

/-! ## A270532.P14896700006733015661

`A061395(lcm(2, A000057(n+1)))`
-/

namespace A270532.P14896700006733015661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lcm 2 (A000057 (n + 1)))

end

end A270532.P14896700006733015661

/-! ## A270532.P14370854716807088740

`A061395(or(2, A000057(n+1)))`
-/

namespace A270532.P14370854716807088740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 2 (A000057 (n + 1))).toNat

end

end A270532.P14370854716807088740

/-! ## A270532.P1282719295120036285

`lt[A000040(n+1), A001602(n+1)]+1`
-/

namespace A270532.P1282719295120036285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001602 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A270532.P1282719295120036285

/-! ## A270532.P16856326898639181947

`A056239(p?[A064414(n+1)])`
-/

namespace A270532.P16856326898639181947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064414 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A270532.P16856326898639181947

/-! ## A270532.P7815130692087655429

`A241919(A000057(n+1)%A017201(n))`
-/

namespace A270532.P7815130692087655429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (Int.tmod (A000057 (n + 1)) (A017201 n)).toNat

end

end A270532.P7815130692087655429

/-! ## A270532.P891227936688052124

`A241919(A000057(n+1))%A020732(n)`
-/

namespace A270532.P891227936688052124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241919 (A000057 (n + 1)).toNat) (A020732 n)

end

end A270532.P891227936688052124

/-! ## A270532.P15093953186611188086

`lt[A008578(n+1), A001177(A008578(n+1))]`
-/

namespace A270532.P15093953186611188086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A008578 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A270532.P15093953186611188086

/-! ## A270532.P8881315030455625759

`A241919(2*A000057(n+1)-A000057(n+1))`
-/

namespace A270532.P8881315030455625759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241919 (2 * A000057 (n + 1) - A000057 (n + 1)).toNat

end

end A270532.P8881315030455625759

/-!
# A270534: Numbers of m-equivalence (or maximal-equivalence) classes in the symmetric group S_n.

The programs for A270534, there is no canonical definition to state claims against.
-/

/-! ## A270534.P16990647830979995004

`∑[A124156(n*(3^(n-1)+5^(n-1))/2+2)]`
-/

namespace A270534.P16990647830979995004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124156 (SequenceMachineLib.roundAway ((n : ℚ) * (((3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + (5 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) / 2) + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270534.P16990647830979995004

/-! ## A270534.P1819074590680415524

`A211964(A151404(n+1))`
-/

namespace A270534.P1819074590680415524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (A151404 (n + 1)).toNat

end

end A270534.P1819074590680415524

/-!
# A270535: Integers k such that A001359(k) + A001359(k+3) = A001359(k+1) + A001359(k+2).

The programs for A270535, the canonical program `A270535.P6281251138440400066` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270535 has offset 1).

The definition of A270535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 310 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270535.P6281251138440400066

`eq[Δ[A067829(n+1)], A053319(n+2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A270535

/-- `eq[Δ[A067829(n+1)], A053319(n+2)]` -/
def P6281251138440400066.Spec : Prop :=
  ∀ n, (P6281251138440400066.a n : ℤ) = A270535 (n + 1)

theorem P6281251138440400066.correct : P6281251138440400066.Spec := by
  intro n
  simp only [A270535, Nat.add_sub_cancel]

end A270535

/-! ## A270535.P18253770285804491564

`eq[A053319(n+2), A053319(A028310(n))]`
-/

namespace A270535.P18253770285804491564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270535.P18253770285804491564

namespace A270535

/-- `eq[A053319(n+2), A053319(A028310(n))]` -/
def P18253770285804491564.Spec : Prop :=
  ∀ n, (P18253770285804491564.a n : ℤ) = A270535 (n + 1)

end A270535

/-! ## A270535.P15527866181689506061

`eq[A167132(n+2), A167132(A028310(n))]`
-/

namespace A270535.P15527866181689506061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270535.P15527866181689506061

namespace A270535

/-- `eq[A167132(n+2), A167132(A028310(n))]` -/
def P15527866181689506061.Spec : Prop :=
  ∀ n, (P15527866181689506061.a n : ℤ) = A270535 (n + 1)

end A270535

/-! ## A270535.P14817655783805902228

`eq[A204099(n+2), A204099(A028310(n))]`
-/

namespace A270535.P14817655783805902228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270535.P14817655783805902228

namespace A270535

/-- `eq[A204099(n+2), A204099(A028310(n))]` -/
def P14817655783805902228.Spec : Prop :=
  ∀ n, (P14817655783805902228.a n : ℤ) = A270535 (n + 1)

end A270535

/-! ## A270535.P5372241043560758278

`eq[A053319(A065033(2*n)), A053319(n+2)]`
-/

namespace A270535.P5372241043560758278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (A065033 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270535.P5372241043560758278

namespace A270535

/-- `eq[A053319(A065033(2*n)), A053319(n+2)]` -/
def P5372241043560758278.Spec : Prop :=
  ∀ n, (P5372241043560758278.a n : ℤ) = A270535 (n + 1)

end A270535

/-!
# A270538: Numbers k such that k = (d_1^1 + d_2^2 + d_3^3 + ...)^2, where d_i represents the i-th decimal digit of k.

The programs for A270538, there is no canonical definition to state claims against.
-/

/-! ## A270538.P15683550833100068491

`∑[4*(a(n-2)+2)]²` with `a(0)=0, a(1)=1`
-/

namespace A270538.P15683550833100068491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  4 * (f1 (n - 2) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A270538.P15683550833100068491

/-!
# A270539: Primes p such that gcd(phi(p-1), sigma(p-1)) = 1 with phi = A000010, sigma = A000203.

The programs for A270539, there is no canonical definition to state claims against.
-/

/-! ## A270539.P7030786300029088821

`p?[A055008(n+1)+1]`
-/

namespace A270539.P7030786300029088821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055008 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A270539.P7030786300029088821

/-! ## A270539.P17920877107278771322

`record[A020639(A055008(n+1)+1)]`
-/

namespace A270539.P17920877107278771322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A055008 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270539.P17920877107278771322

/-! ## A270539.P10053817104699403192

`record[A108077(A055008(n+1))]`
-/

namespace A270539.P10053817104699403192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108077 (A055008 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270539.P10053817104699403192

/-! ## A270539.P524253240341517934

`record[A014963(A055008(n+1)+1)]`
-/

namespace A270539.P524253240341517934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A055008 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270539.P524253240341517934

/-! ## A270539.P2901168104711980168

`record[A061397(A055008(n+1)+1)]`
-/

namespace A270539.P2901168104711980168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061397 (A055008 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270539.P2901168104711980168

/-!
# A270541: a(n) = A001359(n) - A001359(n+1) - A001359(n+2) + A001359(n+3).

The programs for A270541, the canonical program `A270541.P10360061445331281267` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270541 has offset 1).

The definition of A270541 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001359, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270541.P3967885193231177397

`A053319(n+3)-A053319(n+1)`
-/

namespace A270541.P3967885193231177397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 3) - A053319 (n + 1)

end

end A270541.P3967885193231177397

namespace A270541

/-- `A053319(n+3)-A053319(n+1)` -/
def P3967885193231177397.Spec : Prop :=
  ∀ n, P3967885193231177397.a n = A270541 (n + 1)

theorem P3967885193231177397.correct : P3967885193231177397.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P3967885193231177397.a, A270541.P10360061445331281267.a, A001359, A001359.P8865495035699438537.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270541

/-! ## A270541.P10360061445331281267

`A001359(n+1)-A001359(n+2)-A001359(n+3)+A001359(n+4)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A270541

/-- `A001359(n+1)-A001359(n+2)-A001359(n+3)+A001359(n+4)` -/
def P10360061445331281267.Spec : Prop :=
  ∀ n, P10360061445331281267.a n = A270541 (n + 1)

theorem P10360061445331281267.correct : P10360061445331281267.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel]

end A270541

/-! ## A270541.P5827152388294998059

`Δ[A053319(n+1)+A053319(n+2)]`
-/

namespace A270541.P5827152388294998059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053319 (n + 1) + A053319 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P5827152388294998059

namespace A270541

/-- `Δ[A053319(n+1)+A053319(n+2)]` -/
def P5827152388294998059.Spec : Prop :=
  ∀ n, P5827152388294998059.a n = A270541 (n + 1)

theorem P5827152388294998059.correct : P5827152388294998059.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P5827152388294998059.f1, A270541.P5827152388294998059.a, A270541.P10360061445331281267.a, A001359, A001359.P8865495035699438537.a, A053319, A053319.P1938654990887452238.f1, A053319.P1938654990887452238.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270541

/-! ## A270541.P14992688063895648579

`Δ[A001359(n+3)-A001359(n+1)]`
-/

namespace A270541.P14992688063895648579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 3) - A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P14992688063895648579

namespace A270541

/-- `Δ[A001359(n+3)-A001359(n+1)]` -/
def P14992688063895648579.Spec : Prop :=
  ∀ n, P14992688063895648579.a n = A270541 (n + 1)

theorem P14992688063895648579.correct : P14992688063895648579.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P14992688063895648579.f1, A270541.P14992688063895648579.a, A270541.P10360061445331281267.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A270541

/-! ## A270541.P3916441926940910485

`Δ[Δ[2*A074953(n+1)]]`
-/

namespace A270541.P3916441926940910485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074953 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P3916441926940910485

namespace A270541

/-- `Δ[Δ[2*A074953(n+1)]]` -/
def P3916441926940910485.Spec : Prop :=
  ∀ n, P3916441926940910485.a n = A270541 (n + 1)

end A270541

/-! ## A270541.P3719849395428904429

`A167132(n+3)-A167132(n+1)`
-/

namespace A270541.P3719849395428904429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 3) - A167132 (n + 1)

end

end A270541.P3719849395428904429

namespace A270541

/-- `A167132(n+3)-A167132(n+1)` -/
def P3719849395428904429.Spec : Prop :=
  ∀ n, P3719849395428904429.a n = A270541 (n + 1)

theorem P3719849395428904429.correct : P3719849395428904429.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P3719849395428904429.a, A270541.P10360061445331281267.a, A001359, A001359.P8865495035699438537.a, A167132, A167132.P340755037681699501.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270541

/-! ## A270541.P3890289217599918799

`Δ[A167132(n+1)+A167132(n+2)]`
-/

namespace A270541.P3890289217599918799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167132 (n + 1) + A167132 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P3890289217599918799

namespace A270541

/-- `Δ[A167132(n+1)+A167132(n+2)]` -/
def P3890289217599918799.Spec : Prop :=
  ∀ n, P3890289217599918799.a n = A270541 (n + 1)

theorem P3890289217599918799.correct : P3890289217599918799.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P3890289217599918799.f1, A270541.P3890289217599918799.a, A270541.P10360061445331281267.a, A001359, A001359.P8865495035699438537.a, A167132, A167132.P340755037681699501.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270541

/-! ## A270541.P7070651027162136020

`Δ[A006512(n+3)-A006512(n+1)]`
-/

namespace A270541.P7070651027162136020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 3) - A006512 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P7070651027162136020

namespace A270541

/-- `Δ[A006512(n+3)-A006512(n+1)]` -/
def P7070651027162136020.Spec : Prop :=
  ∀ n, P7070651027162136020.a n = A270541 (n + 1)

theorem P7070651027162136020.correct : P7070651027162136020.Spec := by
  intro n
  simp only [A270541, Nat.add_sub_cancel, A270541.P7070651027162136020.f1, A270541.P7070651027162136020.a, A270541.P10360061445331281267.a, A001359, A001359.P8865495035699438537.a, A006512, A006512.P8157243218962949380.a, A077800, A077800.P16009445446139691322.a, A096281, A096281.P9870488552655544131.a, A008619, A008619.P16053834178911111118.a, A014574, A014574.P4587706211531852143.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270541

/-! ## A270541.P13645495350281812008

`Δ[A014574(n+3)-A014574(n+1)]`
-/

namespace A270541.P13645495350281812008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 3) - A014574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P13645495350281812008

namespace A270541

/-- `Δ[A014574(n+3)-A014574(n+1)]` -/
def P13645495350281812008.Spec : Prop :=
  ∀ n, P13645495350281812008.a n = A270541 (n + 1)

end A270541

/-! ## A270541.P14675244183430990795

`Δ[Δ[A096281(2*(n+1))]]`
-/

namespace A270541.P14675244183430990795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096281 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P14675244183430990795

namespace A270541

/-- `Δ[Δ[A096281(2*(n+1))]]` -/
def P14675244183430990795.Spec : Prop :=
  ∀ n, P14675244183430990795.a n = A270541 (n + 1)

end A270541

/-! ## A270541.P10249245278234614607

`Δ[A094743(n+4)-p?[A000040(n+1)-2]]`
-/

namespace A270541.P10249245278234614607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094743 (n + 4) - f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270541.P10249245278234614607

namespace A270541

/-- `Δ[A094743(n+4)-p?[A000040(n+1)-2]]` -/
def P10249245278234614607.Spec : Prop :=
  ∀ n, P10249245278234614607.a n = A270541 (n + 1)

end A270541

/-!
# A270542: Numbers of the form (pq)^2, where p is the number of digits of n (A055642) and q is the sum of the digits of n (A007953).

The programs for A270542, there is no canonical definition to state claims against.
-/

/-! ## A270542.P12461268883074664906

`(A307652(n+2)%A078362(n))²`
-/

namespace A270542.P12461268883074664906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A307652 (n + 2)) (A078362 n) ^ 2

end

end A270542.P12461268883074664906

/-!
# A270543: Number of ordered pairs (i,j) of integers with |i|, |j| <= n, |i * j| <= n, and i even.

The programs for A270543, the canonical program `A270543.P5734163756768148192` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270543 has offset 0).

The definition of A270543 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226355, A270544, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A270543.P5734163756768148192

`A226355(n)-A270544(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A270543

/-- `A226355(n)-A270544(n)` -/
def P5734163756768148192.Spec : Prop :=
  ∀ n, P5734163756768148192.a n = A270543 n

theorem P5734163756768148192.correct : P5734163756768148192.Spec := by
  intro n
  simp only [A270543]

end A270543

/-! ## A270543.P3799176567432292262

`4*A006590(n+1)-3-A270544(n)`
-/

namespace A270543.P3799176567432292262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A006590 (n + 1) - 3 - A270544 n

end

end A270543.P3799176567432292262

namespace A270543

/-- `4*A006590(n+1)-3-A270544(n)` -/
def P3799176567432292262.Spec : Prop :=
  ∀ n, P3799176567432292262.a n = A270543 n

end A270543

/-! ## A270543.P14675784943032657867

`A016813(A006218(n)+n)-A270544(n)`
-/

namespace A270543.P14675784943032657867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A006218 n + (n : ℤ)).toNat - A270544 n

end

end A270543.P14675784943032657867

namespace A270543

/-- `A016813(A006218(n)+n)-A270544(n)` -/
def P14675784943032657867.Spec : Prop :=
  ∀ n, P14675784943032657867.a n = A270543 n

end A270543

/-! ## A270543.P7954090694748298556

`A325129(lt[A325139(n+3), A325131(2*(n+2))])`
-/

namespace A270543.P7954090694748298556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325139 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325131 (2 * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325129 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270543.P7954090694748298556

namespace A270543

/-- `A325129(lt[A325139(n+3), A325131(2*(n+2))])` -/
def P7954090694748298556.Spec : Prop :=
  ∀ n, P7954090694748298556.a n = A270543 n

end A270543

/-! ## A270543.P3042087737357853622

`A277022(A109613(n))+A328770(n+1)^A103181(n)!`
-/

namespace A270543.P3042087737357853622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277022 (A109613 n).toNat + A328770 (n + 1) ^ Nat.factorial (A103181 n).toNat

end

end A270543.P3042087737357853622

namespace A270543

/-- `A277022(A109613(n))+A328770(n+1)^A103181(n)!` -/
def P3042087737357853622.Spec : Prop :=
  ∀ n, P3042087737357853622.a n = A270543 n

end A270543

/-!
# A270544: Number of ordered pairs (i,j) with |i|, |j| <= n, |i * j| <= n, and i odd.

The programs for A270544, the canonical program `A270544.P6791323703914777716` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270544 has offset 0).

The definition of A270544 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A270544.P7762844001390765768

`A226355(n)-A270543(n)`
-/

namespace A270544.P7762844001390765768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226355 n - A270543 n

end

end A270544.P7762844001390765768

namespace A270544

/-- `A226355(n)-A270543(n)` -/
def P7762844001390765768.Spec : Prop :=
  ∀ n, P7762844001390765768.a n = A270544 n

theorem P7762844001390765768.correct : P7762844001390765768.Spec := by
  intro n
  simp only [A270544, Nat.add_sub_cancel, A270544.P7762844001390765768.a, A270544.P6791323703914777716.a, A060831, A060831.P8526254986242244020.a, A226355, A226355.P11003096191181495319.f2, A226355.P11003096191181495319.f1, A226355.P11003096191181495319.a, A270543, A270543.P5734163756768148192.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270544

/-! ## A270544.P6791323703914777716

`4*A060831(n)+n%2+n`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A270544

/-- `4*A060831(n)+n%2+n` -/
def P6791323703914777716.Spec : Prop :=
  ∀ n, P6791323703914777716.a n = A270544 n

theorem P6791323703914777716.correct : P6791323703914777716.Spec := by
  intro n
  simp only [A270544]

end A270544

/-! ## A270544.P11754364152316127

`4*A060831(n)+A000035(n)+n`
-/

namespace A270544.P11754364152316127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A060831 n + (A000035 n + (n : ℤ))

end

end A270544.P11754364152316127

namespace A270544

/-- `4*A060831(n)+A000035(n)+n` -/
def P11754364152316127.Spec : Prop :=
  ∀ n, P11754364152316127.a n = A270544 n

theorem P11754364152316127.correct : P11754364152316127.Spec := by
  intro n
  simp only [A270544, Nat.add_sub_cancel, A270544.P11754364152316127.a, A270544.P6791323703914777716.a, A000035, A000035.P2023072528413494694.a, A060831, A060831.P8526254986242244020.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A270544

/-! ## A270544.P15679544339592814923

`A146951(n)+A008586(A248517(n))`
-/

namespace A270544.P15679544339592814923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 n + A008586 (A248517 n).toNat

end

end A270544.P15679544339592814923

namespace A270544

/-- `A146951(n)+A008586(A248517(n))` -/
def P15679544339592814923.Spec : Prop :=
  ∀ n, P15679544339592814923.a n = A270544 n

end A270544

/-! ## A270544.P1649766859603975500

`2*(A110654(n)+A005843(A060831(n)))`
-/

namespace A270544.P1649766859603975500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A110654 n + A005843 (A060831 n).toNat)

end

end A270544.P1649766859603975500

namespace A270544

/-- `2*(A110654(n)+A005843(A060831(n)))` -/
def P1649766859603975500.Spec : Prop :=
  ∀ n, P1649766859603975500.a n = A270544 n

end A270544

/-! ## A270544.P8419186820341972751

`A005843(A110654(n)+A005843(A060831(n)))`
-/

namespace A270544.P8419186820341972751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A110654 n + A005843 (A060831 n).toNat).toNat

end

end A270544.P8419186820341972751

namespace A270544

/-- `A005843(A110654(n)+A005843(A060831(n)))` -/
def P8419186820341972751.Spec : Prop :=
  ∀ n, P8419186820341972751.a n = A270544 n

end A270544

/-!
# A270545: Number of equilateral triangle units forming perimeter of equilateral triangle.

The programs for A270545, the canonical program `A270545.P10861919917999691608` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270545 has offset 0).

The definition of A270545 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270545.P10861919917999691608

`2*a(n-1)-a(n-2)` with `a(0)=1, a(1)=4, a(2)=9, a(3)=15`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270545

/-- `2*a(n-1)-a(n-2)` -/
def P10861919917999691608.Spec : Prop :=
  ∀ n, P10861919917999691608.a n = A270545 n

theorem P10861919917999691608.correct : P10861919917999691608.Spec := by
  intro n
  simp only [A270545]

end A270545

/-!
# A270549: Denominators of r-Egyptian fraction expansion for sqrt(3) - 1, where r(k) = 1/(2k-1).

The programs for A270549, there is no canonical definition to state claims against.
-/

/-! ## A270549.P1070743612065510419

`A298076(∑[n!])`
-/

namespace A270549.P1070743612065510419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298076 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270549.P1070743612065510419

/-!
# A270557: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r(k) = 1/(2k-1).

The programs for A270557, there is no canonical definition to state claims against.
-/

/-! ## A270557.P3992592580206222701

`A288567(n)+A130941(A288568(n))`
-/

namespace A270557.P3992592580206222701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288567 n + A130941 (A288568 n).toNat

end

end A270557.P3992592580206222701

/-! ## A270557.P8037940026175634486

`A319765(A324838(n+1))+A227038(n)`
-/

namespace A270557.P8037940026175634486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319765 (A324838 (n + 1)).toNat + A227038 n

end

end A270557.P8037940026175634486

/-!
# A270559: Number of ordered ways to write n as x^4 + x^3 + y^2 + z*(z+1)/2, where x, y and z are integers with x nonzero, y nonnegative and z positive.

The programs for A270559, there is no canonical definition to state claims against.
-/

/-! ## A270559.P17200821542695993836

`A179752(gcd(A006171(n), A341743(n)))`
-/

namespace A270559.P17200821542695993836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179752 (Int.gcd (A006171 n) (A341743 n))

end

end A270559.P17200821542695993836

/-! ## A270559.P16796236845996653061

`A333939(A007602(n+1))+A037825(2*(n+2))`
-/

namespace A270559.P16796236845996653061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333939 (A007602 (n + 1)).toNat + A037825 (2 * (n + 2))

end

end A270559.P16796236845996653061

/-!
# A270560: a(n) = Sum_{i=0..n/2}((binomial(2*i+1,i)*binomial(2*n+2,n-2*i))/(2*i+1)).

The programs for A270560, there is no canonical definition to state claims against.
-/

/-! ## A270560.P5254554405207898200

`A289441(A126190(n)+A004171(n))`
-/

namespace A270560.P5254554405207898200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (A126190 n + A004171 n).toNat

end

end A270560.P5254554405207898200

/-! ## A270560.P11749639992235487713

`A215008(n)-A038608(A026671(n))`
-/

namespace A270560.P11749639992235487713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215008 n - A038608 (A026671 n).toNat

end

end A270560.P11749639992235487713

/-!
# A270561: Binomial transform(2) of Motzkin numbers.

The programs for A270561, there is no canonical definition to state claims against.
-/

/-! ## A270561.P16762348785488340795

`A106618(A108081(n))+A001076(n)`
-/

namespace A270561.P16762348785488340795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (A108081 n).toNat + A001076 n

end

end A270561.P16762348785488340795

/-! ## A270561.P16916232508576339874

`A257838(n)+A028310(A176280(n))`
-/

namespace A270561.P16916232508576339874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257838 n + A028310 (A176280 n).toNat

end

end A270561.P16916232508576339874

/-! ## A270561.P253961646195871379

`A028310(A176280(n))+A010756(3*n+1)`
-/

namespace A270561.P253961646195871379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A176280 n).toNat + A010756 (3 * n + 1)

end

end A270561.P253961646195871379

/-!
# A270562: a(n) is the largest number m satisfying lambda(m)=n, or zero if there is no solution, where lambda(m) is Carmichael's lambda function A002322(m).

The programs for A270562, there is no canonical definition to state claims against.
-/

/-! ## A270562.P17090614744747344090

`lcm(A079612(n+1), A134451(A321713(n+1)))`
-/

namespace A270562.P17090614744747344090
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079612 (n + 1)) (A134451 (A321713 (n + 1)).toNat)

end

end A270562.P17090614744747344090

/-! ## A270562.P4580731949933502675

`lcm(A079612(n+1), A141162(n+1))`
-/

namespace A270562.P4580731949933502675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079612 (n + 1)) (A141162 (n + 1))

end

end A270562.P4580731949933502675

/-! ## A270562.P3308994212731608680

`lcm(((2*n+3)%(n+1)+1)*A075180(n), A134451(A341825(n+1)))`
-/

namespace A270562.P3308994212731608680
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((((2 * n + 3) % (n + 1) + 1 : ℕ) : ℤ) * A075180 n) (A134451 (A341825 (n + 1)).toNat)

end

end A270562.P3308994212731608680

/-! ## A270562.P8959939695241801178

`A000027(A079612(n+1))*A264739(n+1)`
-/

namespace A270562.P8959939695241801178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A079612 (n + 1)).toNat * A264739 (n + 1)

end

end A270562.P8959939695241801178

/-! ## A270562.P10904512638552575716

`lcm(A000027(A079612(n+1)), A049283(n+1))`
-/

namespace A270562.P10904512638552575716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (A079612 (n + 1)).toNat) (A049283 (n + 1))

end

end A270562.P10904512638552575716

/-!
# A270563: Integers k such that A086167(k) and A086168(k) are both prime.

The programs for A270563, there is no canonical definition to state claims against.
-/

/-! ## A270563.P18240862419709618578

`record[A100781(A099850(2*(n+1)))]`
-/

namespace A270563.P18240862419709618578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100781 (A099850 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270563.P18240862419709618578

/-! ## A270563.P7802325716390761863

`record[gcd(A100655(3*n+2), A290030(n))]`
-/

namespace A270563.P7802325716390761863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A100655 (3 * n + 2)) (A290030 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270563.P7802325716390761863

/-!
# A270564: Terms of A143407, sorted.

The programs for A270564, there is no canonical definition to state claims against.
-/

/-! ## A270564.P8045733739552583175

`record[A079612(∑[A148449(n)])]`
-/

namespace A270564.P8045733739552583175
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A148449 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079612 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270564.P8045733739552583175

/-!
# A270565: Number of active (ON, black) cells at stage 2^n-1 of the two-dimensional cellular automaton defined by "Rule 315", based on the 5-celled von Neumann neighborhood.

The programs for A270565, there is no canonical definition to state claims against.
-/

/-! ## A270565.P6583353504581013210

`A266206(2^n-1)`
-/

namespace A270565.P6583353504581013210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (2 ^ n - 1)

end

end A270565.P6583353504581013210

/-! ## A270565.P14439442928135103789

`record[A266206(A006068(n))]`
-/

namespace A270565.P14439442928135103789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (A006068 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270565.P14439442928135103789

/-! ## A270565.P10610116495151195848

`record[A266206(A173787(n))]`
-/

namespace A270565.P10610116495151195848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (A173787 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270565.P10610116495151195848

/-! ## A270565.P5128582856714772067

`record[A266206(A227351(n))]`
-/

namespace A270565.P5128582856714772067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (A227351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270565.P5128582856714772067

/-! ## A270565.P15829150070930634177

`record[A266206(A232751(n))]`
-/

namespace A270565.P15829150070930634177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266206 (A232751 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270565.P15829150070930634177

/-!
# A270568: Expansion of g.f. (1+4*x)/(1-8*x).

The programs for A270568, the canonical program `A270568.P3491644930804842034` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270568 has offset 0).

The definition of A270568 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+4x)/(1-8x))` (program `A270568.P3491644930804842034`, by `A270568.P3491644930804842034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270568.P3491644930804842034

`ogf((1+4x)/(1-8x))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270568

/-- `ogf((1+4x)/(1-8x))` -/
def P3491644930804842034.Spec : Prop :=
  ∀ n, P3491644930804842034.a n = A270568 n

theorem P3491644930804842034.correct : P3491644930804842034.Spec := by
  intro n
  simp only [A270568]

end A270568

/-! ## A270568.P14083973532345934882

`8*a(n-1)` with `a(0)=1, a(1)=12`
-/

namespace A270568.P14083973532345934882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 12] fun n a =>
  8 * a (n - 1)

end

end A270568.P14083973532345934882

namespace A270568

/-- `8*a(n-1)` -/
def P14083973532345934882.Spec : Prop :=
  ∀ n, (P14083973532345934882.a n : ℤ) = A270568 n

end A270568

/-! ## A270568.P3752904154731367936

`floor(3/2*8^n)`
-/

namespace A270568.P3752904154731367936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (8 ^ n : ℚ)⌋

end

end A270568.P3752904154731367936

namespace A270568

/-- `floor(3/2*8^n)` -/
def P3752904154731367936.Spec : Prop :=
  ∀ n, P3752904154731367936.a n = A270568 n

end A270568

/-! ## A270568.P10852739049223577841

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=12, a(2)=8`
-/

namespace A270568.P10852739049223577841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 12, 8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270568.P10852739049223577841

namespace A270568

/-- `abs(∏[-a(n-1)])` -/
def P10852739049223577841.Spec : Prop :=
  ∀ n, P10852739049223577841.a n = A270568 n

end A270568

/-! ## A270568.P13166800575550403348

`or(8^n, floor(8^n/2))`
-/

namespace A270568.P13166800575550403348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (8 ^ n : ℤ) ⌊(8 ^ n : ℚ) / 2⌋

end

end A270568.P13166800575550403348

namespace A270568

/-- `or(8^n, floor(8^n/2))` -/
def P13166800575550403348.Spec : Prop :=
  ∀ n, P13166800575550403348.a n = A270568 n

end A270568

/-! ## A270568.P2704797887114256879

`Δ[A380001(n)]`
-/

namespace A270568.P2704797887114256879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A270568.P2704797887114256879

namespace A270568

/-- `Δ[A380001(n)]` -/
def P2704797887114256879.Spec : Prop :=
  ∀ n, P2704797887114256879.a n = A270568 n

end A270568

/-! ## A270568.P12481315145511254123

`A003945(3*n)`
-/

namespace A270568.P12481315145511254123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 (3 * n)

end

end A270568.P12481315145511254123

namespace A270568

/-- `A003945(3*n)` -/
def P12481315145511254123.Spec : Prop :=
  ∀ n, P12481315145511254123.a n = A270568 n

end A270568

/-! ## A270568.P1275334276165254980

`A074323(6*n)`
-/

namespace A270568.P1275334276165254980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (6 * n)

end

end A270568.P1275334276165254980

namespace A270568

/-- `A074323(6*n)` -/
def P1275334276165254980.Spec : Prop :=
  ∀ n, P1275334276165254980.a n = A270568 n

end A270568

/-! ## A270568.P4872392528457424271

`A206917(Δ[n²])`
-/

namespace A270568.P4872392528457424271
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206917 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A270568.P4872392528457424271

namespace A270568

/-- `A206917(Δ[n²])` -/
def P4872392528457424271.Spec : Prop :=
  ∀ n, P4872392528457424271.a n = A270568 n

end A270568

/-! ## A270568.P11046300098600426316

`record[A164675(n+1)]`
-/

namespace A270568.P11046300098600426316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164675 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270568.P11046300098600426316

namespace A270568

/-- `record[A164675(n+1)]` -/
def P11046300098600426316.Spec : Prop :=
  ∀ n, P11046300098600426316.a n = A270568 n

end A270568

/-! ## A270568.P8660832521657993311

`A055010(3*n)+1`
-/

namespace A270568.P8660832521657993311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055010 (3 * n) + 1

end

end A270568.P8660832521657993311

namespace A270568

/-- `A055010(3*n)+1` -/
def P8660832521657993311.Spec : Prop :=
  ∀ n, P8660832521657993311.a n = A270568 n

end A270568

/-! ## A270568.P14283316504518519324

`A111286(3*n+1)`
-/

namespace A270568.P14283316504518519324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111286 (3 * n + 1)

end

end A270568.P14283316504518519324

namespace A270568

/-- `A111286(3*n+1)` -/
def P14283316504518519324.Spec : Prop :=
  ∀ n, P14283316504518519324.a n = A270568 n

end A270568

/-! ## A270568.P2453355899907014425

`A122391(3*n+2)`
-/

namespace A270568.P2453355899907014425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122391 (3 * n + 2)

end

end A270568.P2453355899907014425

namespace A270568

/-- `A122391(3*n+2)` -/
def P2453355899907014425.Spec : Prop :=
  ∀ n, P2453355899907014425.a n = A270568 n

end A270568

/-! ## A270568.P17824627637642568804

`A029744(6*n+1)`
-/

namespace A270568.P17824627637642568804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (6 * n + 1)

end

end A270568.P17824627637642568804

namespace A270568

/-- `A029744(6*n+1)` -/
def P17824627637642568804.Spec : Prop :=
  ∀ n, P17824627637642568804.a n = A270568 n

end A270568

/-! ## A270568.P2299154607939458268

`2^n*A164908(n)`
-/

namespace A270568.P2299154607939458268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A164908 n

end

end A270568.P2299154607939458268

namespace A270568

/-- `2^n*A164908(n)` -/
def P2299154607939458268.Spec : Prop :=
  ∀ n, P2299154607939458268.a n = A270568 n

end A270568

/-! ## A270568.P15326777122730285022

`Δ[A081294(n)]*2^n`
-/

namespace A270568.P15326777122730285022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081294 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (2 ^ n : ℤ)

end

end A270568.P15326777122730285022

namespace A270568

/-- `Δ[A081294(n)]*2^n` -/
def P15326777122730285022.Spec : Prop :=
  ∀ n, P15326777122730285022.a n = A270568 n

end A270568

/-! ## A270568.P17854926397732973058

`(A000040(n+1)%2/2+1)*8^n`
-/

namespace A270568.P17854926397732973058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.tmod (A000040 (n + 1)) 2 : ℚ) / 2 + 1) * (8 ^ n : ℚ)

end

end A270568.P17854926397732973058

namespace A270568

/-- `(A000040(n+1)%2/2+1)*8^n` -/
def P17854926397732973058.Spec : Prop :=
  ∀ n, P17854926397732973058.a n = (A270568 n : ℚ)

end A270568

/-! ## A270568.P515864858120280311

`A082505(A008486(n))`
-/

namespace A270568.P515864858120280311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082505 (A008486 n).toNat

end

end A270568.P515864858120280311

namespace A270568

/-- `A082505(A008486(n))` -/
def P515864858120280311.Spec : Prop :=
  ∀ n, P515864858120280311.a n = A270568 n

end A270568

/-! ## A270568.P15017477613627763090

`A164675(A004277(n))`
-/

namespace A270568.P15017477613627763090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164675 (A004277 n).toNat

end

end A270568.P15017477613627763090

namespace A270568

/-- `A164675(A004277(n))` -/
def P15017477613627763090.Spec : Prop :=
  ∀ n, P15017477613627763090.a n = A270568 n

end A270568

/-! ## A270568.P5345084676657666755

`A246074(A019557(n))`
-/

namespace A270568.P5345084676657666755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246074 (A019557 n).toNat

end

end A270568.P5345084676657666755

namespace A270568

/-- `A246074(A019557(n))` -/
def P5345084676657666755.Spec : Prop :=
  ∀ n, P5345084676657666755.a n = A270568 n

end A270568

/-!
# A270569: Number of active (ON, black) cells in n-th stage of growth of two-dimensional cellular automaton defined by "Rule 323", based on the 5-celled von Neumann neighborhood.

The programs for A270569, there is no canonical definition to state claims against.
-/

/-! ## A270569.P6183074778404298074

`A269782(char[1]+n)`
-/

namespace A270569.P6183074778404298074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 ((if ∃ j, f1 j = n then 1 else 0) + n)

end

end A270569.P6183074778404298074

/-! ## A270569.P11964424732051909613

`or(char[1], A269782(n))`
-/

namespace A270569.P11964424732051909613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A269782 n)

end

end A270569.P11964424732051909613

/-! ## A270569.P17842311207067367627

`char[1]+∑[A270086(abs(1-n))]`
-/

namespace A270569.P17842311207067367627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270086 |1 - (n : ℤ)|.toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A270569.P17842311207067367627

/-! ## A270569.P13965414061840316748

`A271256(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A270569.P13965414061840316748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271256 (n - 1) + a (n - 1)

end

end A270569.P13965414061840316748

/-! ## A270569.P10346104095745154860

`A269782(n)+A063524(n)`
-/

namespace A270569.P10346104095745154860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A063524 n

end

end A270569.P10346104095745154860

/-! ## A270569.P13169169170012347462

`A269782(n)-A159075(n)`
-/

namespace A270569.P13169169170012347462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n - A159075 n

end

end A270569.P13169169170012347462

/-! ## A270569.P14280990842014127132

`Δ[A271255(n)]-A271256(n)`
-/

namespace A270569.P14280990842014127132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A271256 n

end

end A270569.P14280990842014127132

/-! ## A270569.P14735795824412395765

`xor(char[A017286(n)], A269782(n))`
-/

namespace A270569.P14735795824412395765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017286 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) (A269782 n)

end

end A270569.P14735795824412395765

/-! ## A270569.P13263324292218431582

`A269782(n)+A002088(n)%2`
-/

namespace A270569.P13263324292218431582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + Int.tmod (A002088 n) 2

end

end A270569.P13263324292218431582

/-! ## A270569.P10740212550710386639

`A254667(n)+A269782(n)-n`
-/

namespace A270569.P10740212550710386639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n + (A269782 n - (n : ℤ))

end

end A270569.P10740212550710386639

/-! ## A270569.P7323914409580460840

`xor(char[1]*A009001(n), A269782(n))`
-/

namespace A270569.P7323914409580460840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A009001 n) (A269782 n)

end

end A270569.P7323914409580460840

/-! ## A270569.P11053322192850001656

`A269782(n)+A000007(A123108(n))`
-/

namespace A270569.P11053322192850001656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A000007 (A123108 n).toNat

end

end A270569.P11053322192850001656

/-! ## A270569.P3086231990921742951

`A269782(n)+A098108(A335834(n))`
-/

namespace A270569.P3086231990921742951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A098108 (A335834 n).toNat

end

end A270569.P3086231990921742951

/-! ## A270569.P9249084019595397158

`A271255(n+1)-(A271256(n)+A271255(n))`
-/

namespace A270569.P9249084019595397158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271255 (n + 1) - (A271256 n + A271255 n)

end

end A270569.P9249084019595397158

/-! ## A270569.P11953195650826091425

`A269782(n)+A010051(A058054(n+2))`
-/

namespace A270569.P11953195650826091425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + A010051 (A058054 (n + 2)).toNat

end

end A270569.P11953195650826091425

/-! ## A270569.P18033557502668000905

`A269782(n)+A271254(n)-A270084(n)`
-/

namespace A270569.P18033557502668000905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269782 n + (A271254 n - A270084 n)

end

end A270569.P18033557502668000905

/-!
# A270570: Largest number in the sequence for the Collatz problem (excluding the original number) when started at n.

The programs for A270570, there is no canonical definition to state claims against.
-/

/-! ## A270570.P11046400789776001368

`A025586(gcd(n+2, ∑[n+1]))`
-/

namespace A270570.P11046400789776001368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (Nat.gcd (n + 2) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A270570.P11046400789776001368

/-! ## A270570.P11426879039321760762

`A025586(A145051(n+1))`
-/

namespace A270570.P11426879039321760762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A145051 (n + 1)).toNat

end

end A270570.P11426879039321760762

/-! ## A270570.P11799514820710603450

`A025586(A026741(n+2))`
-/

namespace A270570.P11799514820710603450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A026741 (n + 2)).toNat

end

end A270570.P11799514820710603450

/-! ## A270570.P12264994980102468045

`A025586(abs(A030640(n+1)))`
-/

namespace A270570.P12264994980102468045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 |A030640 (n + 1)|.toNat

end

end A270570.P12264994980102468045

/-! ## A270570.P16048966348269856308

`A025586((n+2)/A000034(n+1))`
-/

namespace A270570.P16048966348269856308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.roundAway ((n + 2 : ℚ) / (A000034 (n + 1) : ℚ))).toNat

end

end A270570.P16048966348269856308

/-! ## A270570.P14965288834807777151

`A025586(∑[2-A014682(n+1)+n]+1)`
-/

namespace A270570.P14965288834807777151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A014682 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A270570.P14965288834807777151

/-! ## A270570.P18198436504800449881

`A025586(A062828(n+2))`
-/

namespace A270570.P18198436504800449881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A062828 (n + 2)).toNat

end

end A270570.P18198436504800449881

/-! ## A270570.P17941660496130993864

`A025586(A176743(n))`
-/

namespace A270570.P17941660496130993864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A176743 n).toNat

end

end A270570.P17941660496130993864

/-! ## A270570.P5782657199618579909

`A025586(A006370(n+2))`
-/

namespace A270570.P5782657199618579909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A006370 (n + 2)).toNat

end

end A270570.P5782657199618579909

/-! ## A270570.P18338406667305763341

`A375955(A093005(n+2))`
-/

namespace A270570.P18338406667305763341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375955 (A093005 (n + 2)).toNat

end

end A270570.P18338406667305763341

/-!
# A270571: Numbers with at least one arithmetic progression of four consecutive divisors.

The programs for A270571, there is no canonical definition to state claims against.
-/

/-! ## A270571.P6624635809728262523

`A094529(lt[A094501(n), A094527(3*n+4)])`
-/

namespace A270571.P6624635809728262523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094529 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A270571.P6624635809728262523

/-! ## A270571.P3637507523346061125

`∩[A094529(n+1), A239064(n+1)]`
-/

namespace A270571.P3637507523346061125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239064 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270571.P3637507523346061125

/-! ## A270571.P2632155392228441812

`A094529(∑[A299905(n)!])`
-/

namespace A270571.P2632155392228441812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A299905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094529 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270571.P2632155392228441812

/-! ## A270571.P10605132730501945433

`A094529(∑[A331126(n)!])`
-/

namespace A270571.P10605132730501945433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A331126 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094529 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270571.P10605132730501945433

/-! ## A270571.P4839380750360848651

`∩[A094529(n+1), A140489(n+1)]`
-/

namespace A270571.P4839380750360848651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270571.P4839380750360848651

/-!
# A270572: a(1)=3; thereafter a(n) is the number of occurrences of a(n-1) in {a(1), ... , a(n-1)}.

The programs for A270572, there is no canonical definition to state claims against.
-/

/-! ## A270572.P14042969446153189067

`A323638(n+7)-A000265(A000079(n))`
-/

namespace A270572.P14042969446153189067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 7) - A000265 (A000079 n).toNat

end

end A270572.P14042969446153189067

/-! ## A270572.P15454694759461008428

`A323638(n+7)-A003849(A020706(n))`
-/

namespace A270572.P15454694759461008428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 7) - A003849 (A020706 n).toNat

end

end A270572.P15454694759461008428

/-! ## A270572.P8177198050842387472

`A323638(n+7)-A036987(A000225(n))`
-/

namespace A270572.P8177198050842387472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 7) - A036987 (A000225 n).toNat

end

end A270572.P8177198050842387472

/-! ## A270572.P4548264489271426365

`A323638(n+7)-A008480(A056449(n))`
-/

namespace A270572.P4548264489271426365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 7) - A008480 (A056449 n).toNat

end

end A270572.P4548264489271426365

/-! ## A270572.P9598921689425858291

`A323638(n+7)-A001222(A005420(n+2))`
-/

namespace A270572.P9598921689425858291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323638 (n + 7) - A001222 (A005420 (n + 2)).toNat

end

end A270572.P9598921689425858291

/-!
# A270573: Let c be the n-th composite number. a(n) is the number of composites d < c such that c^(d-1) == 1 (mod d) and d^(c-1) == 1 (mod c).

The programs for A270573, there is no canonical definition to state claims against.
-/

/-! ## A270573.P8576872418352966267

`A268310(n+1)%dr(A031285(n))`
-/

namespace A270573.P8576872418352966267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A268310 (n + 1)) (SequenceMachineLib.digitalRoot (A031285 n) : ℤ)

end

end A270573.P8576872418352966267

/-! ## A270573.P8423317093056357604

`A018252(n+2)%A176170(A176151(n))`
-/

namespace A270573.P8423317093056357604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018252 (n + 2)) (A176170 (A176151 n).toNat)

end

end A270573.P8423317093056357604

/-! ## A270573.P18357856303774626829

`A002808(n+1)%A020639(A109027(3*n+5))`
-/

namespace A270573.P18357856303774626829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002808 (n + 1)) (A020639 (A109027 (3 * n + 5)).toNat)

end

end A270573.P18357856303774626829

/-! ## A270573.P8590686430616116454

`(lt[1, A001222(n+1)]+1)%A176170(A176151(n))`
-/

namespace A270573.P8590686430616116454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) (A176170 (A176151 n).toNat)

end

end A270573.P8590686430616116454

/-! ## A270573.P16643599575977521474

`and(A268310(n+1), A294682(n+1))`
-/

namespace A270573.P16643599575977521474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A268310 (n + 1)) (A294682 (n + 1))

end

end A270573.P16643599575977521474

/-!
# A270574: Composites c where at least one composite d with d < c exists such that c^(d-1) == 1 (mod d) and d^(c-1) == 1 (mod c).

The programs for A270574, there is no canonical definition to state claims against.
-/

/-! ## A270574.P9442929192338581463

`eq[A035214(A154293(n+1)), A107393(n)]`
-/

namespace A270574.P9442929192338581463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A154293 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107393 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A270574.P9442929192338581463

/-! ## A270574.P2578962741243726085

`∩[A196547(n+1), A210147(n+1)]`
-/

namespace A270574.P2578962741243726085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270574.P2578962741243726085

/-! ## A270574.P609512927464204351

`∩[A196547(n+1), A309265(n+1)]`
-/

namespace A270574.P609512927464204351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270574.P609512927464204351

/-! ## A270574.P10504945976903263965

`∩[A196547(n+1), A309404(n+1)]`
-/

namespace A270574.P10504945976903263965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270574.P10504945976903263965

/-! ## A270574.P3928116835200730726

`∩[A078505(n+1), A138884(n+1)]`
-/

namespace A270574.P3928116835200730726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270574.P3928116835200730726

/-!
# A270576: Expansion of g.f. (1+2*x)/(1-6*x).

The programs for A270576, the canonical program `A270576.P5371350819923099633` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270576 has offset 0).

The definition of A270576 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x)/(1-6x))` (program `A270576.P5371350819923099633`, by `A270576.P5371350819923099633.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A270576.P5371350819923099633

`ogf((1+2x)/(1-6x))`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A270576

/-- `ogf((1+2x)/(1-6x))` -/
def P5371350819923099633.Spec : Prop :=
  ∀ n, P5371350819923099633.a n = A270576 n

theorem P5371350819923099633.correct : P5371350819923099633.Spec := by
  intro n
  simp only [A270576]

end A270576

/-! ## A270576.P2131877841612411675

`6*a(n-1)` with `a(0)=1, a(1)=8`
-/

namespace A270576.P2131877841612411675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  6 * a (n - 1)

end

end A270576.P2131877841612411675

namespace A270576

/-- `6*a(n-1)` -/
def P2131877841612411675.Spec : Prop :=
  ∀ n, (P2131877841612411675.a n : ℤ) = A270576 n

end A270576

/-! ## A270576.P3908567217753611749

`floor(4/3*6^n)`
-/

namespace A270576.P3908567217753611749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 : ℚ) / 3 * (6 ^ n : ℚ)⌋

end

end A270576.P3908567217753611749

namespace A270576

/-- `floor(4/3*6^n)` -/
def P3908567217753611749.Spec : Prop :=
  ∀ n, P3908567217753611749.a n = A270576 n

end A270576

/-! ## A270576.P16746254880132545971

`abs(∏[-a(n-1)])` with `a(0)=1, a(1)=8, a(2)=6`
-/

namespace A270576.P16746254880132545971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ j ∈ Finset.range (n + 1), f1 j|

end

end A270576.P16746254880132545971

namespace A270576

/-- `abs(∏[-a(n-1)])` -/
def P16746254880132545971.Spec : Prop :=
  ∀ n, P16746254880132545971.a n = A270576 n

end A270576

/-! ## A270576.P16539465869619869098

`a(n-1)/(1-5/6)` with `a(0)=1, a(1)=8`
-/

namespace A270576.P16539465869619869098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / (1 - (5 : ℚ) / 6)

end

end A270576.P16539465869619869098

namespace A270576

/-- `a(n-1)/(1-5/6)` -/
def P16539465869619869098.Spec : Prop :=
  ∀ n, P16539465869619869098.a n = (A270576 n : ℚ)

end A270576

/-! ## A270576.P1540288297112047020

`a(n-1)+lcm(5, a(n-1))` with `a(0)=1, a(1)=8`
-/

namespace A270576.P1540288297112047020
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) + Nat.lcm 5 (a (n - 1))

end

end A270576.P1540288297112047020

namespace A270576

/-- `a(n-1)+lcm(5, a(n-1))` -/
def P1540288297112047020.Spec : Prop :=
  ∀ n, (P1540288297112047020.a n : ℤ) = A270576 n

end A270576

/-! ## A270576.P77892131303888041

`Δ[floor(3^(n-1))]*record[and(-3, 2^n)]`
-/

namespace A270576.P77892131303888041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A270576.P77892131303888041

namespace A270576

/-- `Δ[floor(3^(n-1))]*record[and(-3, 2^n)]` -/
def P77892131303888041.Spec : Prop :=
  ∀ n, P77892131303888041.a n = A270576 n

end A270576

/-! ## A270576.P11220099514079724737

`A354541(3*n+1)`
-/

namespace A270576.P11220099514079724737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354541 (3 * n + 1)

end

end A270576.P11220099514079724737

namespace A270576

/-- `A354541(3*n+1)` -/
def P11220099514079724737.Spec : Prop :=
  ∀ n, P11220099514079724737.a n = A270576 n

end A270576

/-! ## A270576.P6838362812307904509

`2^n*A003946(n)`
-/

namespace A270576.P6838362812307904509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A003946 n

end

end A270576.P6838362812307904509

namespace A270576

/-- `2^n*A003946(n)` -/
def P6838362812307904509.Spec : Prop :=
  ∀ n, P6838362812307904509.a n = A270576 n

end A270576

/-! ## A270576.P14207611044831767525

`2^n*A052156(n+1)`
-/

namespace A270576.P14207611044831767525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A052156 (n + 1)

end

end A270576.P14207611044831767525

namespace A270576

/-- `2^n*A052156(n+1)` -/
def P14207611044831767525.Spec : Prop :=
  ∀ n, P14207611044831767525.a n = A270576 n

end A270576

/-! ## A270576.P8537571499800682420

`2^n*A326339(n+2)`
-/

namespace A270576.P8537571499800682420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A326339 (n + 2)

end

end A270576.P8537571499800682420

namespace A270576

/-- `2^n*A326339(n+2)` -/
def P8537571499800682420.Spec : Prop :=
  ∀ n, P8537571499800682420.a n = A270576 n

end A270576

/-! ## A270576.P7786150708206027025

`3^(n-1)*A171497(n)`
-/

namespace A270576.P7786150708206027025
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A171497 n : ℚ)

end

end A270576.P7786150708206027025

namespace A270576

/-- `3^(n-1)*A171497(n)` -/
def P7786150708206027025.Spec : Prop :=
  ∀ n, P7786150708206027025.a n = (A270576 n : ℚ)

end A270576

/-! ## A270576.P5424251400194496898

`A011782(n)*A083583(n)`
-/

namespace A270576.P5424251400194496898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A083583 n

end

end A270576.P5424251400194496898

namespace A270576

/-- `A011782(n)*A083583(n)` -/
def P5424251400194496898.Spec : Prop :=
  ∀ n, P5424251400194496898.a n = A270576 n

end A270576

/-! ## A270576.P1470804931159215945

`A133494(n)*A146541(n)`
-/

namespace A270576.P1470804931159215945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133494 n * A146541 n

end

end A270576.P1470804931159215945

namespace A270576

/-- `A133494(n)*A146541(n)` -/
def P1470804931159215945.Spec : Prop :=
  ∀ n, P1470804931159215945.a n = A270576 n

end A270576

/-! ## A270576.P15792523385701485218

`A068911(n)*A282023(n)`
-/

namespace A270576.P15792523385701485218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068911 n * A282023 n

end

end A270576.P15792523385701485218

namespace A270576

/-- `A068911(n)*A282023(n)` -/
def P15792523385701485218.Spec : Prop :=
  ∀ n, P15792523385701485218.a n = A270576 n

end A270576

/-! ## A270576.P6888493742786420873

`lcm(A003946(n), A146541(n))`
-/

namespace A270576.P6888493742786420873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003946 n) (A146541 n)

end

end A270576.P6888493742786420873

namespace A270576

/-- `lcm(A003946(n), A146541(n))` -/
def P6888493742786420873.Spec : Prop :=
  ∀ n, (P6888493742786420873.a n : ℤ) = A270576 n

end A270576

/-! ## A270576.P2359847558045616737

`A003946(n)*A011782(n+1)`
-/

namespace A270576.P2359847558045616737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n * A011782 (n + 1)

end

end A270576.P2359847558045616737

namespace A270576

/-- `A003946(n)*A011782(n+1)` -/
def P2359847558045616737.Spec : Prop :=
  ∀ n, P2359847558045616737.a n = A270576 n

end A270576

/-! ## A270576.P6329871715969402936

`A025579(n+1)*A132477(n)`
-/

namespace A270576.P6329871715969402936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025579 (n + 1) * A132477 n

end

end A270576.P6329871715969402936

namespace A270576

/-- `A025579(n+1)*A132477(n)` -/
def P6329871715969402936.Spec : Prop :=
  ∀ n, P6329871715969402936.a n = A270576 n

end A270576

/-!
# A270577: Generalized Catalan numbers C(3,n), where the (m,n)-th Catalan is the number of paths in R^m from the origin to the point (n,...,n,(m-1)n) with m kinds of moves such that the path never rises above the hyperplane x_m = x_1+...+x_{m-1}.

The programs for A270577, the canonical program `A270577.P11460174371161535537` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A270577 has offset 0).

The definition of A270577 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A270577.P9931979285319560596

`C(4*n, 2*n)/(2*n+1)*C(2*n, n)`
-/

namespace A270577.P9931979285319560596
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (4 * n) (2 * n) : ℚ) / (2 * n + 1 : ℚ) * (Nat.choose (2 * n) n : ℚ)

end

end A270577.P9931979285319560596

namespace A270577

/-- `C(4*n, 2*n)/(2*n+1)*C(2*n, n)` -/
def P9931979285319560596.Spec : Prop :=
  ∀ n, P9931979285319560596.a n = (A270577 n : ℚ)

end A270577

/-! ## A270577.P15771294096709921132

`A000108(2*n)*C(2*n, n)`
-/

namespace A270577.P15771294096709921132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (2 * n) * (Nat.choose (2 * n) n : ℤ)

end

end A270577.P15771294096709921132

namespace A270577

/-- `A000108(2*n)*C(2*n, n)` -/
def P15771294096709921132.Spec : Prop :=
  ∀ n, P15771294096709921132.a n = A270577 n

end A270577

/-! ## A270577.P11460174371161535537

`A000108(2*n)*A000984(n)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A270577

/-- `A000108(2*n)*A000984(n)` -/
def P11460174371161535537.Spec : Prop :=
  ∀ n, P11460174371161535537.a n = A270577 n

theorem P11460174371161535537.correct : P11460174371161535537.Spec := by
  intro n
  simp only [A270577]

end A270577

/-! ## A270577.P10190011345351615079

`A151379(2*n)`
-/

namespace A270577.P10190011345351615079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151379 (2 * n)

end

end A270577.P10190011345351615079

namespace A270577

/-- `A151379(2*n)` -/
def P10190011345351615079.Spec : Prop :=
  ∀ n, P10190011345351615079.a n = A270577 n

end A270577

/-! ## A270577.P7553226649626528503

`A085880(∑[4*n])`
-/

namespace A270577.P7553226649626528503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085880 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A270577.P7553226649626528503

namespace A270577

/-- `A085880(∑[4*n])` -/
def P7553226649626528503.Spec : Prop :=
  ∀ n, P7553226649626528503.a n = A270577 n

end A270577

/-! ## A270577.P8570592956495733781

`(n+1)*A151332(n)`
-/

namespace A270577.P8570592956495733781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A151332 n

end

end A270577.P8570592956495733781

namespace A270577

/-- `(n+1)*A151332(n)` -/
def P8570592956495733781.Spec : Prop :=
  ∀ n, P8570592956495733781.a n = A270577 n

end A270577

/-! ## A270577.P17664428620070077383

`C(2*n, n)*record[A182492(n)]`
-/

namespace A270577.P17664428620070077383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270577.P17664428620070077383

namespace A270577

/-- `C(2*n, n)*record[A182492(n)]` -/
def P17664428620070077383.Spec : Prop :=
  ∀ n, P17664428620070077383.a n = A270577 n

end A270577

/-! ## A270577.P5773635943230601407

`A001764(n)*A005810(n)`
-/

namespace A270577.P5773635943230601407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001764 n * A005810 n

end

end A270577.P5773635943230601407

namespace A270577

/-- `A001764(n)*A005810(n)` -/
def P5773635943230601407.Spec : Prop :=
  ∀ n, P5773635943230601407.a n = A270577 n

end A270577

/-! ## A270577.P9700135965449980378

`A000984(n)*A048990(n)`
-/

namespace A270577.P9700135965449980378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A048990 n

end

end A270577.P9700135965449980378

namespace A270577

/-- `A000984(n)*A048990(n)` -/
def P9700135965449980378.Spec : Prop :=
  ∀ n, P9700135965449980378.a n = A270577 n

theorem P9700135965449980378.correct : P9700135965449980378.Spec := by
  intro n
  simp only [A270577, Nat.add_sub_cancel, A270577.P9700135965449980378.a, A270577.P11460174371161535537.a, A000108, A000108.P17551949696095299361.a, A000984, A000984.P7946844122574426130.a, A048990, A048990.P17859373498023319433.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A270577

/-! ## A270577.P730366405299106386

`A088218(n)*A260775(n)`
-/

namespace A270577.P730366405299106386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 n * A260775 n

end

end A270577.P730366405299106386

namespace A270577

/-- `A088218(n)*A260775(n)` -/
def P730366405299106386.Spec : Prop :=
  ∀ n, P730366405299106386.a n = A270577 n

end A270577

/-!
# A270580: Denominators of r-Egyptian fraction expansion for sqrt(1/2), where r(k) = 1/(k+1).

The programs for A270580, there is no canonical definition to state claims against.
-/

/-! ## A270580.P1896859458084411650

`A049727(∑[A092499(n)])`
-/

namespace A270580.P1896859458084411650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092499 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049727 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A270580.P1896859458084411650

/-!
# A270582: Denominators of r-Egyptian fraction expansion for sqrt(2) - 1, where r(k) = 1/(k+1).

The programs for A270582, there is no canonical definition to state claims against.
-/

/-! ## A270582.P14345691499477453149

`A270916(n+2)`
-/

namespace A270582.P14345691499477453149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270916 (n + 2)

end

end A270582.P14345691499477453149

/-!
# A270583: Denominators of r-Egyptian fraction expansion for sqrt(3) - 1, where r(k) = 1/(k+1).

The programs for A270583, there is no canonical definition to state claims against.
-/

/-! ## A270583.P7335142121841083016

`A154651(xor(14, 5*(a(n-1)-a(n-2))))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A270583.P7335142121841083016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  A154651 (Int.xor 14 (5 * (a (n - 1) - a (n - 2)))).toNat

end

end A270583.P7335142121841083016

/-!
# A270584: Denominators of r-Egyptian fraction expansion for golden ratio - 1, where r(k) = 1/(k+1).

The programs for A270584, there is no canonical definition to state claims against.
-/

/-! ## A270584.P2753774120313184657

`A270751(n+2)`
-/

namespace A270584.P2753774120313184657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270751 (n + 2)

end

end A270584.P2753774120313184657

/-! ## A270584.P372965003072197386

`record[A270751(A193739(n))]`
-/

namespace A270584.P372965003072197386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270751 (A193739 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A270584.P372965003072197386

/-! ## A270584.P8051269102603189304

`A270751(A304806(n))-∑{digits}[n, C(#, 9)]`
-/

namespace A270584.P8051269102603189304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270751 (A304806 n).toNat - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A270584.P8051269102603189304

/-! ## A270584.P8645398343467387979

`A270751(A304810(n))-∑{digits}[n, C(#, 9)]`
-/

namespace A270584.P8645398343467387979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270751 (A304810 n).toNat - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Nat.choose x 9).sum : ℕ) : ℤ)

end

end A270584.P8645398343467387979

/-!
# A270589: Denominators of r-Egyptian fraction expansion for log(2), where r(k) = 1/(k+1).

The programs for A270589, there is no canonical definition to state claims against.
-/

/-! ## A270589.P4329718272113455960

`∑[A048183(A000330(n))]-A005520(2*n+1)`
-/

namespace A270589.P4329718272113455960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048183 (A000330 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A005520 (2 * n + 1)

end

end A270589.P4329718272113455960

/-!
# A270591: Denominators of r-Egyptian fraction expansion for (1/2)^(1/3), where r(k) = 1/(k+1).

The programs for A270591, there is no canonical definition to state claims against.
-/

/-! ## A270591.P7420692630272198879

`(A161680(n+11)+8)*A342851(a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A270591.P7420692630272198879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (A161680 (n + 11) + 8) * A342851 (a (n - 1)).toNat

end

end A270591.P7420692630272198879

/-!
# A270593: Total number of subtrees of the complete simple undirected graph K_n on n vertices.

The programs for A270593, there is no canonical definition to state claims against.
-/

/-! ## A270593.P15920626381708087016

`∑[A088957(n)]-A088957(n)`
-/

namespace A270593.P15920626381708087016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A088957 n

end

end A270593.P15920626381708087016

/-! ## A270593.P10656587633671581272

`∑[A277473(n)/A028310(n)]`
-/

namespace A270593.P10656587633671581272
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277473 n : ℚ) / (A028310 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270593.P10656587633671581272

/-! ## A270593.P7744222764164766342

`∑[A277473(n)/A002260(A034856(n+1))]`
-/

namespace A270593.P7744222764164766342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277473 n : ℚ) / (A002260 (A034856 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A270593.P7744222764164766342

/-! ## A270593.P10389014074424516582

`∑[A144303(A034856(n+1))]%A088957(n)`
-/

namespace A270593.P10389014074424516582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144303 (A034856 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A088957 n)

end

end A270593.P10389014074424516582

/-! ## A270593.P15535798928838182905

`∑[A277473(n+1)/(n+1)]%A088957(n)`
-/

namespace A270593.P15535798928838182905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277473 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)) (A088957 n)

end

end A270593.P15535798928838182905

/-!
# A270594: Number of ordered ways to write n as the sum of a triangular number, a positive square and the square of a generalized pentagonal number (A001318).

The programs for A270594, there is no canonical definition to state claims against.
-/

/-! ## A270594.P56461506382440018

`A270706(n+1)-A340988(A016116(n))`
-/

namespace A270594.P56461506382440018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270706 (n + 1) - A340988 ((A016116 n).toNat + 91)

end

end A270594.P56461506382440018

/-! ## A270594.P6064711508997137286

`A323086(A109812(3*n+1)+1)`
-/

namespace A270594.P6064711508997137286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323086 (A109812 (3 * n + 1) + 1).toNat

end

end A270594.P6064711508997137286

/-! ## A270594.P2416930001091914225

`A305973(n+4)+A240328(A052101(n))`
-/

namespace A270594.P2416930001091914225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (n + 4) + A240328 (A052101 n).toNat

end

end A270594.P2416930001091914225

/-! ## A270594.P13242814871923459783

`A220694(A339337(2*n+1)+A000079(n))`
-/

namespace A270594.P13242814871923459783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220694 (A339337 (2 * n + 1) + A000079 n).toNat

end

end A270594.P13242814871923459783

/-! ## A270594.P14153419297212356951

`A270706(A327487(∑[n]))`
-/

namespace A270594.P14153419297212356951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270706 (A327487 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A270594.P14153419297212356951

/-!
# A270595: a(n) = (n+1)*Sum_{i=0..n/2}((binomial(n-i,i))*binomial(2*(n-2*i),(n-2*i))/(n-2*i+1)^2).

The programs for A270595, there is no canonical definition to state claims against.
-/

/-! ## A270595.P5831375277422319211

`A016813(A000150(n)^A220777(n))`
-/

namespace A270595.P5831375277422319211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (SequenceMachineLib.roundAway ((A000150 n : ℚ) ^ (A220777 n : ℤ))).toNat

end

end A270595.P5831375277422319211

/-! ## A270595.P14840605403857464368

`A016813(A000150(n))%A128351(n+1)`
-/

namespace A270595.P14840605403857464368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 (A000150 n).toNat) (A128351 (n + 1))

end

end A270595.P14840605403857464368

/-!
# A270596: Primes p congruent to 11 mod 12 (A068231), such that there exists a nonzero element c of GF(p), such that the element c, c-1 and -1 generate a proper subgroup of the multiplicative group.

The programs for A270596, there is no canonical definition to state claims against.
-/

/-! ## A270596.P1957292286598665793

`∩[A141302(n+1), A271988(n)]`
-/

namespace A270596.P1957292286598665793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A270596.P1957292286598665793

/-!
# A270597: E.g.f.: 1/(1-x) * Product_{k>0} (1 + sinh(x^k/k)).

The programs for A270597, there is no canonical definition to state claims against.
-/

/-! ## A270597.P3478769157049184251

`A130263(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A270597.P3478769157049184251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A130263 n + (n : ℤ) * a (n - 1)

end

end A270597.P3478769157049184251

/-! ## A270597.P12523816425896556677

`abs(A130263(n)+n*a(A023443(n)))` with `a(0)=1`
-/

namespace A270597.P12523816425896556677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |A130263 n + (n : ℤ) * a (A023443 n).toNat|

end

end A270597.P12523816425896556677

/-!
# A270598: E.g.f.: Product_{k>0} (1 + tanh(x^k/k)).

The programs for A270598, there is no canonical definition to state claims against.
-/

/-! ## A270598.P10971407231868259102

`A083382(A214763(n)+6)`
-/

namespace A270598.P10971407231868259102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (A214763 n + 6).toNat

end

end A270598.P10971407231868259102

/-! ## A270598.P16579074686193469996

`A083382(or(6, A214763(n)))`
-/

namespace A270598.P16579074686193469996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (Int.lor 6 (A214763 n)).toNat

end

end A270598.P16579074686193469996

/-! ## A270598.P4158190278613838319

`A083382(xor(6, A214763(n)))`
-/

namespace A270598.P4158190278613838319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083382 (Int.xor 6 (A214763 n)).toNat

end

end A270598.P4158190278613838319

/-!
# A270599: Number of ways to express 1 as the sum of unit fractions with odd denominators such that the sum of those denominators is n.

The programs for A270599, there is no canonical definition to state claims against.
-/

/-! ## A270599.P10156935201575477592

`A000035(A137828(n))*A275437(n)`
-/

namespace A270599.P10156935201575477592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137828 n).toNat * A275437 n

end

end A270599.P10156935201575477592

/-! ## A270599.P4766331456955900672

`A000035(A137828(n))*A049705(A000124(n)+1)`
-/

namespace A270599.P4766331456955900672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137828 n).toNat * A049705 (A000124 n + 1).toNat

end

end A270599.P4766331456955900672

/-! ## A270599.P17223271742335047578

`A000035(A137828(n))*A090079(A324121(n+1))`
-/

namespace A270599.P17223271742335047578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137828 n).toNat * A090079 (A324121 (n + 1)).toNat

end

end A270599.P17223271742335047578

/-! ## A270599.P2826076856953652368

`A000035(A137828(n))*A259936(A000124(n)-n)`
-/

namespace A270599.P2826076856953652368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A137828 n).toNat * A259936 (A000124 n - (n : ℤ)).toNat

end

end A270599.P2826076856953652368

/-! ## A270599.P7850989850916034459

`char[8*n]*A089052(A241312(n))`
-/

namespace A270599.P7850989850916034459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A089052 (A241312 n).toNat

end

end A270599.P7850989850916034459

/-! ## A270599.P14517053952476912182

`A089052(A241312(n))*A253513(n)`
-/

namespace A270599.P14517053952476912182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A241312 n).toNat * A253513 n

end

end A270599.P14517053952476912182

/-! ## A270599.P9520951153547519830

`A089052(A241312(n))%A010194(n)`
-/

namespace A270599.P9520951153547519830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089052 (A241312 n).toNat) (A010194 n)

end

end A270599.P9520951153547519830

/-! ## A270599.P16860721208669263606

`lcm(A014025(n), A089052(A241312(n)))`
-/

namespace A270599.P16860721208669263606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A014025 n) (A089052 (A241312 n).toNat)

end

end A270599.P16860721208669263606

/-! ## A270599.P5936245616132559543

`A132888(n)%gcd(3, A001350(n))`
-/

namespace A270599.P5936245616132559543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132888 n) (Int.gcd 3 (A001350 n) : ℤ)

end

end A270599.P5936245616132559543

/-! ## A270599.P6212237355634713667

`and(A057387(n), A089650(n+1))`
-/

namespace A270599.P6212237355634713667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057387 n) (A089650 (n + 1))

end

end A270599.P6212237355634713667

