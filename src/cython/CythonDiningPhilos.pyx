from libc.stdlib cimport malloc, free
from posix.time cimport nanosleep

import threading
import time
from concurrent.futures import ThreadPoolExecutor


cdef extern from "pthread.h":
    ctypedef struct pthread_mutex_t:
        pass
    
    ctypedef struct pthread_mutexattr_t:
        pass


class CythonDiningPhilos:
    def __init__(self, 
                n_philos:int = 4)