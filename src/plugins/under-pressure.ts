import fp from 'fastify-plugin'
import fastifyUnderPressure, { UnderPressureOptions } from '@fastify/under-pressure';

export default fp<UnderPressureOptions>(async (fastify) => {
    fastify.register(fastifyUnderPressure, {
        maxEventLoopDelay: 1000,
        maxHeapUsedBytes: 100000000,
        maxRssBytes: 100000000,
        maxEventLoopUtilization:0.98,
        exposeStatusRoute: true
    })
})