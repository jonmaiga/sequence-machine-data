import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C013
import Seq.B000.C016
import Seq.B000.C024
import Seq.B002.C000
import Seq.B003.C000
import Seq.B004.C000
import Seq.Opaque.C000
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C012
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C021

/-!
# A168824: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^20 = I.

The programs for A168824, there is no canonical definition to state claims against.
-/

/-! ## A168824.P3181781891487318026

`floor(3*2^(n-1))-A165655(A165878(n))`
-/

namespace A168824.P3181781891487318026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A165655 (A165878 n).toNat

end

end A168824.P3181781891487318026

/-! ## A168824.P464504866908414457

`floor(3*2^(n-1))-A160086(A146285(n+2))`
-/

namespace A168824.P464504866908414457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A160086 (A146285 (n + 2)).toNat

end

end A168824.P464504866908414457

/-! ## A168824.P8381222267306258747

`floor(3*2^(n-1))-A185214(A185203(n+4))`
-/

namespace A168824.P8381222267306258747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185214 (A185203 (n + 4)).toNat

end

end A168824.P8381222267306258747

/-! ## A168824.P18034681144070100347

`A003945(n)-A124933(A185294(n))`
-/

namespace A168824.P18034681144070100347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003945 n - A124933 (A185294 n).toNat

end

end A168824.P18034681144070100347

/-! ## A168824.P12709102494441504678

`Δ[A168872(n)]-A000007(A000045(n))`
-/

namespace A168824.P12709102494441504678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000007 (A000045 n).toNat

end

end A168824.P12709102494441504678

/-!
# A168825: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^20 = I.

The programs for A168825, there is no canonical definition to state claims against.
-/

/-! ## A168825.P16056713568620293100

`floor(4*3^(n-1))-A244606(A052265(n+2))`
-/

namespace A168825.P16056713568620293100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A244606 (A052265 (n + 2)).toNat

end

end A168825.P16056713568620293100

/-! ## A168825.P15274194084007904524

`Δ[3*(a(n-1)-A010894(A000069(n+2)))]` with `a(0)=1, a(1)=2`
-/

namespace A168825.P15274194084007904524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  3 * (f1 (n - 1) - A010894 ((A000069 (n + 2)).toNat + 21))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168825.P15274194084007904524

/-! ## A168825.P454936350141404755

`A173452(A236939(n+1))+A003946(n)`
-/

namespace A168825.P454936350141404755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173452 (A236939 (n + 1 + 10)).toNat + A003946 n

end

end A168825.P454936350141404755

/-!
# A168826: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^20 = I.

The programs for A168826, there is no canonical definition to state claims against.
-/

/-! ## A168826.P4688325020919507177

`A003947(n)-A010894(A274157(n))`
-/

namespace A168826.P4688325020919507177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A010894 ((A274157 n).toNat + 21)

end

end A168826.P4688325020919507177

/-! ## A168826.P8839854447788449508

`A003947(n)-A185255(A173925(n))`
-/

namespace A168826.P8839854447788449508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003947 n - A185255 (A173925 n).toNat

end

end A168826.P8839854447788449508

/-! ## A168826.P292058797742233248

`A084215(2*n)-A010894(A274157(n))`
-/

namespace A168826.P292058797742233248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084215 (2 * n) - A010894 ((A274157 n).toNat + 21)

end

end A168826.P292058797742233248

/-! ## A168826.P9970189810875487355

`A104721(2*n)-A010894(A274157(n))`
-/

namespace A168826.P9970189810875487355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104721 (2 * n) - A010894 ((A274157 n).toNat + 21)

end

end A168826.P9970189810875487355

/-! ## A168826.P8110580758107503783

`A084215(Δ[n²])/2-A010894(A274157(n))`
-/

namespace A168826.P8110580758107503783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A084215 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2 - (A010894 ((A274157 n).toNat + 21) : ℚ)

end

end A168826.P8110580758107503783

/-!
# A168872: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^21 = I.

The programs for A168872, there is no canonical definition to state claims against.
-/

/-! ## A168872.P10042291657009823892

`floor(3*2^(n-1))-A051584(A250255(n+1))`
-/

namespace A168872.P10042291657009823892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A051584 (A250255 (n + 1)).toNat

end

end A168872.P10042291657009823892

/-! ## A168872.P13909341913864370584

`floor(3*2^(n-1))-A160086(A146285(n+1))`
-/

namespace A168872.P13909341913864370584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A160086 (A146285 (n + 1)).toNat

end

end A168872.P13909341913864370584

/-! ## A168872.P1464047340642913343

`floor(3*2^(n-1))-A112316(A076303(2*n+1))`
-/

namespace A168872.P1464047340642913343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A112316 (A076303 (2 * n + 1)).toNat

end

end A168872.P1464047340642913343

/-! ## A168872.P15471503372044992761

`A170012(n)-A180760(A208183(n+1))`
-/

namespace A168872.P15471503372044992761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170012 n - A180760 (A208183 (n + 1)).toNat

end

end A168872.P15471503372044992761

/-!
# A168873: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^21 = I.

The programs for A168873, there is no canonical definition to state claims against.
-/

/-! ## A168873.P12841012063322071819

`A173452(A236939(n))+floor(4*3^(n-1))`
-/

namespace A168873.P12841012063322071819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173452 (A236939 (n + 10)).toNat + ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A168873.P12841012063322071819

/-! ## A168873.P13685803090948140590

`3*(a(n-1)-A010894(A000069(n+2)))` with `a(0)=1, a(1)=4`
-/

namespace A168873.P13685803090948140590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  3 * (a (n - 1) - A010894 ((A000069 (n + 2)).toNat + 21))

end

end A168873.P13685803090948140590

/-! ## A168873.P4291295021835976248

`record[3*(a(n-1)-A004198(A185044(n)))]` with `a(0)=1, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A168873.P4291295021835976248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 4] fun n f1 =>
  3 * (f1 (n - 1) - A004198 (A185044 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168873.P4291295021835976248

/-! ## A168873.P14192044268875206641

`record[3*(a(n-1)-A309785(A331562(n)))]` with `a(0)=1, a(1)=4, a(2)=1, a(3)=4`
-/

namespace A168873.P14192044268875206641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 1, 4] fun n f1 =>
  3 * (f1 (n - 1) - A309785 (A331562 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168873.P14192044268875206641

/-! ## A168873.P2038862725858876783

`abs(A173452(A236939(n))+A003946(n))`
-/

namespace A168873.P2038862725858876783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A173452 (A236939 (n + 10)).toNat + A003946 n|

end

end A168873.P2038862725858876783

/-!
# A168874: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^21 = I.

The programs for A168874, there is no canonical definition to state claims against.
-/

/-! ## A168874.P14119299994601370560

`(A082605(2*n+1)-1)/2-A185255(lt[1, A025480(n)])`
-/

namespace A168874.P14119299994601370560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082605 (2 * n + 1) - 1 : ℚ) / 2 - (A185255 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) : ℚ)

end

end A168874.P14119299994601370560

/-!
# A168875: Number of reduced words of length n in Coxeter group on 6 generators S_i with relations (S_i)^2 = (S_i S_j)^21 = I.

The programs for A168875, there is no canonical definition to state claims against.
-/

/-! ## A168875.P17561879373461759981

`A003948(n)-3*A184943(A058343(n))`
-/

namespace A168875.P17561879373461759981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003948 n - 3 * A184943 (A058343 n).toNat

end

end A168875.P17561879373461759981

